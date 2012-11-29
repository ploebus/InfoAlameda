package widgets.IdentifyTool.VO
{
	import com.esri.ags.tasks.supportClasses.Query;

	public class QueryVO
	{
		public var boundary:String;
		public var layerId:String;
		public var outfields:Array;
		public var pt:String;
		
		private var qy:Query;
		private var url:String="http://209.119.63.162/InfoAlameda/rest/services/Thematics/";
		
		
		
		public function QueryVO()
		{
			qy=new Query();
		}
		
		public function createQuery():Query
		{
			url += boundary+"/MapServer/"+layerId;
			qy.outFields=outfields;
			qy.where=boundary+"="+pt;
			return qy;
			
		}
	}
}