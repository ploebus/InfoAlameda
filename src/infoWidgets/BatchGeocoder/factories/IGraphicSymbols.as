package infoWidgets.BatchGeocoder.factories
{
	import com.esri.ags.Graphic;
	import com.esri.ags.symbols.Symbol;
	
	public interface IGraphicSymbols
	{
		function getSymbol(graphic:Graphic):Symbol;
	}
}