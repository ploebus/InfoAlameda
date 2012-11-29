package infoWidgets.ProgressBar
{
	import com.esri.ags.Map;
	import com.esri.ags.events.ExtentEvent;
	import com.esri.ags.events.LayerEvent;
	import com.esri.ags.layers.Layer;
	
	import flash.events.Event;
	
	import mx.controls.ProgressBar;

	
	public class ProgressBarImpl
	{
		
		private var _map:Map;
		private var _progressBar:ProgressBar;
		
		
		public function ProgressBarImpl(){
			
		}
		
		public function get progressBar():ProgressBar
		{
			return _progressBar;
		}

		public function set progressBar(value:ProgressBar):void
		{
			_progressBar = value;
		}

		public function get map():Map
		{
			return _map;
		}

		public function set map(value:Map):void
		{
			_map = value;
		}

		public function registerHandlers(oMap:Map):void{
			oMap.addEventListener(ExtentEvent.EXTENT_CHANGE,registerShowCondition);
			var _layer:Layer = Layer(oMap.layers[0]);
			_layer.addEventListener(LayerEvent.UPDATE_END,registerHideCondition);
		}
		
		private function registerShowCondition(ev:Event):void{
			_progressBar.visible = true;
		}
		
		private function registerHideCondition(ev:Event):void{
			_progressBar.visible = false;
		}
	}
}