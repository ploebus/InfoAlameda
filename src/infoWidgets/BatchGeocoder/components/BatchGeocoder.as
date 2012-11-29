package infoWidgets.BatchGeocoder.components
{
	import com.as3xls.xls.Cell;
	import com.as3xls.xls.ExcelFile;
	import com.as3xls.xls.Sheet;
	import com.esri.ags.Map;
	import com.esri.ags.layers.GraphicsLayer;
	import com.esri.ags.utils.GraphicUtil;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.net.FileFilter;
	import flash.net.FileReference;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.managers.PopUpManager;
	
	import spark.components.Button;
	import spark.components.TitleWindow;
	import spark.components.supportClasses.SkinnableComponent;
	
	import infoWidgets.BatchGeocoder.helpers.BatchLocator;
	import infoWidgets.BatchGeocoder.helpers.ExportToExcel;
	import infoWidgets.BatchGeocoder.helpers.IExportToExcel;
	import infoWidgets.BatchGeocoder.helpers.exportToKml;
	import infoWidgets.BatchGeocoder.util.DbfUtil;

	/**
	 * This component will upload an *.xls file
	 * and allow you to set the proper fields
	 * to perform a batch geocode against an
	 * ArcGIS Server GeocodeServer service.
	 *
	 * @author rrubalcava
	 */
	public class BatchGeocoder extends SkinnableComponent
	{
		public function BatchGeocoder()
		{
			super();
		}
		[SkinPart(required="true")]
		public var btnExport:Button;
		
		[SkinPart(required="true")]
		public var btnKmlExport:Button;
		
		[SkinPart(required="true")]
		public var btnRemapFields:Button;
		
		[SkinPart(required="true")]
		public var btnRematch:Button;
		
		[SkinPart(required="true")]
		public var btnUpload:Button;
		
		[SkinPart(required="true")]
		public var dgAddresses:DataGrid;
		
		public var wkid:Number;
		
		protected var addressCollection:ArrayCollection;
		
		protected var addressFields:Object;
		
		protected var addressGraphicsLayer:GraphicsLayer;
		
		protected var bLocator:BatchLocator;
		
		protected var file:FileReference;
		
		protected var geocodeURL:String;
		
		protected var map:Map;
		
		protected var tw:TitleWindow;
		
		protected var ef:ExcelFile;
		
		protected var fields:Array;
		/**
		 * Will send addresses to a new class to perform the geocoding.
		 * @param addresses
		 */
		protected function batchLocate(addresses:Array):void
		{
			bLocator = new BatchLocator(addressFields, geocodeURL);
			bLocator.wkid = wkid;
			ef = new ExcelFile(); 
			bLocator.addEventListener(BatchLocator.GEOCODE_COMPLETE, onGeocodeComplete);
			bLocator.locateAddresses(addresses);
		}
		
		/**
		 * Will export the geocoded address results to an Excel file.
		 * @param event
		 */
		protected function btnExport_clickHandler(event:MouseEvent):void
		{
			if (bLocator && bLocator.addressCollection)
			{
				var export:IExportToExcel = new ExportToExcel();
				export.collectionToExcel(bLocator.addressCollection);
			}
		}
		
		/**
		 * Will export the geocoded address results to a KML file.
		 * @param event
		 */
		protected function btnKmlExport_clickHandler(event:MouseEvent):void
		{
			if (bLocator && bLocator.addressCollection)
			{
				var export:exportToKml=new exportToKml();
				export.fields = fields;
					export.collectionToKml(bLocator.addressCollection);
			}
		}
		
		
		
        /**
         * Remap the fields of the current collection.
         * @param event
         */
		protected function btnRemapFields_clickHandler(event:MouseEvent):void
		{
		    addressCollection = dgAddresses.dataProvider as ArrayCollection;
            if (addressCollection)
                findFieldNames(addressCollection[0]);
		}
		
        /**
         * Rematch the current addresses.
         * @param event
         */
		protected function btnRematch_clickHandler(event:MouseEvent):void
		{
			if (dgAddresses.dataProvider)
			{
				var ac:ArrayCollection = dgAddresses.dataProvider as ArrayCollection;
				batchLocate(ac.toArray());
			}
		}
		
		/**
		 * Will initiate the upload process of a *.dbf file.
		 * @param event
		 */
		protected function btnUpload_clickHandler(event:MouseEvent):void
		{
			file = new FileReference();
			file.addEventListener(Event.SELECT, onFileSelect_handler, false, 0, true);
			var dbfFilter:FileFilter = new FileFilter("Excel: *.xls", "*.xls");
			file.browse([dbfFilter]);
		}
		
		/**
		 * Will parse the field names and allow you to map them
		 * to the proper Geocoder fields.
		 * @param item
		 */
		protected function findFieldNames(item:Object):void
		{
			if (item)
			{
				var f:Array = [];
				var colSeries:Array = [];
				var field:String;
				var i:int = 0;
				fields=new Array();
				for each (var cell:Cell in item)
				{
					f.push(cell.value);
					fields.push(cell.value);
					var dgColumn:DataGridColumn = new DataGridColumn(cell.value);
						dgColumn.dataField = String(i);
					colSeries.push(dgColumn);
					i++;
				}
				
				
				var geocodeColumns:Array=["Score","x","y"];
				
				for each (var s:String in geocodeColumns){
					var dgColumn1:DataGridColumn = new DataGridColumn(s);
					dgColumn1.dataField = s;
					colSeries.push(dgColumn1);
				}
				dgAddresses.columns=colSeries;
				dgAddresses.setStyle("color","#ffffff");
				
				
				var fm:AddressMapper = new AddressMapper();
					fm.fieldCollection = new ArrayCollection(f);
					fm.addEventListener(AddressMapper.ADDRESSFIELDS_CHANGE_EVENT, onAddressFieldsChange_handler, false, 0, true);
				
				tw = new TitleWindow();
				tw.title = "Map Address Fields";
				tw.addElement(fm);
				PopUpManager.addPopUp(tw, this, true);
				PopUpManager.centerPopUp(tw);
			}
		}
		
		
		
		/**
		 * When fields have been mapped, will then process geocoding.
		 * @param event
		 */
		protected function onAddressFieldsChange_handler(event:Event):void
		{
			addressFields = AddressMapper(event.currentTarget).addressFields;
			tw.removeAllElements();
			PopUpManager.removePopUp(tw);
			if (addressCollection)
			{
				batchLocate(addressCollection.toArray());
			}
		}
		
		/**
		 * Will process *.dbf file when it has completed loading.
		 * @param event
		 */
		protected function onFileLoadComplete_handler(event:Event):void
		{
			file.removeEventListener(Event.COMPLETE, onFileLoadComplete_handler);
			file.removeEventListener(ProgressEvent.PROGRESS, onProgress);
			file.removeEventListener(IOErrorEvent.IO_ERROR, onIoError);
			file = FileReference(event.target);
			ef = new ExcelFile();
			var ba:ByteArray = new ByteArray();
			ba = file.data;
			ef.loadFromByteArray(ba);
			
			var sheet:Sheet=ef.sheets[0];
			addressCollection=new ArrayCollection();
			for each (var o:* in sheet.values){
				addressCollection.addItem(o);
					
			}
			
			//var temp:Array = DbfUtil.toArray(file.data);
			//addressCollection = new ArrayCollection(temp);
			
			findFieldNames(addressCollection[0]);
		}
		
		/**
		 * Will load *.dbf file after it has been selected in the users browser window.
		 * @param event
		 */
		protected function onFileSelect_handler(event:Event):void
		{
			dgAddresses.dataProvider = null;
			addressGraphicsLayer.graphicProvider = null;
			file.removeEventListener(Event.SELECT, onFileSelect_handler);
			file.addEventListener(Event.COMPLETE, onFileLoadComplete_handler, false, 0, true);
			file.addEventListener(ProgressEvent.PROGRESS, onProgress, false, 0, true);
			file.addEventListener(IOErrorEvent.IO_ERROR, onIoError, false, 0, true);
			file.load();
		}
		
		/**
		 * Will set the DataGrid to results and zoom map to extent of results.
		 * @param event
		 */
		protected function onGeocodeComplete(event:Event):void
		{
			bLocator.removeEventListener(BatchLocator.GEOCODE_COMPLETE, onGeocodeComplete);
			
			dgAddresses.dataProvider = bLocator.addressCollection;
			addressGraphicsLayer.graphicProvider = bLocator.getGraphics();
			map.extent = GraphicUtil.getGraphicsExtent(ArrayCollection(addressGraphicsLayer.graphicProvider).toArray());
		}
		
		/**
		 * Error notification.
		 * @param event
		 */
		protected function onIoError(event:IOErrorEvent):void
		{
			trace("file error occurred", event.text);
		}
		
		/**
		 * Progress notification.
		 * @param event
		 */
		protected function onProgress(event:ProgressEvent):void
		{
			trace("file load in progress", event.bytesLoaded);
		}
		
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName,instance);
			if (instance == btnUpload)
				btnUpload.addEventListener(MouseEvent.CLICK, btnUpload_clickHandler, false, 0, true);
			else if (instance == btnRematch)
				btnRematch.addEventListener(MouseEvent.CLICK, btnRematch_clickHandler, false, 0, true);
			else if (instance == btnRemapFields)
				btnRemapFields.addEventListener(MouseEvent.CLICK, btnRemapFields_clickHandler, false, 0, true);
			else if (instance == btnExport)
				btnExport.addEventListener(MouseEvent.CLICK, btnExport_clickHandler, false, 0, true);
			else if (instance == btnKmlExport)
				btnKmlExport.addEventListener(MouseEvent.CLICK,btnKmlExport_clickHandler,false,0,true);
		}
		
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName,instance);
			if (instance == btnUpload)
				btnUpload.removeEventListener(MouseEvent.CLICK, btnUpload_clickHandler);
			else if (instance == btnRematch)
				btnRematch.removeEventListener(MouseEvent.CLICK, btnRematch_clickHandler);
			else if (instance == btnRemapFields)
				btnRemapFields.removeEventListener(MouseEvent.CLICK, btnRemapFields_clickHandler);
			else if (instance == btnExport)
				btnExport.removeEventListener(MouseEvent.CLICK, btnExport_clickHandler);
			else if (instance == btnKmlExport)
				btnKmlExport.removeEventListener(MouseEvent.CLICK,btnKmlExport_clickHandler);
		}
		
		/**
		 * Set the GeocodeServer URL
		 * @param value
		 */
		public function setGeocodeURL(value:String):void
		{
			geocodeURL = value;
		}
		
		/**
		 * Set the main Map
		 * @param value
		 */
		public function setMap(value:Map):void
		{
			map = value;
			if (!map.getLayer("GeocodeGraphics"))
			{
				addressGraphicsLayer = new GraphicsLayer();
				addressGraphicsLayer.id = "GeocodeGraphics";
				map.addLayer(addressGraphicsLayer);
			}
		}
	}
}