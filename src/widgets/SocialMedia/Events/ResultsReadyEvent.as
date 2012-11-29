package widgets.SocialMedia.Events
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class ResultsReadyEvent extends Event
	{
		public static const RESULTS_REARDY:String = "MediaResultsReady";
		
		public var MediaType:String;
		public var ErrorMsg:String = "";
		public var Results:ArrayCollection;

		public function ResultsReadyEvent(mediaType:String, results:ArrayCollection, error:String)
		{
			super(RESULTS_REARDY, false, false);
			this.MediaType = mediaType;
			this.Results = results;
			this.ErrorMsg = error;
		}
		
		override public function clone():Event
		{
			return new ResultsReadyEvent(this.MediaType, this.Results, this.ErrorMsg);
		}
	}
}