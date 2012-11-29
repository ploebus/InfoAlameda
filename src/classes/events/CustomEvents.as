package classes.events
{
	import flash.events.Event;
	
	public class CustomEvents extends Event
	{
		public static const YEAR_SELECTED:String="yearSelected";
		public static const MAP_CHARTDATA:String="mapChartData";
		public static const SCHOOL_EVENT:String="schoolClicked";
		public static const FORMAT_SELECTED:String="formatSelected";
		private var _data:Object;
		public function CustomEvents(type:String,data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_data=data;
		}
		
		public function get data():Object{
			return _data;
		}
		
		public function set data(o:Object):void{
			_data=o;
		}
	}
}