package infoWidgets.GeoCommons
{
	import flash.events.Event;
	
	public class GeoCommonsEvent extends Event
	{
		public var _data:Object;
		public static const LAYER_SELECTED:String = "layerSelected";
		
		public function GeoCommonsEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false,data:Object = null)
		{
			super(type, bubbles, cancelable);
			this._data = data;
		}
		
		public function get data():Object{
			return _data;
		}
		
		override public function clone():Event{
			return new GeoCommonsEvent(type, bubbles, cancelable, _data);
		}
		
	}
}