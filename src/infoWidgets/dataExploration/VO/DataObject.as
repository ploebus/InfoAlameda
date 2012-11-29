package infoWidgets.dataExploration.VO
{
	import com.esri.ags.Map;
	//Used to serialize look_up table and data packaged with user request
	public class DataObject extends Object
	{
		public var category:String;
		public var subCategory:String;
		public var variable:String;
		public var coverage:String;
		public var boundary:String;
		public var boundaryLabel:String;
		public var year:String;
		public var action:String;
		public var layer:String;
		public var field:String;
		public var theMap:Map;
		public var specs:Object;
		public var dataType:String;
		public var variablecategory:String;
		public var alias:String;
		public var usertip:String;
		public var source:String;
		public var disclaimer:String;
		public var confidenceInterval:int;
		
		public function DataObject()
		{
		}
	}
}