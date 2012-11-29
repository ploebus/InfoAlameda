package classes
{
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;
	public class statUtils
	{
		private var _data:XMLList;
		private var _sumValues:Number=0;
		private var _numberValues:Number=0;
		private var _sumXValues:Number=0;
		private var _sumYValues:Number=0;
		private var _sumXSquaredValues:Number=0;
		private var _slope:Number;
		private var _intercept:Number;
		private var _xMin:Number;
		private var _xMax:Number;
		
		public var lineCollection:ArrayCollection;
		public function statUtils(x:XMLList)
		{
				_data=x;
				_numberValues=x.length();
		}
		
		public function getLineFormula():ArrayCollection
			{
				
				
				
				for each (var y:XML in _data)
					{
						_sumValues=_sumValues+(y.@value1 * y.@value2);
						_sumXValues=_sumXValues+y.@value2;
						_sumYValues=_sumYValues+y.@value1;
						_sumXSquaredValues=_sumXSquaredValues+(y.@value2*y.@value2);
					}
				calculateSlope();
				calculateIntercept();
				_xMin=findValue(_data.@value2,"value2",Array.NUMERIC);
				_xMax=findValue(_data.@value2,"value2",Array.DESCENDING|Array.NUMERIC);
				var _yMin:Number=(_slope*_xMin)+_intercept;
				var _yMax:Number=(_slope*_xMax)+_intercept;
				
				
				
				
				lineCollection=new ArrayCollection([
					{XValue:_xMin,YValue:_yMin},
					{XValue:_xMax,YValue:_yMax}]);
				
				return lineCollection;
				
			}
		
		private function calculateSlope():void
			{
				_slope=((_numberValues*_sumValues)-(_sumXValues+_sumYValues))/((_numberValues*_sumXSquaredValues)-(_sumXValues^2));
				
			}
		private function calculateIntercept():void
			{
				_intercept=(_sumYValues-(_slope*_sumXValues))/_numberValues;
			}
	
		private function findValue(xmlData:XMLList, nodeName:String, options:Object=null):Number
		{
			var coll:XMLListCollection = new XMLListCollection(xmlData.row[nodeName]);
			var tmp:Array = new Array();
			
			for(var i:int = 0; i < coll.children().length(); i++)
			{
				tmp.push(coll[i]);   
			}
			
			var sorted:Array = tmp.sort(options);
			return sorted[0];
		}
	}
}