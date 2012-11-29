package widgets.SocialMedia.Tools
{
	import com.esri.ags.SpatialReference;
	import com.esri.ags.geometry.MapPoint;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import widgets.SocialMedia.Events.ResultsReadyEvent;
	import widgets.SocialMedia.Events.SocialMediaType;
	
	import mx.collections.ArrayCollection;
	import mx.events.MetadataEvent;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	[Event(name=ResultsReadyEvent.RESULTS_REARDY, type="mam.events.ResultsReadyEvent")]
	public class YouTubeTool implements IEventDispatcher
	{
		private static const YT:Namespace = Namespaces.YOUTUBE_NS;
		private static const GML:Namespace = Namespaces.GML_NS;
		private static const ATOM:Namespace = Namespaces.ATOM_NS;
		private static const MEDIA:Namespace = Namespaces.MEDIA_NS;
		private static const GEORSS:Namespace = Namespaces.GEORSS_NS;

		private var proxyUrl:String = "";
		private var eventDispatcher:EventDispatcher;

		public function set ProxyUrl(proxy:String):void {
			this.proxyUrl =	proxy;		
		}
		
		public function get ProxyUrl():String {
			return this.proxyUrl;
		}
		
		public function YouTubeTool()
		{
			eventDispatcher = new EventDispatcher(this);
		}
		
		public function Search(keyword:String, fromDay:String, location:MapPoint, radius:Number, units:String, maxResults:Number=50, startIndex:Number=1):void {
			
			var youTubeUrl:String = "http://gdata.youtube.com/feeds/api/videos?"
			youTubeUrl += "q=" + keyword + "&time="+ fromDay + "&start-index=" + startIndex + "&max-results=" + maxResults;
			youTubeUrl += "&location=" + location.y + "," + location.x + '&location-radius=' + radius + units;
			youTubeUrl += "&format=5&v=2&lr=en&alt=atom";

			if (proxyUrl != "") { 
				youTubeUrl = proxyUrl + "?" + youTubeUrl;
			}

			var youTubeService:HTTPService = new HTTPService();
			youTubeService.useProxy = false;
			youTubeService.url = youTubeUrl;
			youTubeService.resultFormat = "e4x";
			youTubeService.addEventListener(ResultEvent.RESULT, HttpServiceResult);
			youTubeService.addEventListener(FaultEvent.FAULT, HttpServiceFault);
			youTubeService.send();
		}
		
		//config fault
		private function HttpServiceFault(event:mx.rpc.events.FaultEvent):void
		{
			var sInfo:String = "Error: ";
			sInfo += "Event Target: " + event.target + "\n\n";
			sInfo += "Event Type: " + event.type + "\n\n";
			sInfo += "Fault Code: " + event.fault.faultCode + "\n\n";
			sInfo += "Fault Info: " + event.fault.faultString;
		    dispatchEvent(new ResultsReadyEvent(SocialMediaType.YouTube, null, sInfo));
		}
		
		//config result
		private function HttpServiceResult(event:ResultEvent):void
		{
			var videos:ArrayCollection = new ArrayCollection();
			
			try
			{
				var xmlResult:XML = XML(event.result);
				var entries:XMLList = xmlResult.ATOM::entry;
				
				if (entries.length() > 0) {
					for each (var entryXML:XML in entries) {
						var ytItem:YouTubeItem = new YouTubeItem();
						
						ytItem.title= entryXML.ATOM::title;
						ytItem.mediaUrl = entryXML.ATOM::content.@src;
						ytItem.publishDate = entryXML.ATOM::published;
						
						var mediaGroups:XMLList = entryXML.MEDIA::group;
						if (mediaGroups && mediaGroups.length() > 0) {
							ytItem.id = mediaGroups[0].YT::videoid;
							ytItem.aspectRatio = mediaGroups[0].YT::aspectRatio;
							ytItem.description = mediaGroups[0].MEDIA::description;
							
							var thumbnails:XMLList = mediaGroups[0].MEDIA::thumbnail;
							if (thumbnails && thumbnails.length() > 0) {
								ytItem.thumbnail = thumbnails[0].@url;
							}
						}
						
						var whereList:XMLList = entryXML.GEORSS::where;
						if (whereList && whereList.length() > 0)
						{
							var pos:String    = whereList[0].GML::Point[0].GML::pos[0];
							var arr:Array     = pos.split(" ");
							var gmlLat:Number = Number(arr[0]);
							var gmlLon:Number = Number(arr[1]);
							ytItem.point = new MapPoint(gmlLon, gmlLat, new SpatialReference(4326));
							
							videos.addItem(ytItem);
						}
					}
				}
	
				dispatchEvent(new ResultsReadyEvent(SocialMediaType.YouTube, videos, ""));
			}
			catch (error:Error)
			{
				dispatchEvent(new ResultsReadyEvent(SocialMediaType.YouTube, null, "An error occurred while parsing the youTube results. " + error.message));
			}
		}
		
		// Impements IEventDispatcher
		public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
			eventDispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
		}
		public function dispatchEvent(event:Event):Boolean {
			return eventDispatcher.dispatchEvent(event);
		}
		
		public function hasEventListener(type:String):Boolean {
			return eventDispatcher.hasEventListener(type);
		}
		
		public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void {
			eventDispatcher.removeEventListener(type, listener, useCapture);
		}
		
		public function willTrigger(type:String):Boolean {
			return eventDispatcher.willTrigger(type);
		}
	}
}