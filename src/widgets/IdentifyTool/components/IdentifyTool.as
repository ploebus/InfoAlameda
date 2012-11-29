package widgets.IdentifyTool.components
{
	import com.esri.ags.Graphic;
	import com.esri.ags.Map;
	import com.esri.ags.events.MapMouseEvent;
	import com.esri.ags.geometry.Geometry;
	import com.esri.ags.geometry.MapPoint;
	import com.esri.ags.layers.GraphicsLayer;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.symbols.SimpleLineSymbol;
	import com.esri.ags.symbols.SimpleMarkerSymbol;
	import com.esri.ags.symbols.Symbol;
	import com.esri.ags.tasks.IdentifyTask;
	import com.esri.ags.tasks.supportClasses.IdentifyParameters;
	import com.esri.ags.tasks.supportClasses.IdentifyResult;
	
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.rpc.AsyncResponder;
	
	import spark.components.Button;
	import spark.components.List;
	import spark.components.ToggleButton;
	import spark.components.supportClasses.SkinnableComponent;
	
	import widgets.IdentifyTool.events.IdentifyToolEvent;
	import widgets.IdentifyTool.utils.LayerUtil;
	
	[Event(name="identifyToolActive", type="org.lacsd.events.IdentifyToolEvent")]
	[Event(name="mapChange",type="flash.events.Event")]
	/**
	 * Identify tool used to identify features on a <code>Map</code>.
	 * @author rrubalcava
	 */
	public class IdentifyTool extends SkinnableComponent implements IIdentifyTool
	{
		public static const MAP_CHANGE_EVENT:String = "mapChange";
		
		/**
		 * Constructor
		 */
		public function IdentifyTool()
		{
			super();
		}
		[SkinPart(required="true")]
		/**
		 * Button that will clear Identify Results.
		 * @default
		 */
		public var btnClear:Button;
		
		[SkinPart(required="true")]
		/**
		 * Button that will reset the state of the Identify tool.
		 * @default
		 */
		public var btnIdentify:ToggleButton;
		
		[SkinPart(required="true")]
		/**
		 * <code>List</code> that will hold IdentifyResults.
		 * @default
		 */
		public var idList:List;
		
		/**
		 * Application <code>Map</code> that will be used to zoom to identified features.
		 * @default
		 */
		private var _map:Map;
		
		
		[Bindable(event="mapChange")]
		public function get map():Map
		{
			return _map;
		}
		
		/**
		 * Source Map of Identify Features.
		 * @param value
		 */
		public function set map(value:Map):void
		{
			if (_map != value)
			{
				_map = value;
				idLayer = new GraphicsLayer();
				idLayer.id = "IdentifyLocation";
				_map.addLayer(idLayer);
				
				if (!_resultGraphics)
				{
					_resultGraphics = new GraphicsLayer();
					_resultGraphics.id = "IdentifyResults";
					_map.addLayer(_resultGraphics);
				}
				
				infos = LayerUtil.findMapLayersInfos(_map);
				idTask = new IdentifyTask();
				idTask.showBusyCursor = true;
				idTask.concurrency = "last";
			}
		}
		
		/**
		 * <code>GraphicsLayer</code> to hold results.
		 * @default
		 */
		protected var _resultGraphics:GraphicsLayer;
		
		/**
		 * GraphicsLayer that will display Identify Results.
		 * @param value
		 */
		public function set resultGraphics(value:GraphicsLayer):void
		{
			_resultGraphics = value;
		}
		
		[SkinPart(required="true")]
		/**
		 * <code>ComboBox</code> that will display the list of layers in a service.
		 * @default
		 */
		public var serviceList:ServiceDetailLists;
		/**
		 * Constant for Identify color.
		 * @default
		 */
		protected const ID_COLOR:Number = 0x00FF00;
		
		/**
		 * Temporary <code>GraphicsLayer</code> that will hold the identified point.
		 * @default
		 */
		protected var idLayer:GraphicsLayer;
		
		/**
		 * The identified location.
		 * @default
		 */
		protected var idPoint:MapPoint;
		
		/**
		 * <code>IdentifyTask</code> used to send requests.
		 * @default
		 */
		protected var idTask:IdentifyTask;
		
		[Bindable]
		/**
		 * Holds the names of layers in a service.
		 * @default
		 */
		protected var infos:IList;
		
		/**
		 * Current ID for layer in a service.
		 * @default
		 */
		protected var layerId:String;
		
		/**
		 * Current Name for layer in a service.
		 * @default
		 */
		protected var layerName:String;
		
		[Bindable]
		/**
		 * Holds the identify results to be displayed in a list.
		 * @default
		 */
		protected var listColl:ArrayCollection;
		
		/**
		 * Clear all Identify Results.
		 */
		protected function clearData():void
		{
			if (listColl)
			{
				var inf:InfoData;
				for each (inf in listColl)
				{
					inf = null;
				}
				listColl.removeAll();
			}
		}
		
		/**
		 * Assign the symbology base on Geometry type.
		 * @param type
		 * @return
		 */
		protected function graphicSymbology(type:String):Symbol
		{
			switch (type)
			{
				case Geometry.MAPPOINT:
					var p:SimpleMarkerSymbol = new SimpleMarkerSymbol();
					p.color = ID_COLOR;
					p.style = "diamond";
					p.size = 15;
					p.alpha = 0.5;
					return p;
					break;
				case Geometry.POLYLINE:
					var l:SimpleLineSymbol = new SimpleLineSymbol();
					l.color = ID_COLOR;
					l.style = "solid";
					l.alpha = 0.5;
					l.width = 3;
					return l;
					break;
				case Geometry.POLYGON:
					var poly:SimpleFillSymbol = new SimpleFillSymbol();
					poly.color = ID_COLOR;
					poly.alpha = 0.5;
					return poly;
					break;
				default:
					return new Symbol();
			}
		}
		
		/**
		 * Identify a point on the <code>map</code> or prepare <code>map</code> to perform Identify Task.
		 */
		protected function identifyLayer():void
		{
			if (idPoint)
			{
				btnIdentify.selected = true;
				sendParams();
			}
			else
			{
				_map.removeEventListener(MapMouseEvent.MAP_CLICK, onMapClicked_handler);
				_map.addEventListener(MapMouseEvent.MAP_CLICK, onMapClicked_handler, false, 0, true);
				_map.openHandCursorVisible = false;
				btnIdentify.selected = true;
			}
		}
		
		/**
		 * Parse Identify Results to display on <code>map</code> and <code>idList</code>.
		 * @param results
		 */
		protected function iterateResults(results:Array):void
		{
			var field:String;
			var idResult:IdentifyResult;
			for each (idResult in results)
			{
				_resultGraphics.add(idResult.feature);
				var g:Graphic = idResult.feature;
				trace("identify results for list = {0}", g.attributes.toString());
				var obj:Object = g.attributes;
				var title:String = idResult.layerName;
				var content:String = "";
				var assetID:String = "";
				var main:String = "";
				var _field:String;
				// Build the content string
				// You can use certain HTML tags and then use TextFlow and TextFlowUtil
				// in your ItemRenderer to display content
				for (field in obj)
				{
					_field = field.toUpperCase();
					// check if field has number and needs formatting
					if ((_field == "AREA" || _field == "LENGTH") && !isNaN(Number(obj[field])))
					{
						obj[field] = Number(obj[field]).toFixed(3);
					}
					if (_field != "SHAPE_AREA" && _field != "SHAPE_LENG" &&
						_field != "SHAPE" && _field != "SHAPE.LEN" &&
						_field != "INTERNET" && _field != "INTRANET" &&
						_field != "LPOLY_" && _field != "RPOLY_" &&
						_field != "FID" && _field != "ARC_" && _field != "MAPCOLOR")
					{
						// certain fields take priority over others
						// MODIFY THIS AS NEEDED
						if (_field == "NAME")
							main += "<p><span fontWeight='bold'>" + _field + "</span>: " + obj[field] + "</p>";
						else
							content += "<p><span fontWeight='bold'>" + _field + "</span>: " + obj[field] + "</p>";
					}
				}
				
				main += content;
				trace("identify content = {0}", main);
				
				var infoData:InfoData = new InfoData();
				g.symbol = graphicSymbology(g.geometry.type);
				if (assetID.length > 0)
					infoData.title = "AssetID: " + assetID;
				else
					infoData.title = idResult.layerName;
				infoData.content = main;
				infoData.graphic = g;
				listColl.addItem(infoData);
			}
		}
		
		/**
		 * Label Function for <code>cbLayer</code> ComboBox.
		 * @param item
		 * @return
		 */
		protected function layerLabels(item:Object):String
		{
			return item.name;
		}
		
		/**
		 * Reset the Identify Tool to perform a new Identify Task.
		 * @param event
		 */
		protected function onButtonClicked_handler(event:MouseEvent):void
		{
			dispatchEvent(new IdentifyToolEvent(IdentifyToolEvent.IDENTIFY_TOOL_ACTIVE));
			idPoint = null;
			if (serviceList.serviceData)
			{
				btnIdentify.selected = true;
				var details:Object = serviceList.serviceData;
				if (details["layerId"] && details["layerName"])
				{
					layerId = details["layerId"];
					layerName = details["layerName"];
					identifyLayer();
				}
			}
			else
				btnIdentify.selected = false;
		}
		
		/**
		 * Clear results from tool.
		 * @param event
		 */
		protected function onClearButtonClicked_handler(event:MouseEvent):void
		{
			_resultGraphics.clear();
			idLayer.clear();
			idList.dataProvider.removeAll();
			deactivate();
		}
		
		/**
		 * Capture any erros when using Identify Task.
		 * @param fault
		 * @param clickGraphic
		 */
		protected function onFault(fault:Object, clickGraphic:Graphic = null):void
		{
			trace("identify error");
			_map.removeEventListener(MapMouseEvent.MAP_CLICK, onMapClicked_handler);
		}
		
		/**
		 * Zoom the <code>map</code> to selected item.
		 * @param event
		 */
		protected function onIdListDoubleCliked_handler(event:MouseEvent):void
		{
			trace("idList double cliked", event.currentTarget);
			if (event.currentTarget.selectedItem && event.currentTarget.selectedItem is InfoData)
			{
				// use the graphic in InfoData to zoom the map
				var g:Graphic = event.currentTarget.selectedItem.graphic;
				if (g.geometry.type != Geometry.MAPPOINT)
					_map.extent = g.geometry.extent.expand(2);
				else
				{
					try
					{
						_map.centerAt(g.geometry as MapPoint);
						if (_map.lods)
							_map.level = _map.lods.length - 2;
					}
					catch (e:Error)
					{
						trace("error in zooming to point, ", e.message);
					}
				}
			}
		}
		
		/**
		 * Handle results of Identify Task.
		 * @param results
		 * @param clickGraphic
		 */
		protected function onIdentifyResults_handler(results:Array, clickGraphic:Graphic = null):void
		{
			if (results && results.length > 0)
				iterateResults(results);
		}
		
		/**
		 *
		 * @param event
		 */
		protected function onMapClicked_handler(event:MapMouseEvent):void
		{
			trace("map clicked, send identify request");
			idPoint = event.mapPoint;
			sendParams();
		}
		
		protected function onServiceDataUpdate_handler(event:Event):void
		{
            trace("service update event fired");
			if (serviceList.serviceData)
			{
				btnIdentify.selected = true;
				var details:Object = serviceList.serviceData;
				trace("details layerID", details["layerId"]);
				trace("details layerName", details["layerName"]);
				if (details["layerId"] > -1)
				{
					layerId = details["layerId"];
					layerName = details["layerName"];
					trace("layerId", layerId);
					trace("layerName", layerName);
					identifyLayer();
				}
			}
		}
		
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			trace("adding part to skinnable component: {0}", instance);
			if (instance == btnIdentify)
				btnIdentify.addEventListener(MouseEvent.CLICK, onButtonClicked_handler, false, 0, true);
			else if (instance == idList)
			{
				listColl = new ArrayCollection();
				idList.dataProvider = listColl;
				// try adding an event listener, will zoom map
				idList.addEventListener(MouseEvent.DOUBLE_CLICK, onIdListDoubleCliked_handler, false, 0, true);
			}
			else if (instance == serviceList)
			{
				serviceList.map = map;
				serviceList.addEventListener(ServiceDetailLists.SERVICEDATA_UPDATE_EVENT, onServiceDataUpdate_handler, false, 0, true);
			}
			else if (instance == btnClear)
				btnClear.addEventListener(MouseEvent.CLICK, onClearButtonClicked_handler, false, 0, true);
		}
		
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName, instance);
			trace("remove part to skinnable component: {0}", instance);
			if (instance == btnIdentify)
				btnIdentify.removeEventListener(MouseEvent.CLICK, onButtonClicked_handler);
			else if (instance == idList)
				idList.removeEventListener(MouseEvent.DOUBLE_CLICK, onIdListDoubleCliked_handler);
			else if (instance == serviceList)
				serviceList.removeEventListener(ServiceDetailLists.SERVICEDATA_UPDATE_EVENT, onServiceDataUpdate_handler);
			else if (instance == btnClear)
				btnClear.removeEventListener(MouseEvent.CLICK, onClearButtonClicked_handler);
		}
		
		/**
		 * Build Identify Paremeters and execute Identify Task.
		 */
		protected function sendParams():void
		{
			_resultGraphics.clear();
			clearData();
			var idParams:IdentifyParameters = new IdentifyParameters();
			idParams.layerIds = [layerId];
			idParams.tolerance = 2;
			idParams.returnGeometry = true;
			idParams.geometry = idPoint;
			idParams.width = _map.width;
			idParams.height = _map.height;
			idParams.mapExtent = _map.extent;
			idParams.spatialReference = _map.spatialReference;
			idParams.layerOption = "all";
			var idSym:SimpleMarkerSymbol = new SimpleMarkerSymbol("x", 12, 0xFF0000);
			var g:Graphic = new Graphic(idPoint, idSym);
			idLayer.clear();
			idLayer.add(g);
			
			idTask.url = LayerUtil.findURLByLayerName(layerName, _map);
			trace("Identify Task URL = {0}", idTask.url);
			
			idTask.execute(idParams, new AsyncResponder(onIdentifyResults_handler, onFault, g));
		}
		
		public function deactivate():void
		{
			if (_map)
			{
				_map.removeEventListener(MapMouseEvent.MAP_CLICK, onMapClicked_handler);
				_map.openHandCursorVisible = true;
				btnIdentify.selected = false;
			}
		}
		
		/**
		 * Cleans up Tool and prepares for GC.
		 */
		public function dispose():void
		{
			trace("identify tool destroyed, set values to null");
			btnIdentify.removeEventListener(MouseEvent.CLICK, onButtonClicked_handler);
			idList.removeEventListener(MouseEvent.DOUBLE_CLICK, onIdListDoubleCliked_handler);
			_map.removeEventListener(MapMouseEvent.MAP_CLICK, onMapClicked_handler);
			_map.openHandCursorVisible = true;
			clearData();
			idLayer.clear();
			_map.removeLayer(idLayer);
			_map.removeLayer(_resultGraphics);
			_map = null;
			_resultGraphics = null;
			idTask = null;
			layerId = null;
			idPoint = null;
			listColl = null;
		}
	}
}

import com.esri.ags.Graphic;

import flash.events.EventDispatcher;
internal class InfoData extends EventDispatcher
{
	/**
	 * Formatted string of attrbutes.
	 * @default
	 */
	public var content:String;
	/**
	 * Graphic object of identified item.
	 * @default
	 */
	public var graphic:Graphic;
	/**
	 * Main title text for identified data.
	 * @default
	 */
	public var title:String;
}