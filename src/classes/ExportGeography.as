package classes
{
	import com.esri.ags.utils.JSON;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;

	public class ExportGeography extends EventDispatcher
	{
		public static const BASE_URL:String = "http://209.119.63.162/InfoAlameda/rest/services/Summary/Summary/GPServer/Extract%20Data%20Task";
		private var _theCapabilities:Object;
		private var _choicesArray:Array = ["Boundary","Format"];
		private var _params:URLVariables;
		public function ExportGeography()
		{
			//set variables and load data
			//setURLVariables();
			
			
		}
		
		private function sendData(url:String,_vars:URLVariables):void{
			var request:URLRequest = new URLRequest(ExportGeography.BASE_URL);
			var loader:URLLoader = new URLLoader();
			request.data = _vars;
			loader.addEventListener(Event.COMPLETE,handleComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
			loader.load(request);
		}
		
		public function setURLVariables(obj:Object):void{
			_params = new URLVariables();
			for (var s:String in obj){
				_params[s] = obj[s]; 
				}
			sendData(ExportGeography.BASE_URL, _params);
		}
		
		public function getFormats():ArrayCollection{
			var params:Array = _theCapabilities.parameters;
			//TODO:change to be dynamic format property
			var returnCollection:ArrayCollection = new ArrayCollection(params[1].choiceList);
			return returnCollection;
		}
		
		
		
		private function handleComplete(event:Event):void{
			//Decode JSON
			var loader:URLLoader = URLLoader(event.target);
			var tempString:String = loader.data;
			_theCapabilities = JSON.decode(tempString);
			var e:Event = new Event("dataLoaded");
			dispatchEvent(e);
		}
		
		private function onIOError(event:IOErrorEvent):void{
			trace("Error loading URL.");
		}
	}
}