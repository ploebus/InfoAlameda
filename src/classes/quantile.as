package classes
{
	public class quantile implements IClassificationScheme
	{
		private var _high:Number;
		private var _low:Number;
		private var _range:Number;
		private var _classes:Number;
		private var _values:Array=[];
		private var _tempValues:Array;
		private var _classification:Array;
		private var _what:String;
		
		public function quantile(values:Array,classes:Number,what:String)
		{
			_what=what;
			_tempValues=values;
			createValues();
			_classes=classes;
			setHigh();
			setRanges();
		}
		private function roundDecimal(num:Number, precision:int):Number{
			
			var decimal:Number = Math.pow(10, precision);
			
			return Math.round(decimal* num) / decimal;
			
		}
		
		private function createValues():void
		{
			for(var y:Number=0;y<_tempValues.length;y++)
			{
				_values.push(_tempValues[y].attributes[_what]);
			}
				_values=_values.sort();
		}
		
		private function setHigh():void
			
			{
			_high=this._values.length;
			}	
		
		private function setLow():void
			
			{
				_low=0;
			}
		
		private function setRanges():void
		{
			_classification=new Array();
			
			_values=_values.sort(Array.NUMERIC);
				var breakValue:Number=Math.ceil(_high/_classes);
				var _lowRange:Number=0;
				var _highRange:Number=breakValue;
			
			for(var i:Number=1;i<=_classes;i++)
				{
					if(_highRange >=_high)
						{
						_highRange=_high-1;
						_classification.push({
							bin:i,
							low:roundDecimal(_values[_lowRange],2),
							high:roundDecimal(_values[_highRange]+.1,2)
						});	
					}
					else{_classification.push({
						bin:i,
						low:roundDecimal(_values[_lowRange],2),
						high:roundDecimal(_values[_highRange],2)
						});
						_lowRange=_lowRange+breakValue;
						_highRange=_highRange+breakValue;
					}			
				}
			
		}
		
		public function getRanges():Array
		{
			return _classification;
		}
		
	}
}