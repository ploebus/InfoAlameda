package infoComponents
{
	import com.esri.ags.FeatureSet;
	import com.esri.ags.Graphic;
	import com.esri.ags.layers.GraphicsLayer;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.symbols.SimpleLineSymbol;
	import com.esri.ags.tasks.QueryTask;
	import com.esri.ags.tasks.supportClasses.Query;
	import com.esri.viewer.ViewerContainer;
	
	import flash.display.Graphics;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.events.CollectionEvent;
	import mx.rpc.AsyncResponder;
	import mx.rpc.events.ResultEvent;
	
	public class ComparisonVariables extends EventDispatcher
	{
		private var _boundary:String;
		private var _geography:String;
		private var _layer:String;
		private var _chartComparisonData:ArrayCollection;
		private var _qy:Query;
		private var _qt:QueryTask;
		private var _outfields:Array;
		private var _where:String;
		private var viewerContainer:ViewerContainer;
		private var _lineSym:SimpleLineSymbol=new SimpleLineSymbol(SimpleLineSymbol.STYLE_SOLID,0x0000ff,1,3);
		private var _fillSym:SimpleFillSymbol=new SimpleFillSymbol(SimpleFillSymbol.STYLE_NULL,0,.5,_lineSym);
		private var _description:String;	
		private static const URLSTART:String=ViewerContainer.getInstance().configData.serverInstance+"infoalameda/rest/services/Thematics/";
		
		
		
		public function ComparisonVariables(by:String,lay:*,arr:Array=null)
		{
			
			_boundary=by;
			_layer=lay;
			
			if(arr)
			{
				setOutfields(arr);
			}
			
		}
		
		public function get description():String
		{
			return _description;
		}

		public function set description(value:String):void
		{
			_description = value;
		}

		public function get geography():String
		{
			return _geography;
		}

		public function set geography(value:String):void
		{
			_geography = value;
		}

		public function get where():String
		{
			return _where;
		}
		
		public function set where(value:String):void
		{
			_where = value;
		}
		
		private function setOutfields(arr:Array):void
		{
			_outfields=new Array();
			_outfields=arr;
		}
		
		
		
		public function doQuery():void
		{
			if( _where)
			{
				_qt=new QueryTask();
				_qt.url=ComparisonVariables.URLSTART+_geography+"/MapServer/"+_layer;
				_qy=new Query();
				_qy.where=_where;
			
				_qy.returnGeometry=false;
				if(_outfields)
				{
					_qy.outFields=_outfields;
				}
				_qt.execute(_qy,new AsyncResponder(onResult,onFault));
				
			}
			else
				{
				Alert.show("Please set the value","Selection Error");
				}
			
		}
	

		
	private function onResult(featureSet:FeatureSet, token:Object=null):void
	{
		_chartComparisonData=new ArrayCollection();
		
		
		for(var item:String in featureSet.attributes[0])
		{
			var tempObj:Object={
					'label':featureSet.fieldAliases[item],
					'data':featureSet.attributes[0][item],
					'field':item
			}
			
			_chartComparisonData.addItem(tempObj);
		}
		dispatchEvent(new Event("dataLoaded"));
		
	}
		
		private function onFault(info:Object, token:Object = null):void
		{
			Alert.show(info.toString(), "Query Problem");
			
		}
		
		public function getArray():ArrayCollection
		{
			
			
			return _chartComparisonData;
			
		}
		
	}
}