package widgets.IdentifyTool.renderers {
import com.esri.ags.Graphic;
import com.esri.ags.renderers.Renderer;
import com.esri.ags.symbols.Symbol;

import widgets.IdentifyTool.factories.symbols.DefaultSymbols;
import widgets.IdentifyTool.factories.symbols.IGraphicSymbols;


/**
 * This renderer can be used to set symbology for <code>GraphicsLayer</code>
 * @author rrubalcava
 *
 */
public class DefaultGraphicRenderer extends Renderer {
    protected var defaultSymbol:IGraphicSymbols = new DefaultSymbols();

    override public function getSymbol(graphic:Graphic):Symbol {
        return defaultSymbol.getSymbol(graphic);
    }
}
}