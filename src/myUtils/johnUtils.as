package myUtils
{
	import mx.collections.ArrayCollection;

	public class johnUtils
	{
		public function johnUtils()
		{
		}
		public static function countDecimals(num:Number):int
		{
			var tempVal:String = String(num);
			var returnValue:Number = 0;
			if(tempVal){
				if(tempVal.indexOf('.') != -1){
					var tempNum:Array = num.toString().split(".");
					returnValue = (tempNum[1] as String).length as Number;
					
				}
			}
			return returnValue;
		}
		public static function getHigh(arr:Array, s:String):Number{
			var theHigh:Number = -1000000;
			for each(var obj:Object in arr){
				if(obj[s]>theHigh){
					theHigh = obj[s];
				}
			}
			return theHigh;
		}
		
		public static function getLow(arr:Array, s:String):Number{
			var theLow:Number = 1000000000;
			for each(var obj:Object in arr){
				if(obj[s]< theLow){
					theLow = obj[s];
				}
			}
			return theLow;
		}
		
		public static function parseRSS(x:XML):ArrayCollection
		{
			var result:ArrayCollection = new ArrayCollection();
			for each (var itemXML:XML in x.channel.item)
			{
				result.addItem(itemXML);
			}
			return result;
		}
		
		public static function arrayCollectiontoCSV(data:ArrayCollection, alias:String):String
		{
			var theData:ArrayCollection = data;
			var headerString:String = '"geography","' + alias +'"\r\n';
			var dataString:String = '';
				
			for(var i:Number = 0;i < theData.length;i++){
				if(i == theData.length-1){
					dataString += theData[i]["geography"] + ',' + theData[i]["value"];
				}
				else{
					dataString += theData[i]["geography"] + ',' + theData[i]["value"] + '\n';
				}
			}
			
			
			return headerString + dataString;
		}
	}
}