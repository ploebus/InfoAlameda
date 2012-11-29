package infoWidgets.dataExploration
{
	import classes.mapLegend;
	
	import com.esri.ags.FeatureSet;
	import com.esri.ags.Graphic;
	import com.esri.ags.Map;
	import com.esri.ags.geometry.MapPoint;
	import com.esri.ags.layers.GraphicsLayer;
	import com.esri.ags.renderers.Renderer;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.tasks.QueryTask;
	import com.esri.ags.tasks.supportClasses.Query;
	import com.esri.viewer.AppEvent;
	import com.esri.viewer.ViewerContainer;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	
	import infoWidgets.dataExploration.VO.DataObject;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
	import mx.rpc.AsyncResponder;
	import mx.utils.ObjectUtil;
	
	import myUtils.johnUtils;

	
	public class dataSelectionManager extends EventDispatcher
	{
		
		
		
		private var vc:ViewerContainer;
		private var _queryURL:String;
		private var _dataObject:Object;
		private var _graphic:Graphic;
		private var _q:Query;
		private var _qt:QueryTask;
		private var graphicsLayer:GraphicsLayer=new GraphicsLayer();
		private var graphicsLayer1:GraphicsLayer=new GraphicsLayer();
		private var _map:Map;
		private var thismapLegend:mapLegend;
		private var thatmapLegend:mapLegend;
		private var nullSym:SimpleFillSymbol=new SimpleFillSymbol("solid",0xC0C0C0)
		private var _confidenceInterval:String='';
		private var SERVER:String;
		public static const DATAOBJECT_SET:String = "onDataObjectSet";

		public function dataSelectionManager(data:Object,map:Map)
		{
				_map=map;
				vc = ViewerContainer.getInstance();
				SERVER = vc.configData.serverInstance+"infoalameda/rest/services/Thematics";
				this.addEventListener(dataSelectionManager.DATAOBJECT_SET,createQuery2);
				dataObject = data;
				
				
				
				
				//createQuery();
				AppEvent.addListener(AppEvent.LEGEND_CHANGED,changeGraphics);
			
		}
	
		private function get dataObject():Object
		{
			return _dataObject;
		}

		private function set dataObject(theData:Object):void
		{
			_dataObject=theData;
			dispatchEvent(new Event(dataSelectionManager.DATAOBJECT_SET));
			 
		}
		
		private function createQuery2(e:Event=null):void
			{	
			//DISPATCH OPEN LEGEND WIDGET AND CREATE LISTENER
				AppEvent.addListener(AppEvent.WIDGET_STATE_CHANGED,createQuery);
				AppEvent.dispatch(AppEvent.WIDGET_RUN, ViewerContainer.getWidgetId("Thematic Legends"));
				
			}
	private function createQuery(e:AppEvent = null):void
		{
			if(e.data.id == ViewerContainer.getWidgetId("Thematic Legends") && e.data.state == "open"){
			_q=new Query();
			_q.returnGeometry=true;
			var capBoundary:String=dataObject.boundary;
			if(checkConfidenceInterval()){
				//Alert.show("True disclaimer");
				//Bad solution, split variable into parts and pop description and add INTERVAL
				//var confidenceArray:Array=_dataObject.field.split("_");
					//confidenceArray.pop();
				//_confidenceInterval=confidenceArray.join("_");
				_confidenceInterval= _dataObject.field + "_interval";
				_q.outFields=["OBJECTID",_dataObject.field,_confidenceInterval,capBoundary];
			}
			else
			{
				//Alert.show("False disclaimer");
				_q.outFields=["OBJECTID",_dataObject.field,capBoundary];
			}
			
			_q.where=_dataObject.boundary+" is not null";
			AppEvent.removeListener(AppEvent.WIDGET_STATE_CHANGED,createQuery);
			createQueryTask();
			}
			
		}
	
	private function createQueryTask():void{
			_qt=new QueryTask;
			_qt.useAMF=true;
			
			_qt.url=SERVER+"/"+_dataObject.boundary+"/MapServer/"+_dataObject.layer;
			
			CursorManager.setBusyCursor();
			_qt.execute(_q,new AsyncResponder(onResult,onFault));
				function onResult(featureSet:FeatureSet, token:Object=null):void
					{
					CursorManager.removeBusyCursor();
					//ye old simple factory-like	
					switch (_dataObject.action)
						{
								case "first":
									if(_map.getLayer("graphicsLayer")){
										_map.removeLayer(_map.getLayer("graphicsLayer"));
									}
															
									thismapLegend=new mapLegend(featureSet.features,_dataObject.field,5,"Equal Interval","First");
											for each(var ft:Graphic in featureSet.features)
											{
											if(ft.attributes[_dataObject.field]){ 
												if(ft.attributes[_confidenceInterval]){
													ft.toolTip=ft.attributes[_dataObject.boundary]+": "+(ft.attributes[_dataObject.field] as Number).toFixed(2)+" "+_dataObject.variable+"\n Confidence Interval: "+ft.attributes[_confidenceInterval];
												}
												else{
													ft.toolTip=ft.attributes[_dataObject.boundary]+": "+(ft.attributes[_dataObject.field] as Number).toFixed(2)+" "+_dataObject.variable;
												}
												graphicsLayer.add(ft);
												ft.addEventListener(MouseEvent.ROLL_OVER, addGlow);
												ft.addEventListener(MouseEvent.ROLL_OUT, removeGlow);
											}
											else{
												ft.symbol=nullSym;
												ft.toolTip="Zero value or screened for confidentiality ";
												graphicsLayer.add(ft);
											}
											}
											graphicsLayer.id="graphicsLayer";
										graphicsLayer.renderer=thismapLegend.Graphics as Renderer;
										_map.addLayer(graphicsLayer,3);
										var _alias:String;
										if(_dataObject.variable){
											_alias=_dataObject.variable
										}
										else
										{
											_alias=_dataObject.alias
										}
										var legendObject:Object={
											box:"thismapLegend",
											features:thismapLegend,
											graphics:graphicsLayer,
											alias:_alias,
											specs:_dataObject,
											usertip:_dataObject.usertip,
											source:_dataObject.source
										} 
							
										var obj:Object={
											'key':'first',
											'collection':legendObject
												};
										
										
										
										
										AppEvent.dispatch(AppEvent.DATA_PUBLISH,obj);
										
										
										
									
										
								break;
							
							case "second":
								
								if(_map.getLayer("graphicsLayer1")){
									_map.removeLayer(_map.getLayer("graphicsLayer1"));
								}	
								thatmapLegend=new mapLegend(featureSet.features,_dataObject.field,5,"Equal Interval","Second");						
									for each(var ft1:Graphic in featureSet.features)
									{
										var _attributes:Object=new Object();
										_attributes[_dataObject.field]=ft1.attributes[_dataObject.field];
										//trace(features[i].geometry.extent.centerX as String);
										//var _point:MapPoint=new MapPoint(features[i].geometry.extent.centerX as Number,features[i].geometry.extent.centerY as Number)
										var _point:MapPoint=ft1.geometry.extent.center;
										
										//var _point:MapPoint=new MapPoint(features[i].attributes.long,features[i].attributes.lat);
										var graphic:Graphic=new Graphic(_point,null,_attributes);
										graphic.addEventListener(MouseEvent.ROLL_OVER, addGlow);
										graphic.addEventListener(MouseEvent.ROLL_OUT, removeGlow);
										
										if(ft1.attributes[_confidenceInterval]){
											graphic.toolTip=ft1.attributes[_dataObject.boundary]+": "+ft1.attributes[_dataObject.field]+" "+_dataObject.variable+"\n Confidence Interval: "+ft1.attributes[_confidenceInterval];
										}
										else{
										graphic.toolTip=ft1.attributes[_dataObject.boundary]+": "+ft1.attributes[_dataObject.field]+" "+_dataObject.variable;	
										}
										graphicsLayer1.add(graphic);
									}
									graphicsLayer1.renderer=thatmapLegend.Graphics as Renderer;
									graphicsLayer1.id="graphicsLayer1";
									_map.addLayer(graphicsLayer1,4);
									
									var legendObject1:Object={
										box:"thatmapLegend",
										features:thatmapLegend,
										graphics:graphicsLayer1,
										alias:_dataObject.variable,
										specs:_dataObject,
										usertip:_dataObject.usertip
									}
									var obj1:Object={
									'key':'second',
									'collection':legendObject1
							};
									AppEvent.dispatch(AppEvent.DATA_PUBLISH,obj1);
									AppEvent.dispatch(AppEvent.WIDGET_RUN, ViewerContainer.getWidgetId("Thematic Legends"));
								
							break;
								
						
				
					}
					
				}
				function onFault(info:Object, token:Object = null):void
					{
						CursorManager.removeBusyCursor();
						Alert.show("Layer not found. Please try selecting variable again. If problem continues, try refreshing your browser.", "Query Problem");

					}
				function addGlow(e:MouseEvent):void{
					var gEffect:GlowFilter = new GlowFilter();
					(e.target as Graphic).filters= [gEffect];
				}
				function removeGlow(e:MouseEvent):void{
					var gEffect:GlowFilter = new GlowFilter();
					(e.target as Graphic).filters= [];
				}
					
		}

		
		
	public function checkConfidenceInterval():Boolean
	{
		var theReturn:Boolean=false;
		if(_dataObject.confidenceInterval==1){
			theReturn=true;
		}
		return theReturn;
	}
	public function changeGraphics(event:AppEvent):void
	{
		var hello:mapLegend;
		var whichLayer:String;
		var layerIndex:Number;
		
		var key:String;
			switch (event.data.box)
			{
				case "first":
					hello=thismapLegend;
					whichLayer="graphicsLayer";
					layerIndex=3;
					key="first";
					break;
				case "second":
					hello=thatmapLegend;
					whichLayer="graphicsLayer1";
					layerIndex=4;
					key="second";
					break;
			}
		//this.catCount=event.data.categories;
		//MAINTAIN STATE OF PRIOR LEGEND
		hello.color=event.data.color;
		hello.classes=event.data.categories;
		hello.classificationScheme=event.data.classification;
		hello.setRanges();
		hello.setRenderer();
		
		var layer:GraphicsLayer=_map.getLayer(whichLayer)as GraphicsLayer;
			layer.renderer=hello.Graphics as Renderer;
			_map.addLayer(layer,layerIndex);
		//this.legendBoxes.mapObject=hello;
		
		var legendObject:Object={
				box:event.data.box,
				features:hello,
				graphics:layer,
				alias:_dataObject.variable,
				specs:event.data.specs
			}
		var obj:Object={
			'key':key,
			'collection':legendObject
		}
		AppEvent.dispatch(AppEvent.DATA_PUBLISH, obj);
	}
}
}