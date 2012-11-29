 package infoWidgets.dataExploration.chart
{
	import com.esri.ags.FeatureSet;
	import com.esri.ags.Map;
	import com.esri.ags.tasks.QueryTask;
	import com.esri.ags.tasks.supportClasses.Query;
	import com.esri.viewer.AppEvent;
	import com.esri.viewer.ViewerContainer;
	
	import flash.events.Event;
	
	import infoWidgets.dataExploration.VO.DataObject;
	
	import mx.charts.ColumnChart;
	import mx.controls.Alert;
	import mx.rpc.AsyncResponder;
	
	
	
	public class chartManager
	{
		private var _chartSpecs:Object;
		private var _map:Map;
		private var _url:String;
		private var vc:ViewerContainer;
		
		public var URLSTART:String;
	
		
		public function chartManager(obj:Object,m:Map):void
			{
				
				vc = ViewerContainer.getInstance();
				//AppEvent.addListener(AppEvent.WIDGET_STATE_CHANGED,queryServer);
				AppEvent.dispatch(AppEvent.WIDGET_RUN,2);
				URLSTART = vc.configData.serverInstance+"infoalameda/rest/services/Thematics";
				_chartSpecs=obj;
				_map=m;
				
				
				queryServer();
				//OPEN CHART WIDGET
				
			}
		
	
			
		public function get chartSpecs():Object
		{
			return _chartSpecs;
		}

		public function set chartSpecs(value:Object):void
		{
			_chartSpecs = value;
			
		}

		private function queryServer(e:AppEvent=null):void{
			//What widget is being opened
			//var testNum:int = ViewerContainer.getWidgetId("Charted Data");
			//Alert.show(String(e.data.id)+ " : "+testNum.toString());
			//if(e.data.id == ViewerContainer.getWidgetId("Charted Data") && e.data.state == "open"){
			//AppEvent.removeListener(AppEvent.WIDGET_RUN, queryServer);
				_url = URLSTART+"/"+_chartSpecs.boundary+"/MapServer/"+_chartSpecs.layer;
				var queryTask:QueryTask=new QueryTask(_url);
				var query2:Query=new Query();
					query2.outFields=[_chartSpecs.boundary,_chartSpecs.field];
					query2.returnGeometry=false;
					query2.where="SHAPE<>0";
				queryTask.execute(query2, new AsyncResponder( onResult, onFault ));
				
				//}
			}
		
		private function onResult(featureSet:FeatureSet,token:Object=null):void{
			
			var dataObj:Object={
				features:featureSet,
				specs:_chartSpecs,
				theUrl:_url
				};
			
			var obj:Object={
				'key':'chart',
				'collection':dataObj
			};
			
			//STORE RESULTS IN DATAMANAGER
			AppEvent.dispatch(AppEvent.DATA_PUBLISH,obj);
			
			//OPEN CHART WIDGET
			//AppEvent.dispatch(AppEvent.WIDGET_RUN,ViewerContainer.getWidgetId("Charted Data"));
		}
			
		private	function onFault(info:Object,token:Object=null):void
				{
					Alert.show(info.toString(),"Oops");
				}
				
			}
		}
	