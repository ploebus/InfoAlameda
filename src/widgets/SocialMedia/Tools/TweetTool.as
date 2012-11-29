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
	public class TweetTool implements IEventDispatcher
	{
		private static const ATOM:Namespace = Namespaces.ATOM_NS;
		private static const GEORSS:Namespace = Namespaces.GEORSS_NS;
		private static const TWITTER:Namespace = Namespaces.TWITTER_NS;

		private var eventDispatcher:EventDispatcher;

		public function TweetTool()
		{
			eventDispatcher = new EventDispatcher(this);
		}
		
		public function Search(keyword:String, since:String, location:MapPoint, radius:Number, units:String, numPerPage:Number=500, page:Number=1):void {
			
			var tweetUrl:String = "http://search.twitter.com/search.atom?"
			tweetUrl += "q=" + keyword + "&since="+ since + "&page=" + page + "&rpp=" + numPerPage;
			tweetUrl += "&geocode=" + location.y + "," + location.x + "," + radius + units;
			tweetUrl += "&result_type=mixed";

			var tweetService:HTTPService = new HTTPService();
			tweetService.useProxy = false;
			tweetService.url = tweetUrl;
			tweetService.resultFormat = "e4x";
			tweetService.addEventListener(ResultEvent.RESULT, HttpServiceResult);
			tweetService.addEventListener(FaultEvent.FAULT, HttpServiceFault);
			tweetService.send();
		}
		
		//config fault
		private function HttpServiceFault(event:mx.rpc.events.FaultEvent):void
		{
			var sInfo:String = "Error: ";
			sInfo += "Event Target: " + event.target + "\n";
			sInfo += "Event Type: " + event.type + "\n";
			sInfo += "Fault Code: " + event.fault.faultCode + "\n";
			sInfo += "Fault Info: " + event.fault.faultString;
		    dispatchEvent(new ResultsReadyEvent(SocialMediaType.Tweet, null, sInfo));
		}
		
		//config result
		private function HttpServiceResult(event:ResultEvent):void
		{
			var tweets:ArrayCollection = new ArrayCollection();
			
			try
			{
				var xmlResult:XML = XML(event.result);
				var entries:XMLList = xmlResult.ATOM::entry;
				
				if (entries.length() > 0) {
					for each (var entryXML:XML in entries) {
						var tweetItem:TweetItem = new TweetItem();
						
						tweetItem.title = entryXML.ATOM::title;
						tweetItem.content = entryXML.ATOM::content;
						tweetItem.publishDate = entryXML.ATOM::published;
						tweetItem.authorName = entryXML.ATOM::author.ATOM::name;
						tweetItem.authorUri = entryXML.ATOM::author.ATOM::uri;
					
						var links:XMLList = entryXML.ATOM::link;
						if (links && links.length() > 0) {
							for each (var linkXML:XML in links) {
								if (linkXML.@type == "image/png") {
									tweetItem.authorPhoto = linkXML.@href;
								}
							}
						}
						
						var geoXML:XMLList = entryXML.TWITTER::geo;
						if (geoXML != null && geoXML.length() > 0)
						{
							var geo:String = geoXML[0].GEORSS::point; 
							if (geo && geo != "") {
								var arr:Array  = geo.split(" ");
								var gmlLat:Number = Number(arr[0]);
								var gmlLon:Number = Number(arr[1]);
								tweetItem.point = new MapPoint(gmlLon, gmlLat, new SpatialReference(4326));

								tweets.addItem(tweetItem);
							}
						}
					}
				}
				
				dispatchEvent(new ResultsReadyEvent(SocialMediaType.Tweet, tweets, ""));
			}
			catch (error:Error)
			{
				dispatchEvent(new ResultsReadyEvent(SocialMediaType.Tweet, null, "An error occurred while parsing the Tweet results. " + error.message));
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