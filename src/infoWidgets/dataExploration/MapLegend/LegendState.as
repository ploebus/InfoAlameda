////////////////////////////////////////////////////////////////////////////////
//Holds info about legend State
//
////////////////////////////////////////////////////////////////////////////////
package infoWidgets.dataExploration.MapLegend
{
	public class LegendState
	{
		
		private var _color:uint;
		private var _classification:String;
		private var _classCount:int;
		
		public function LegendState(color:uint,classification:String,classCount:int)
		{
			_color=color;
			_classification=classification;
			_classCount=classCount;
		}
		
		public function get color():uint{
			return _color;
		}
		
		public function get _classification():String{
			return _classification;
		}
		
		public function get _classCount():int{
			return _classCount;
		}
	}
}