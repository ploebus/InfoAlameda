package infoWidgets.dataExploration
{
	import flash.events.Event;
	
	public class dataSelectEvent extends Event
	{
		public static const MY_EVENT:String="myEvent";
		
		public function dataSelectEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}