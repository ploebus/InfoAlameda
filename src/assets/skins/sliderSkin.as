package assets.skins
{
	import flexlib.skins.SliderThumbNoGripHighlightSkin;
	
	public class sliderSkin extends SliderThumbNoGripHighlightSkin
	{
		public function sliderSkin()
		{
			
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			with (graphics)
			{
				clear();
				lineStyle( 2, 0x666666 );
				beginFill( 0x999999, .25 );
				drawRect( 0,-5,w,h );
			}
		}
		
		override public function get measuredWidth():Number
		{
			return 40;
		}
		override public function get measuredHeight():Number
		{
			return 40;
		}
		
	}
}