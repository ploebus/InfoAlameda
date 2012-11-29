package classes
{
	public class equalInterval implements IClassificationScheme
	{
		private var _high:Number;
		private var _low:Number;
		private var _range:Number;
		private var _classes:Number;
		private var _values:Array;
		private var _classification:Array;
		private var _what:String;
		private var _dataPrecision:Number;
		
		import mx.controls.Alert;
		
		import myUtils.johnUtils;
		
		public function equalInterval(values:Array,classes:Number,what:String)
			{
				_what=what;
				_values=values;
				_classes=classes;
				
				chgValues();
				
				setLow();
				setHigh();
				setRanges();
			}
		
		private function chgValues():void
			{
				for(var i:Number=0;i < this._values.length;i++)
					{
						_values[i].attributes[_what] = checkNulls(_values[i].attributes[_what]);
					}
			}
		
		private function setHigh():void
			{
				_high=0;
				_dataPrecision = 0;		
				for(var i:Number=0;i < this._values.length;i++)
				{
				//COUNT DECIMALS
					var decimalLength:Number = johnUtils.countDecimals(_values[i].attributes[_what] as Number);
					
					if( decimalLength > _dataPrecision){
						_dataPrecision = decimalLength;
						}
					
					if(_values[i].attributes[_what] > _high)
						{
							_high=_values[i].attributes[_what];
						}
				} 
				
			}
		
		private function setLow():void
		{	
			_low=10000000;
					
			for(var i:Number=0;i<this._values.length;i++)
				{
					if(_values[i].attributes[_what] < _low)
						{
							_low=_values[i].attributes[_what];
						}
				} 
			
		}
		
		private function setRanges():void
		{
			//get data range
			_range= _high - _low;
			var _binRange:Number;
			
			//get bin ranges
			if(_dataPrecision == 0){
				_binRange = Math.round(_range/_classes);
			}
			else
			{
				_binRange = _range/_classes;
			}
			//set initial high and low value of each range
			var _highRange:Number=_binRange;
			var _lowRange:Number=_low;
			
			_classification=new Array();
			
			//factor to 10^-(precision+1) Vinay principle
			
		
			var multiplier:Number =vinayPrinciple(_dataPrecision); 
			for(var i:Number=0;i<=_classes;i++)
			{
				if(i==_classes-1)
				{
					_classification.push({
						bin:i,
						//CHANGED 11-28
						low:roundDecimal((_low+(i*_binRange)),1),
						high:roundDecimal((_high + multiplier),1)
						});
						//high:roundDecimal((_low+((i+1)*_binRange) + multiplier),2)});
				}
				else
					{
						_classification.push({
						bin:i,
						//CHANGED 11-28
						low:roundDecimal((_low+(i*_binRange)),1),
						high:roundDecimal((_low+((i+1)*_binRange)),1)});
					}
				
					/*var tempHigh:Number=_binRange+_lowRange;
				_classification.push({
				bin:i,
				low:_lowRange,
				high:tempHigh*/
			
			//_lowRange=_binRange+_lowRange;
			//_highRange=_highRange+_binRange;
			
			//trace(_highRange);
			}
			//forced by class break renderer
			//_high=_high+.1
			//_classification[_classes-1].high=_high.toFixed(1);
		}
		
		private function roundDecimal(num:Number, precision:int):Number{
			
			//JUST CHANGED 11-28
			var decimal:Number = Math.pow(10, 1);
			
			return Math.round(decimal* num) / decimal;
			
		}
		
		private function vinayPrinciple(num:Number):Number{
			//JUST CHANGED 11-28
			if(num > 2){
				num = 1;
			}
			return Math.pow(10,num * -1);
		}
		
		private function countDecimal(num:Number):Number{
			return returnValue;
			if(num){
			var returnValue:Number = 0;
			if((num.toString().match(".") as Array).length > 0)
				{
					var tempNum:Array = num.toString().split(".");
					
					returnValue = (tempNum[1] as String).length as Number;
				}
			}			
			
		}
		public function getRanges():Array
		{
			return _classification;
		}
		private function checkNulls(n:Number):Number
		{
			return n >= 0 ? n : 0;
		}
		
	}
}