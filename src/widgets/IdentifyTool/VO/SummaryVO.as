package widgets.IdentifyTool.VO
{
	public class SummaryVO
	{
		import mx.controls.Alert;
		public static const BASEURL:String="http://209.119.63.162/InfoAlameda/rest/services/Thematics";
		private var _data:XMLList;
		public var category:String;
		private var _categoryId:String;
		public var boundary:String;
		public var datafield:String;
		public var outfields:Array;
		public var where:String;
		public var categoryIndex:int=0;
		public var filterField:String;
		
		public function SummaryVO()
		{
			
		}
		
		public function getURL():String{
			//Alert.show(_data.type.toXMLString());
			
			_categoryId=_data.type[categoryIndex].layer;
			//Alert.show(_categoryId);
			var tempURL:String=BASEURL+"/"+datafield+"/MapServer/"+_categoryId;
			//Alert.show(tempURL);
			return tempURL;
		}
		
		public function getCategories():XMLList{
			return data.name;
		}
		public function set data(d:XMLList):void{
			_data=d;
			//boundary=_data.boundary;
			//datafield=_data.datafield;
		}
		
		public function get data():XMLList{
			return _data;
		}
		
		public function setLayer(i:int=0):void{
			//categoryIndex=i;
			//_categoryId=_data.type[i].layer;
			//Alert.show(categoryId);
		}
		
		public function generateFields():void{
			outfields=new Array();
			//Alert.show(data.type[categoryIndex].toXMLString());
			for each(var s:String in data.type[categoryIndex].fields.item.field){
				
				outfields.push(s);
			}
			//Alert.show(outfields.toString());
		}
		
	}
}