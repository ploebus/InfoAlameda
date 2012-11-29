package widgets.IdentifyTool.components
{
	import com.esri.ags.Map;
	import com.esri.ags.layers.ArcGISDynamicMapServiceLayer;
	import com.esri.ags.layers.ArcGISTiledMapServiceLayer;
	import com.esri.ags.layers.FeatureLayer;
	import com.esri.ags.layers.Layer;
	import com.esri.ags.layers.supportClasses.AllDetails;
	import com.esri.ags.layers.supportClasses.LayerDetails;
	import com.esri.ags.layers.supportClasses.LayerInfo;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.utils.getQualifiedClassName;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.collections.IList;
	import mx.logging.ILogger;
	import mx.logging.Log;
	import mx.rpc.AsyncResponder;
	import mx.states.State;
	
	import spark.components.Button;
	import spark.components.List;
	import spark.components.supportClasses.SkinnableComponent;
	[SkinStates("services", "layers", "fields")]
	[Event(name="mapChange",type="flash.events.Event")]
	[Event(name="serviceDataUpdate",type="flash.events.Event")]
	[Event(name="serviceDataChange",type="flash.events.Event")]
	/**
	 * This component will list all Services in a Map component.
	 * It will also display all layers in each service and has the option to display
	 * each field in a layer.
	 *
	 * @author rrubalcava
	 */
	public class ServiceDetailLists extends SkinnableComponent
	{
		/**
		 * 
		 * @default 
		 */
		public static const MAP_CHANGE_EVENT:String = "mapChange";
		/**
		 * 
		 * @default 
		 */
		public static const SERVICEDATA_CHANGE_EVENT:String = "serviceDataChange";
		/**
		 * 
		 * @default 
		 */
		public static const SERVICEDATA_UPDATE_EVENT:String = "serviceDataUpdate";
		
		/**
		 * 
		 * @default 
		 */
		protected static const FIELDS:String = "fields";
		/**
		 * 
		 * @default 
		 */
		protected static const LAYERS:String = "layers";
		/**
		 * 
		 * @default 
		 */
		protected static const SERVICES:String = "services";
		/**
		 *
		 * @default
		 */
		protected static const logger:ILogger = Log.getLogger(getQualifiedClassName(ServiceDetailLists).replace("::", "."));
		
		/**
		 * Constructor
		 */
		public function ServiceDetailLists()
		{
			super();
			var _s1:State = new State();
			_s1.name = SERVICES;
			var _s2:State = new State();
			_s2.name = LAYERS;
			var _s3:State = new State();
			_s3.name = FIELDS;
			this.states = [_s1, _s2, _s3];
			this.currentState = SERVICES;
		}
		[SkinPart(required="false")]
		/**
		 *
		 * @default
		 */
		public var btnFields:Button;
		
		[SkinPart(required="true")]
		/**
		 *
		 * @default
		 */
		public var btnLayers:Button;
		
		[SkinPart(required="true")]
		/**
		 *
		 * @default
		 */
		public var btnServices:Button;
		
		[SkinPart(required="false")]
		/**
		 *
		 * @default
		 */
		public var listFields:List;
		
		[SkinPart(required="true")]
		/**
		 *
		 * @default
		 */
		public var listLayers:List;
		
		[SkinPart(required="true")]
		/**
		 *
		 * @default
		 */
		public var listServices:List;
		
		/**
		 *
		 * @default
		 */
		protected var _map:Map;
		
		[Bindable(event="mapChange")]
		/**
		 * Getter for source <code>map</code>
		 * @return
		 */
		public function get map():Map
		{
			return _map;
		}
		
		/**
		 * Setter for source <code>map</code>
		 * @param value
		 */
		public function set map(value:Map):void
		{
			if (_map != value)
			{
				_map = value;
				if (listServices)
					listServices.dataProvider = _map.layers as ArrayCollection;
				
				logger.debug("Map has been set, services have been found");
				dispatchEvent(new Event(MAP_CHANGE_EVENT));
			}
		}
		
		/**
		 * Backing variable for <code>serviceData</code> object.
		 * @default
		 */
		protected var _serviceData:Object;
		
		[Bindable(event="serviceDataChange")]
		/**
		 * Getter for Object that will hold this components selected <code>layer</code>, item name and field name.
		 * @return
		 */
		public function get serviceData():Object
		{
			return _serviceData;
		}
		
		/**
		 * Setter for Object that will hold this components selected <code>layer</code>, item name and field name.
		 * @param value
		 */
		public function set serviceData(value:Object):void
		{
			if (_serviceData != value)
			{
				_serviceData = value;
				dispatchEvent(new Event(SERVICEDATA_CHANGE_EVENT));
			}
		}
		
		[Bindable]
		/**
		 *
		 * @default
		 */
		protected var fields:IList;
		
		/**
		 *
		 * @default
		 */
		protected var layerIDSet:Object;
		
		[Bindable]
		/**
		 *
		 * @default
		 */
		protected var layers:IList;

        /**
         * Function that wil assign the Fields for the Layers.
         */
        protected function assignFieldsFromLayer():void {
            listFields.dataProvider = fields;
            this.currentState = FIELDS;
            this.invalidateSkinState();
        }

        /**
         * Function that will assign the Layer names from the Service.
         */
        protected function assignLayersFromLayer():void {
            listLayers.dataProvider = layers;
            this.currentState = LAYERS;
            this.invalidateSkinState();
        }
		
		/**
		 * Will find the fields that are part of the attributes of a given layer.
		 * @param layer
		 * @param lyrName
		 */
		protected function findFieldValues(layer:Layer, lyrName:String):void
		{
			if (layer is ArcGISDynamicMapServiceLayer)
				ArcGISDynamicMapServiceLayer(layer).getAllDetails(new AsyncResponder(getAllDetailsResult, null, lyrName));
			else if (layer is ArcGISTiledMapServiceLayer)
				ArcGISTiledMapServiceLayer(layer).getAllDetails(new AsyncResponder(getAllDetailsResult, null, lyrName));
            else if (layer is FeatureLayer) {
                var lDetails:LayerDetails = FeatureLayer(layer).layerDetails;
                fields = new ArrayList(lDetails.fields);
                assignFieldsFromLayer();
            }
			else
				logger.warn("layer is not Dynamic or Tiled");
		}
		
		/**
		 * Will find all the items that make up a given map service layer.
		 * @param lyr
		 */
		protected function findLayerDetails(lyr:Layer):void
		{
			if (layers)
				layers.removeAll();
			
			layers = new ArrayList();
			var layerInfos:Array;
			layerIDSet = null;
			layerIDSet = {};
			if (lyr is ArcGISDynamicMapServiceLayer)
				layerInfos = ArcGISDynamicMapServiceLayer(lyr).layerInfos;
			else if (lyr is ArcGISTiledMapServiceLayer)
				layerInfos = ArcGISTiledMapServiceLayer(lyr).layerInfos;
            else if (lyr is FeatureLayer) {
                var lyrId:int = FeatureLayer(lyr).layerDetails.id;
                var lyrName:String = FeatureLayer(lyr).layerDetails.name;
                layerIDSet[lyrName] = lyrId;
                layers.addItem(lyrName);
                assignLayersFromLayer();
            }
			
			if (layerInfos)
			{
				var info:LayerInfo;
				for each (info in layerInfos)
				{
					layerIDSet[info.name] = info.id;
					layers.addItem(info.name);
				}
                assignLayersFromLayer();
			}
		}

		
		/**
		 * Handles the results of <code>findFieldValues</code> to load the fields that make up a layer.
		 * @param allDetails
		 * @param token
		 */
		protected function getAllDetailsResult(allDetails:AllDetails, token:Object = null):void
		{
			var layerName:String = String(token);
			if (listFields)
			{
				var lDetails:LayerDetails;
				for each (lDetails in allDetails.layersDetails)
				{
					if (lDetails.name == layerName)
					{
						fields = new ArrayList(lDetails.fields);
					}
				}
                assignFieldsFromLayer();
			}
		}

		
		override protected function getCurrentSkinState():String
		{
			return this.currentState;
		}
		
		/**
		 * Event handler for <code>btnFields</code> click event.
		 * @param event
		 */
		protected function onFieldsButtonClick_handler(event:MouseEvent):void
		{
			this.currentState = FIELDS;
			this.invalidateSkinState();
		}
		
		/**
		 * Event handler for <code>btnLayers</code> click event.
		 * @param event
		 */
		protected function onLayersButtonClick_handler(event:MouseEvent):void
		{
			serviceData["layerName"] = "";
			serviceData["fieldName"] = "";
			this.currentState = LAYERS;
			this.invalidateSkinState();
		}
		
		/**
		 * Event handler for <code>listFields</code> click event.
		 * @param event
		 */
		protected function onListFieldsClick_handler(event:MouseEvent):void
		{
			if (listFields.selectedItem)
				serviceData["fieldName"] = listFields.selectedItem["name"] as String;
		}
		
		/**
		 * Event handler for <code>listLayers</code> click event.
		 * @param event
		 */
		protected function onListLayersClick_handler(event:MouseEvent):void
		{
			if (listLayers.selectedItem)
			{
				var service:Layer = listServices.selectedItem as Layer;
				var lyrName:String = listLayers.selectedItem as String;
				serviceData["layerName"] = lyrName;
				serviceData["layerId"] = layerIDSet[lyrName];
				serviceData["fieldName"] = "";
				dispatchEvent(new Event(SERVICEDATA_UPDATE_EVENT));
				if (listFields)
					findFieldValues(service, lyrName);
			}
		}
		
		/**
		 * Event handler for <code>listServices</code> click event.
		 * @param event
		 */
		protected function onListServicesClick_handler(event:MouseEvent):void
		{
			if (listServices.selectedItem)
			{
				var lyr:Layer = listServices.selectedItem as Layer;
				serviceData = {};
				serviceData["service"] = lyr;
				serviceData["layerName"] = "";
				serviceData["fieldName"] = "";
				findLayerDetails(lyr);
			}
		}
		
		/**
		 * Event handler for <code>btnServices</code> click event.
		 * @param event
		 */
		protected function onServicesButtonClick_handler(event:MouseEvent):void
		{
			serviceData = {};
			serviceData["service"] = null;
			serviceData["layerName"] = "";
			serviceData["fieldName"] = "";
			this.currentState = SERVICES;
			this.invalidateSkinState();
		}
		
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName,instance);
			if (instance == listServices)
			{
				listServices.dataGroup.addEventListener(MouseEvent.CLICK, onListServicesClick_handler, false, 0, true);
				if (map)
					listServices.dataProvider = map.layers as ArrayCollection;
			}
			else if (instance == listLayers)
				listLayers.dataGroup.addEventListener(MouseEvent.CLICK, onListLayersClick_handler, false, 0, true);
			else if (instance == listFields)
				listFields.dataGroup.addEventListener(MouseEvent.CLICK, onListFieldsClick_handler, false, 0, true);
			else if (instance == btnServices)
				btnServices.addEventListener(MouseEvent.CLICK, onServicesButtonClick_handler, false, 0, true);
			else if (instance == btnLayers)
				btnLayers.addEventListener(MouseEvent.CLICK, onLayersButtonClick_handler, false, 0, true);
			else if (instance == btnFields)
				btnFields.addEventListener(MouseEvent.CLICK, onFieldsButtonClick_handler, false, 0, true);
		}
		
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName,instance);
			if (instance == listServices)
				listServices.dataGroup.removeEventListener(MouseEvent.CLICK, onListServicesClick_handler);
			else if (instance == listLayers)
				listLayers.dataGroup.removeEventListener(MouseEvent.CLICK, onListLayersClick_handler);
			else if (instance == listFields)
				listFields.dataGroup.removeEventListener(MouseEvent.CLICK, onListFieldsClick_handler);
			else if (instance == btnServices)
				btnServices.removeEventListener(MouseEvent.CLICK, onServicesButtonClick_handler);
			else if (instance == btnLayers)
				btnLayers.removeEventListener(MouseEvent.CLICK, onLayersButtonClick_handler);
			else if (instance == btnFields)
				btnFields.removeEventListener(MouseEvent.CLICK, onFieldsButtonClick_handler);
		}
	}
}