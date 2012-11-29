package infoComponents
{
	import com.esri.ags.FeatureSet;
	import com.esri.ags.Graphic;
	import com.esri.ags.layers.GraphicsLayer;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.symbols.SimpleLineSymbol;
	import com.esri.ags.tasks.QueryTask;
	import com.esri.ags.tasks.supportClasses.Query;
	
	import flash.display.Graphics;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncResponder;
	
	public class MapSelected
	{
		private var _boundary:String;
		private var _value:String;
		private var _layer:String;
		private var _gLayer:GraphicsLayer;
		private var _qy:Query;
		private var _qt:QueryTask;
		private var _outfields:Array;
		private var _where:String;
		private var _theUrl:String;
		private var _lineSym:SimpleLineSymbol=new SimpleLineSymbol(SimpleLineSymbol.STYLE_SOLID,0x0000ff,1,3);
		private var _fillSym:SimpleFillSymbol=new SimpleFillSymbol(SimpleFillSymbol.STYLE_NULL,0,.5,_lineSym);
		
		private static const BASE_URL:String="http://209.119.63.162/InfoAlameda/rest/services/Summary/Summary/MapServer/";
		
		public function MapSelected(by:String,lay:String,url:String = null,arr:Array=null)
			{
				_gLayer=new GraphicsLayer();
				_gLayer.id="SelectedItems";
				_boundary=by;
				_layer=lay;
				if(url){
					_theUrl = url;
				}
				if(arr)
				{
					setOutfields(arr);
				}
				
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
		
		public function get value():String
		{
			return _value;
		}

		public function set value(value:String):void
		{
			_value = value;
			
		}

		public function doQuery():void
			{
				if( _value || _where)
					{
						_qt=new QueryTask();
						if(_theUrl){
							_qt.url=_theUrl;
						}
						else{
						_qt.url=BASE_URL+_layer;
						}
						_qy=new Query();
						_qy.where=_where;
						//_qy.where=_boundary+" like '"+_value+"'";
						_qy.returnGeometry=true;
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
			_gLayer.clear();
			
			for each(var g:Graphic in featureSet.features)
			{
				var toolTipText:String='';
				g.symbol=_fillSym;
				for (var s:String in g.attributes){
					if(s){
					toolTipText += featureSet.fieldAliases[s] + ": " + g.attributes[s] + " \n"
					}
				}
				g.toolTip = toolTipText;
				_gLayer.add(g);
			}
			
		}
		
		private function onFault(info:Object, token:Object = null):void
		{
			Alert.show(info.toString(), "Query Problem");
			
		}
		public function getGraphics():GraphicsLayer
		{
			return _gLayer;
		}
	
	}
}