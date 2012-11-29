package classes
{
	public class genericEqualInterval implements IClassificationScheme
	{
	
		
		private var _high:Number;
		private var _low:Number;
		private var _range:Number;
		private var _classes:Number;
		private var _values:Array;
		private var _classification:Array;
		private var _what:String;
		
		public function genericEqualInterval(values:Array,classes:Number,what:String=null)
		{
			_what=what;
			_values=values;
			_classes=classes;
			setLow();
			setHigh();
			setRanges();
			
		}
		
		private function setHigh():void
		{
			_high=0;
			
			for(var i:Number=0;i<this._values.length;i++)
			{
				if(_values[i]>_high)
				{
					_high=_values[i];
				}
			} 
			
		}
		
		private function setLow():void
		{	
			_low=100000;
			
			for(var i:Number=0;i<this._values.length;i++)
			{
				if(_values[i]<_low)
				{
					_low=_values[i];
				}
			} 
			
		}
		
		private function setRanges():void
		{
			/*_range=_high-_low;
			var _binRange:Number=Math.ceil(_range/_classes);
			var _highRange:Number=_binRange;
			var _lowRange:Number=_low;
			_classification=new Array();
			for(var i:Number=1;i<=_classes;i++)
			{
			_classification.push({
			bin:i,
			low:_lowRange,
			high:_binRange+_lowRange-.1
			});
			_lowRange=_binRange+_lowRange;
			//_highRange=_highRange+_binRange;
			
			trace(_highRange);*/
			_range=_high-_low;
			var _binRange:Number=_range/_classes;
			var _highRange:Number=_binRange;
			var _lowRange:Number=_low;
			_classification=new Array();
			for(var i:Number=1;i<=_classes;i++)
			{
				var tempHigh:Number=_binRange+_lowRange;
				_classification.push({
					bin:i,
					low:_lowRange.toFixed(1),
					high:tempHigh.toFixed(1)
				});
				_lowRange=_binRange+_lowRange+.1;
				//_highRange=_highRange+_binRange;
				
				trace(_highRange);
			}
			//forced by class break renderer
			_high=_high+.1
			_classification[_classes-1].high=_high.toFixed(1);
		}
		
		public function getRanges():Array
		{
			return _classification;
		}
		
	}
}