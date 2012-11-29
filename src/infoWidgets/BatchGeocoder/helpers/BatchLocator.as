package infoWidgets.BatchGeocoder.helpers
{
	import com.as3xls.xls.Cell;
	import com.esri.ags.Graphic;
	import com.esri.ags.SpatialReference;
	import com.esri.ags.geometry.MapPoint;
	import com.esri.ags.symbols.SimpleMarkerSymbol;
	import com.esri.ags.tasks.Locator;
	import com.esri.ags.tasks.supportClasses.AddressCandidate;
	import com.esri.ags.utils.WebMercatorUtil;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncResponder;
	import mx.utils.StringUtil;
	
	import infoWidgets.BatchGeocoder.factories.DefaultSymbols;
	import infoWidgets.BatchGeocoder.factories.IGraphicSymbols;

	[Event(name="geocodeComplete",type="flash.events.Event")]
	/**
	 * This component is the workhorse of the BatchGeocoder.
     * Will process an ArrayCollection of addresses and send them
     * one-by-one to a GeocodeServer and process the results.
     * 
	 * @author rrubalcava
	 */
	public class BatchLocator extends EventDispatcher
	{
		public static const ADDRESSCOLLECTION_CHANGE_EVENT:String = "addressCollectionChange";
		public static const GEOCODE_COMPLETE:String = "geocodeComplete";
        
		protected static const ADDRESS_FOUND:String = "AddressFound";
		protected static const SCORE:String = "Score";
		protected static const X:String = "x";
		protected static const Y:String = "y";
		
		public var wkid:Number;
		
		/**
		 * Provide the address fields and GeocodeServer URL
		 * @param addressFields
		 * @param locatorURL
		 */
		public function BatchLocator(addressFields:Object, locatorURL:String)
		{
			_addressField = addressFields["Address"];
			_cityField = addressFields["City"];
			_stateField = addressFields["State"];
			_zipField = addressFields["Zip"];
			_countryField = addressFields["Country"];
			_locatorURL = locatorURL;
		}
        
		protected var _addressCollection:ArrayCollection;
		
		[Event(name="addressCollectionChange",type="flash.events.Event")]
		public function get addressCollection():ArrayCollection
		{
			return _addressCollection;
		}
        
		public function set addressCollection(value:ArrayCollection):void
		{
			if (_addressCollection != value)
			{
				_addressCollection = value;
				dispatchEvent(new Event(ADDRESSCOLLECTION_CHANGE_EVENT));
			}
		}
        
		protected var _addressField:String;
		protected var _cityField:String;
		protected var _countryField:String;
		protected var _graphicsCollection:ArrayCollection;
		protected var _locatorURL:String;
		protected var _stateField:String;
		protected var _zipField:String;
		
		protected var addressCount:int;
		protected var checkCount:int;
		
		/**
		 * Handles the results of the Geocoder
		 * @param candidates
		 * @param token
		 */
		protected function addressResults_handler(candidates:Array, token:Object = null):void
		{
			if (candidates.length > 0)
			{
				var addrCandidate:AddressCandidate = candidates[0];
				loadGraphicsCollection(addrCandidate);
				var _add:String = StringUtil.trim(String(addrCandidate.address));
				token[ADDRESS_FOUND] = _add;
				token[SCORE] = addrCandidate.score;
				token[X] = addrCandidate.location.x;
				token[Y] = addrCandidate.location.y;
				addressCollection.refresh();
			}
			checkCount++;
			//if (checkCount == candidates.length)
			//{
				//addressCollection.removeItemAt(0);
				addressCollection.refresh();
				dispatchEvent(new Event(GEOCODE_COMPLETE));
			//}
		}
		
		/**
		 * Will parse the item passed to this class and prepare it for
         * use with ArcGIS Server geocoder.
		 * @param item
		 * @return 
		 */
		protected function buildAddressObject(item:Object):Object
		{
			var address:String = item[_addressField].value;
			var city:String = item[_cityField].value;
			if(item.hasOwnProperty(_stateField)){
				var state:String = item[_stateField].value;
			}
			else
			{
				state="CA";
			}
			var zip:String;
			if(item.hasOwnProperty(_zipField)){
			zip = item[_zipField].value;
			}
			else{
			zip = '';
			}
			var country:String = "USA";
			//for each (var cell:Cell in item){
				/*switch (cell.value){
					case _addressField:
						address=cell.value;
					break;
					case _cityField:
						city=cell.value;
					break;
					case _stateField:
						state=cell.value;
					break;
					case _zipField:
						zip=cell.value;
					case _countryField:
						country=cell.value;
					break;
					}*/
				//}
			/*if (_addressField.length > 0)
				address = item[_addressField];
			if (_cityField.length > 0)
				city = item[_cityField];
			if (_stateField.length > 0)
				_stateField = item[_stateField];
			if (_zipField.length > 0)
				zip = item[_zipField];
			if (_countryField.length > 0)
				country = item[_countryField];
			*/
            // You may need to modify these fields to work with your
            // particular locator service
			return {
					Address:address,
					City:city,
					State:state,
					Zip:zip,
					Country:country
				};
		}
		
		/**
		 * Initialize the geocode process
		 */
		protected function geocodeAddress():void
		{
			var locator:Locator = new Locator(_locatorURL);
			if (wkid)
				locator.outSpatialReference = new SpatialReference(wkid);
			_graphicsCollection = new ArrayCollection();
			locator.showBusyCursor = true;
			var outFields:Array = ["*"];
			var item:Object;
			for ( var i:int=1; i < addressCollection.length;i++)
			{
				if(addressCollection[i][0].value != ''){
					var params:Object = buildAddressObject(addressCollection[i]);
					locator.addressToLocations(params, outFields, new AsyncResponder(addressResults_handler, onFault, addressCollection[i]));
				}
			}
		}
		
		/**
		 * Will load the address result as a graphic to the graphics layer
		 * @param candidate
		 */
		protected function loadGraphicsCollection(candidate:AddressCandidate):void
		{
            // Depending on your services, you may or may not need to use the WebMercatorUtil.geographicToWebMercator() function.
			var g:Graphic = new Graphic(WebMercatorUtil.geographicToWebMercator(candidate.location), null, candidate.attributes);
            var symbol:IGraphicSymbols = new DefaultSymbols();
            g.symbol = symbol.getSymbol(g);
			var toolTip:String = "Address: " + String(candidate.address) + "\nScore: " + String(candidate.score);
			g.toolTip = toolTip;
			_graphicsCollection.addItem(g);
		}
		
		/**
		 * Fault handler
		 * @param info
		 * @param token
		 */
		protected function onFault(info:Object, token:Object = null):void
		{
			trace("Geocode Failure: \n" + info.toString());
		}
		
		/**
		 * Returns the results in an ArrayCollection of graphics.
		 * @return 
		 */
		public function getGraphics():ArrayCollection
		{
			return _graphicsCollection;
		}
		
		/**
		 * Will process an array of addresses to geocode
		 * @param addresses
		 */
		public function locateAddresses(addresses:Array):void
		{
			addressCount = 0;
			checkCount = 0;
			addressCollection = new ArrayCollection(addresses);
			addressCount = addressCollection.length - 2;
			var item:Object;
			for each (item in addressCollection)
			{
				if(item[0].value != '')
				{
				item[SCORE] = 0.00;
				item[ADDRESS_FOUND] = "";
				item[X]="";
				item[Y]="";
				addressCollection.refresh();
				}
			}
			geocodeAddress();
		}
	}
}