package classes
{
	import com.esri.ags.renderers.ClassBreaksRenderer;
	import com.esri.ags.renderers.supportClasses.ClassBreakInfo;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.symbols.SimpleLineSymbol;
	
	
	public class thematicRenderer implements IRenderer
	{
		private var _thematicClassBreakRenderer:ClassBreaksRenderer=new ClassBreaksRenderer();;
		private var _classes:Number;
		private var _color:String;
		private var _ranges:Array;
		private var _attribute:String;
		private var lineSymbol:SimpleLineSymbol=new SimpleLineSymbol("solid",0xFFFFB2,1,1);
		private var lineSymbol2:SimpleLineSymbol=new SimpleLineSymbol("solid",0xFED976,1,2);
		private var lineSymbol3:SimpleLineSymbol=new SimpleLineSymbol("solid",0xFEB24C,1,3);
		private var lineSymbol4:SimpleLineSymbol=new SimpleLineSymbol("solid",0xFD8D3C,1,4);
		private var lineSymbol5:SimpleLineSymbol=new SimpleLineSymbol("solid",0xFC4E2A,1,5);
		private var lineSymbol6:SimpleLineSymbol=new SimpleLineSymbol("solid",0xE31A1C,1,6);
		private var lineSymbol7:SimpleLineSymbol=new SimpleLineSymbol("solid",0xB10026,1,7);
		
		private var thematicLegend:ILegend;
		
		public function thematicRenderer(classes:Number,attribute:String,ranges:Array,color:String)
		{
			_attribute=attribute;
			_classes=classes;
			_color=color;
			_ranges=ranges;
			setRenderer();
		}
		private var hollowSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xFFEDA0,0,lineSymbol),
					new SimpleFillSymbol("solid",0xFEB24C,0,lineSymbol4),
					new SimpleFillSymbol("solid",0xF03B20,0,lineSymbol7)
				],
				[			
					new SimpleFillSymbol("solid",0xFFFFB2,0,lineSymbol),
					new SimpleFillSymbol("solid",0xFECC5C,0,lineSymbol3),
					new SimpleFillSymbol("solid",0xFD8D3C,0,lineSymbol5),
					new SimpleFillSymbol("solid",0xE31A1C,0,lineSymbol7)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,0,lineSymbol),
					new SimpleFillSymbol("solid",0xFECC5C,0,lineSymbol2),
					new SimpleFillSymbol("solid",0xFD8D3C,0,lineSymbol3),
					new SimpleFillSymbol("solid",0xF03B20,0,lineSymbol5),
					new SimpleFillSymbol("solid",0xBD0026,0,lineSymbol7)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,0,lineSymbol),
					new SimpleFillSymbol("solid",0xFED976,0,lineSymbol2),
					new SimpleFillSymbol("solid",0xFEB24C,0,lineSymbol3),
					new SimpleFillSymbol("solid",0xFD8D3C,0,lineSymbol4),
					new SimpleFillSymbol("solid",0xF03B20,0,lineSymbol5),
					new SimpleFillSymbol("solid",0xBD0026,0,lineSymbol7)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,0,lineSymbol),
					new SimpleFillSymbol("solid",0xFED976,0,lineSymbol2),
					new SimpleFillSymbol("solid",0xFEB24C,0,lineSymbol3),
					new SimpleFillSymbol("solid",0xFD8D3C,0,lineSymbol4),
					new SimpleFillSymbol("solid",0xFC4E2A,0,lineSymbol5),
					new SimpleFillSymbol("solid",0xE31A1C,0,lineSymbol6),
					new SimpleFillSymbol("solid",0xB10026,0,lineSymbol7)
				]
			];
		
		
		private var greenSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xF7FCB9,1,lineSymbol),
					new SimpleFillSymbol("solid",0xADDD8E,1,lineSymbol),
					new SimpleFillSymbol("solid",0x31A354,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xC2E699,1,lineSymbol),
					new SimpleFillSymbol("solid",0x78C679,1,lineSymbol),
					new SimpleFillSymbol("solid",0x238443,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xC2E699,1,lineSymbol),
					new SimpleFillSymbol("solid",0x78C679,1,lineSymbol),
					new SimpleFillSymbol("solid",0x31A354,1,lineSymbol),
					new SimpleFillSymbol("solid",0x006837,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD9F0A3,1,lineSymbol),
					new SimpleFillSymbol("solid",0xADDD8E,1,lineSymbol),
					new SimpleFillSymbol("solid",0x78C679,1,lineSymbol),
					new SimpleFillSymbol("solid",0x31A354,1,lineSymbol),
					new SimpleFillSymbol("solid",0x006837,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD9F0A3,1,lineSymbol),
					new SimpleFillSymbol("solid",0xADDD8E,1,lineSymbol),
					new SimpleFillSymbol("solid",0x78C679,1,lineSymbol),
					new SimpleFillSymbol("solid",0x41AB5D,1,lineSymbol),
					new SimpleFillSymbol("solid",0x238443,1,lineSymbol),
					new SimpleFillSymbol("solid",0x005A32,1,lineSymbol)
				]];
		
		private var redSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xFFEDA0,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEB24C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xF03B20,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xFFFFB2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFECC5C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xE31A1C,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFECC5C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xF03B20,1,lineSymbol),
					new SimpleFillSymbol("solid",0xBD0026,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFED976,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEB24C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xF03B20,1,lineSymbol),
					new SimpleFillSymbol("solid",0xBD0026,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFB2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFED976,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEB24C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFC4E2A,1,lineSymbol),
					new SimpleFillSymbol("solid",0xE31A1C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xB10026,1,lineSymbol)
				]
				];
				
		private var purpleSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xEFEDF5,1,lineSymbol),
					new SimpleFillSymbol("solid",0xBCBDDC,1,lineSymbol),
					new SimpleFillSymbol("solid",0x756BB1,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xF2F0F7,1,lineSymbol),
					new SimpleFillSymbol("solid",0xCBC9E2,1,lineSymbol),
					new SimpleFillSymbol("solid",0x9E9AC8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x6A51A3,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xF2F0F7,1,lineSymbol),
					new SimpleFillSymbol("solid",0xCBC9E2,1,lineSymbol),
					new SimpleFillSymbol("solid",0x9E9AC8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x756BB1,1,lineSymbol),
					new SimpleFillSymbol("solid",0x54278F,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xF2F0F7,1,lineSymbol),
					new SimpleFillSymbol("solid",0xDADAEB,1,lineSymbol),
					new SimpleFillSymbol("solid",0xBCBDDC,1,lineSymbol),
					new SimpleFillSymbol("solid",0x9E9AC8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x756BB1,1,lineSymbol),
					new SimpleFillSymbol("solid",0x54278F,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xF2F0F7,1,lineSymbol),
					new SimpleFillSymbol("solid",0xDADAEB,1,lineSymbol),
					new SimpleFillSymbol("solid",0xBCBDDC,1,lineSymbol),
					new SimpleFillSymbol("solid",0x9E9AC8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x807DBA,1,lineSymbol),
					new SimpleFillSymbol("solid",0x6A51A3,1,lineSymbol),
					new SimpleFillSymbol("solid",0x4A1486,1,lineSymbol)
				]];
		private var orangeSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xFEE6CE,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDAE6B,1,lineSymbol),
					new SimpleFillSymbol("solid",0xE6550D,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xFEEDDE,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDBE85,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD94701,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFEEDDE,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDBE85,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xE6550D,1,lineSymbol),
					new SimpleFillSymbol("solid",0xA63603,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFEEDDE,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDD0A2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDAE6B,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xE6550D,1,lineSymbol),
					new SimpleFillSymbol("solid",0xA63603,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFEEDDE,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDD0A2,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFDAE6B,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFD8D3C,1,lineSymbol),
					new SimpleFillSymbol("solid",0xF16913,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD94801,1,lineSymbol),
					new SimpleFillSymbol("solid",0x8C2D04,1,lineSymbol)
				]];
		private var brownSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xFFF7BC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEC44F,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD95F0E,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xFFFFD4,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFED98E,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFE9929,1,lineSymbol),
					new SimpleFillSymbol("solid",0xCC4C02,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFD4,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFED98E,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFE9929,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD95F0E,1,lineSymbol),
					new SimpleFillSymbol("solid",0x993404,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFD4,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEE391,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEC44F,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFE9929,1,lineSymbol),
					new SimpleFillSymbol("solid",0xD95F0E,1,lineSymbol),
					new SimpleFillSymbol("solid",0x993404,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFD4,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEE391,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFEC44F,1,lineSymbol),
					new SimpleFillSymbol("solid",0xFE9929,1,lineSymbol),
					new SimpleFillSymbol("solid",0xEC7014,1,lineSymbol),
					new SimpleFillSymbol("solid",0xCC4C02,1,lineSymbol),
					new SimpleFillSymbol("solid",0x8C2D04,1,lineSymbol)
				]];
		
		private var blueSymbolArray:Array=	
			[
				[],[],
				[
					new SimpleFillSymbol("solid",0xEDF8B1,1,lineSymbol),
					new SimpleFillSymbol("solid",0x7FCDBB,1,lineSymbol),
					new SimpleFillSymbol("solid",0x2C7FB8,1,lineSymbol)
				],
				[			
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xA1DAB4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x41B6C4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x225EA8,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xA1DAB4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x41B6C4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x2C7FB8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x253494,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xC7E9B4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x7FCDBB,1,lineSymbol),
					new SimpleFillSymbol("solid",0x41B6C4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x2C7FB8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x253494,1,lineSymbol)
				],
				[
					new SimpleFillSymbol("solid",0xFFFFCC,1,lineSymbol),
					new SimpleFillSymbol("solid",0xC7E9B4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x7FCDBB,1,lineSymbol),
					new SimpleFillSymbol("solid",0x41B6C4,1,lineSymbol),
					new SimpleFillSymbol("solid",0x1D91C0,1,lineSymbol),
					new SimpleFillSymbol("solid",0x225EA8,1,lineSymbol),
					new SimpleFillSymbol("solid",0x0C2C84,1,lineSymbol)
				]];
		
				
		public function getRenderer():ClassBreaksRenderer
		{
			return _thematicClassBreakRenderer;
		}
		
		private function setRenderer():void
		{
			_thematicClassBreakRenderer.attribute=_attribute;
			_thematicClassBreakRenderer.infos=getSymbol();
		}
		
		public function getSymbol():Array
		{
			var info:Array=new Array();
			var obj:ClassBreakInfo;
			var x:Number;
			switch(_color){
				case "green":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(greenSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
				break;
				case "purple":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(purpleSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
				break;
				case "red":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(redSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
				break;
				case "brown":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(brownSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
					break;
				case "blue":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(blueSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
					break;
				case "orange":
					
					for(x=0;x<_classes;x++)
					{
						obj=new ClassBreakInfo(orangeSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
						info.push(obj);
					}
					
					break;
				
				
			case "hollow":
			
			for(x=0;x<_classes;x++)
			{
				obj=new ClassBreakInfo(hollowSymbolArray[_classes-1][x],_ranges[x].low,_ranges[x].high);
				info.push(obj);
			}
			
			break;
			
		}
			return info;
		}
		
	}
	}
