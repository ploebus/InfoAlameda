package widgets.IdentifyTool.events
{
	import flash.events.Event;
	
	public class LayerSelectEvent extends Event
	{
		public var layerId:String;
		public function LayerSelectEvent(type:String,layerId:String)
		{
			super(type);
			layerId=layerId;
		}
	}
}