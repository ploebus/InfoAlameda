package infoWidgets.GeoCommons
{
	public class GeoCommonsUtils
	{
		public function GeoCommonsUtils()
		{
		}
		public static function getLayerId(theUrl:String):String{
			var tempArr:Array = theUrl.split("/");
			var returnString = tempArr[tempArr.length - 1];
			return returnString;
		}
	}
}