package classes
{
	import com.esri.ags.renderers.supportClasses.ClassBreakInfo;
	import com.esri.ags.symbols.SimpleFillSymbol;
	import com.esri.ags.symbols.SimpleMarkerSymbol;
	
	import flash.events.MouseEvent;
	
	import mx.containers.GridItem;
	import mx.containers.GridRow;
	import mx.controls.Alert;
	import mx.controls.Image;
	import mx.core.UIComponent;
	
	import myUtils.johnUtils;
	
	import spark.components.Label;
	
	
	
	public class thematicLegend implements ILegend
	{
		private var _swatches:Array;
		private var  _type:String;
		private var _precision:int; //how many decimals
		
		public static const THEMATIC:String = "thematic";
		public static const POINT:String = "point";
		
		public function thematicLegend(type:String)
		{
			_type=type;
		}
		private function roundDecimal(num:Number, precision:int):Number{
			
			if(precision > 2){
				precision = 2;
			}
			
			var decimal:Number = Math.pow(10, precision);
			
			return Math.round(num * decimal) / decimal;
			
		}
		public function get swatches():Array{
			return _swatches;
		}
		
		
		public function getLegend(a:Array):Array
		{
			
			_swatches=new Array();
			//header
			var gridRow0:GridRow=new GridRow();
				gridRow0.percentWidth=100;
				gridRow0.height=20;
			
			var gridHeader0:GridItem=new GridItem();
				gridHeader0.percentWidth=20;
				gridHeader0.percentHeight=100;
				gridHeader0.label='Symbol';
			var gridHeader1:GridItem=new GridItem();
				gridHeader1.percentWidth=40;
				gridHeader1.percentHeight=100;
				gridHeader1.setStyle('verticalAlign','middle');
				gridHeader1.setStyle('horizontalAlign','center');
				gridHeader1.label='Low Value';
			var l1:Label=new Label();
				l1.text='Low Value';
				l1.setStyle('fontWeight','bold');
				gridHeader1.addElement(l1);
			var gridHeader2:GridItem=new GridItem();
				gridHeader2.percentWidth=40;
				gridHeader2.percentHeight=100;
				gridHeader2.label='High Value';
				gridHeader2.setStyle('verticalAlign','middle');
				gridHeader2.setStyle('horizontalAlign','center');
			var l2:Label=new Label();
				l2.text='High Value';
				l2.setStyle('fontWeight','bold');
				gridHeader2.addElement(l2);
			gridRow0.addElement(gridHeader0);
			gridRow0.addElement(gridHeader1);
			gridRow0.addElement(gridHeader2);
			swatches.push(gridRow0);
			
			for each(var f:ClassBreakInfo in a)
			{
				//PLACE GET PRECISION HERE AND ROUND NUMBERS
				_precision = johnUtils.countDecimals(f.maxValue);
				
				var gridRow:GridRow=new GridRow();
					gridRow.percentWidth=100;
					gridRow.height=15;
					gridRow.setStyle("horizontalAlign","center");
				var gridItem:GridItem=new GridItem();
					gridItem.percentWidth=33;
					gridItem.setStyle("verticalAlign","top");
				var gridItem1:GridItem=new GridItem();
					gridItem1.percentWidth=33;
					gridItem1.setStyle("horizontalAlign","center");
					gridItem1.setStyle("verticalAlign","bottom");
				var gridItem2:GridItem=new GridItem();
					gridItem2.percentWidth=33;
					gridItem2.setStyle("horizontalAlign","center");
					gridItem2.setStyle("verticalAlign","bottom");
				
				//first legend column
				switch(_type){
					case 'thematic':
						var swatch1:UIComponent=new UIComponent();
							swatch1.graphics.beginFill(SimpleFillSymbol(f.symbol).color);
							swatch1.graphics.drawRect(30,0,20,20);
							swatch1.graphics.endFill();
							swatch1.toolTip="Click to change transparency";
							
						gridItem.addElement(swatch1);
						break;
					case 'point':
						var swatch:UIComponent=new UIComponent();
						swatch.graphics.beginFill(SimpleMarkerSymbol(f.symbol).color);
						swatch.graphics.drawCircle(30,0,SimpleMarkerSymbol(f.symbol).size/1.8);
						swatch.graphics.endFill();
						gridItem.addElement(swatch);
					break;
				}
					
				
				//second legend column--min value
				var label:spark.components.Label=new spark.components.Label()
					label.text=roundDecimal(f.minValue,_precision).toString();
					gridItem1.addElement(label);
				
				
				
				//third legend column --max value
				var label1:spark.components.Label=new spark.components.Label();
					//label1.text=roundDecimal((f.maxValue),0).toString();
					//CRAPPY FUDGING TO PRESENT CORRECT LEGEND
				var tmpNum:Number;	
				if(_precision == 0){
						tmpNum=roundDecimal(f.maxValue -1,_precision);
						label1.text = tmpNum.toString();
						}
					else if(_precision ==2){
						tmpNum=roundDecimal(f.maxValue - .01,_precision);
						label1.text = tmpNum.toString();
						}
					else{
						tmpNum=roundDecimal(f.maxValue - 01,_precision);
						label1.text = tmpNum.toString();
						}
					//label1.text=roundDecimal(f.maxValue,_precision).toString();
					gridItem2.addElement(label1);
					gridRow.addElement(gridItem);
					gridRow.addElement(gridItem1);
					gridRow.addElement(gridItem2);
				swatches.push(gridRow);			
				}
			//NULL VALUES ROW IN GRID
			var gridRowFinal:GridRow = new GridRow();
				var gridItemF1:GridItem = new GridItem();
				//NULL Swatch
				var swatch:UIComponent=new UIComponent();
					swatch.graphics.beginFill(0xCCCCCC);
					swatch.graphics.drawRect(-8,0,20,20);
					
					swatch.graphics.endFill();
				gridItemF1.addElement(swatch);
				swatch.toolTip = "Null values either represent zero or represent values has been masked for confidentiality";
				
				var gridItemF2:GridItem = new GridItem();
				
				var lab:Label = new Label();
					lab.text = 'Null Values';
				gridItemF2.addElement(lab);
				
				var gridItemF3:GridItem = new GridItem();
				
				//var lab1:Label = new Label();
					//lab1.text = 'Values';
					//gridItemF3.addElement(lab);
			
			//gridRowFinal.addElement(gridItemF1);
			//gridRowFinal.addElement(gridItemF2);
			//gridRowFinal.addElement(gridItemF3);
			swatches.push(gridRowFinal);
			
			return swatches;
		}
	}
	
}