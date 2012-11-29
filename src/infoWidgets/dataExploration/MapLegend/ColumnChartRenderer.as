package infoWidgets.dataExploration.MapLegend
{
	import flash.display.Graphics;
	
	import mx.charts.series.items.ColumnSeriesItem;
	import mx.core.IDataRenderer;
	import mx.skins.ProgrammaticSkin;
	
	public class ColumnChartRenderer extends ProgrammaticSkin implements Iqq DataRenderer
	{
		private var _chartItem:ColumnSeriesItem;
		private var colors:Array = [0xCCCC99,0x999933,0x999966];

		
		public function ColumnChartRenderer()
		{
			
		}
		
		public function get data():Object
		{
			return _chartItem
		}
		
		public function set data(value:Object):void
		{
			_chartItem=value.element.items as ColumnSeriesItem;
			invalidateDisplayList();
		}
		override protected function
			updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void {
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var g:Graphics = graphics;
			g.clear();  
			g.beginFill(colors[(_chartItem == null)? 0:_chartItem.index]);
			g.drawRect(0, 0, unscaledWidth, unscaledHeight);
			g.endFill();
		}

	}
}