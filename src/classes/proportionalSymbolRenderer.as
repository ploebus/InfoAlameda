package classes
{
	import com.esri.ags.renderers.supportClasses.ClassBreakInfo;
	import com.esri.ags.renderers.ClassBreaksRenderer;
	import com.esri.ags.symbols.SimpleMarkerSymbol;

	public class proportionalSymbolRenderer implements IRenderer
	{
		private var _proportionalClassBreakRenderer:ClassBreaksRenderer=new ClassBreaksRenderer();
		private var _classes:Number;
		private var _ranges:Array;
		private var _attribute:String;
		private var _color:uint;
		
		private function createSymbol(bigness:Number):SimpleMarkerSymbol
			{
				//var symbolArray:ArrayCollection= new ArrayCollection();
				var g_marker:SimpleMarkerSymbol= new SimpleMarkerSymbol();
					g_marker.size=bigness;
					g_marker.alpha= 1;
					g_marker.style=SimpleMarkerSymbol.STYLE_CIRCLE;
					g_marker.color= _color;
				
				
			return g_marker;
			}
		
			
		/* public var pointSymbolArray:ArrayCollection=	
			[
				[],[],
				[
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),Label:new TextSymbol("hello")}
				],	
				[		
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xBD0026,1.0),Label:new TextSymbol("hello")}
				],
				[
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xBD0026,1.0),Label:new TextSymbol("hello")},
					{Marker:new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xBD0026,1.0),Label:new TextSymbol("hello")},
				]
			]; */
	
		private var orangeSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFEE6CE,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFDAE6B,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xE6550D,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFEEDDE,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xFDBE85,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFD8D3C,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xD94701,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFEEDDE,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xFDBE85,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFD8D3C,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xE6550D,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xA63603,1.0)
				]];
		private var brownSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFFF7BC,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFEC44F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xD95F0E,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFFFFD4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xFED98E,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFE9929,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xCC4C02,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFFFFD4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xFED98E,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xFE9929,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xD95F0E,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x993404,1.0)
				]];
		private var blueSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xEDF8B1,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x7FCDBB,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x2C7FB8,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFFFFCC,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xA1DAB4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x41B6C4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x225EA8,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xFFFFCC,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xA1DAB4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x41B6C4,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x2C7FB8,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x253494,1.0)
				]];
		
		private var greenSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x006837,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x006837,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x006837,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x006837,1.0)
				]];
		
		private var redSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xBD0026,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xBD0026,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0xBD0026,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0xBD0026,1.0)
				]];
				
		private var purpleSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x54278F,1.0)
				],
				[			
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x54278F,1.0)
				],
				[
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,5,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,9,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,13,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,17,0x54278F,1.0),
					new SimpleMarkerSymbol(SimpleMarkerSymbol.STYLE_CIRCLE,21,0x54278F,1.0)
				]];
				
		public function proportionalSymbolRenderer(classes:Number,attribute:String,ranges:Array,color:String)
		{
			_attribute=attribute;
			_classes=classes;
			setColor(color);
			_ranges=ranges;
			setRenderer();
			
		}
		
		private function setColor (color:String):void
		{
			switch(color){
			case "green":
				_color=0x006837;
				break;
			case "red":
				_color=0xBD0026;
				break;
			case "purple":
				_color=0x54278F;
				break;
			case "brown":
				_color=0x993404;
				break;
			case "orange":
				_color=0xA63603;
				break;
			case "blue":
				_color=0x253494;
				break;
			}
		}
		private function setRenderer():void
		{
			_proportionalClassBreakRenderer.attribute=_attribute;
			_proportionalClassBreakRenderer.infos=getSymbol();
		}
		
		public function getRenderer():ClassBreaksRenderer
		{
			return _proportionalClassBreakRenderer;
		}
		
		private function getSymbol():Array
		{
			var info:Array=new Array();
		
			var x:Number=5;
			if(_classes>5){
				_classes=5;
			}
			for(var i:Number=0;i<_classes;i++)
			{
			
				var object:ClassBreakInfo=new ClassBreakInfo(createSymbol(x),_ranges[i].low,_ranges[i].high);
				info.push(object);
				x=x+5;
			} 
			return info;
			
		}
		
	}
}