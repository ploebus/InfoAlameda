package infoWidgets.dataExploration
{
	import mx.collections.ArrayCollection;

	public class variableCategoryVO
	{
		public var name:String;
		public var children:ArrayCollection;
		public var parent:String;
		public function variableCategoryVO(s:String,c:ArrayCollection=null,p:String=null)
		{
			this.name=s;
			if(c !=null)
				this.children=c;
			this.parent=p;
		}
	}
}