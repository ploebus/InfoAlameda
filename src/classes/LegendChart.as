package classes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	
	import flexlib.controls.HSlider;
	
	import infoWidgets.dataExploration.chart.*;
	
	import mx.charts.CategoryAxis;
	import mx.charts.ColumnChart;
	import mx.charts.events.ChartItemEvent;
	import mx.charts.series.ColumnSeries;
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.controls.DataGrid;
	import mx.controls.HSlider;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.events.SliderEvent;
	
	import spark.components.Panel;
	import spark.layouts.VerticalLayout;
	
	public class LegendChart extends EventDispatcher
	{
		import mx.controls.Alert;
		private var chartData:Object;
		public var chartSpecs:Object;
		public var variableChart:ColumnChart;
		public var dataGrid:DataGrid;
		private var _color:uint=0xFFA500;
		private var _title:String="Put Title Here";
		private var _dataProvider:Object;
		private var _panel:Panel;
		private var _slider:mx.controls.HSlider;
		private var _filteredDataProvider:ArrayCollection=new ArrayCollection();
		
		public function LegendChart(x:Object,y:Object)
			{
				this.chartData=x;
				this.chartSpecs=y;		
				this._dataProvider=x.attributes.sortOn(chartSpecs.variable,Array.NUMERIC | Array.DESCENDING);
				
			}
		
		private function filterResults(item:Object):Boolean{
			return(_slider.values[0] <= item.index && item.index <= _slider.values[1]);
		}
		public function set color(c:uint):void
			{
				_color=c;
			}
		
		public function set title(s:String):void
			{
				_title=s;
			}
		
		public function set dataProvider(o:Object):void
			{
				_dataProvider=o;
			}
		public function get dataProvider():Object
			{
				return _dataProvider;
			}
		
		public function createChart():void
			{
			var i:Number=0;
			for each(var obj:Object in _dataProvider){
			
				obj.index=i;
				
				i ++;
			}
			//_filteredDataProvider.filterFunction=filterResults;*/
			
				
			
			_panel=new Panel();
				var layout:VerticalLayout=new VerticalLayout();
					_panel.layout=layout;
					_panel.title=_title;
				var vc:chartingComponent=new chartingComponent();
					vc.fieldName=chartSpecs.field;	
					vc.littleChartData=_dataProvider;
					vc.sliderMax=chartData.features.length;
					
				_panel.addElement(vc);
				
				
					
				/*variableChart=new ColumnChart();
				var littleChart:ColumnChart=new ColumnChart();
				_slider=new mx.controls.HSlider();
				_panel.addElement(variableChart);
					variableChart.width=550;
					variableChart.height=300;
					//variableChart.dataProvider=chartData.attributes.sortOn(chartSpecs.field,Array.NUMERIC | Array.DESCENDING);
					var dataSortField:SortField=new SortField(chartSpecs.field,false,true,true);
					var sort:Sort=new Sort();
						sort.fields=[dataSortField];
					_filteredDataProvider.sort=sort;
					_filteredDataProvider.refresh();
					variableChart.dataProvider=this._filteredDataProvider;
					
					var catAxis:CategoryAxis=new CategoryAxis();
   						catAxis.categoryField = chartSpecs.boundary;
   						variableChart.horizontalAxis = catAxis;
   					
   					var col:ColumnSeries=new ColumnSeries();
   						col.yField=chartSpecs.field;
   						col.xField=chartSpecs.boundary;
   						col.setStyle("fill",_color);
						variableChart.series=[col];
						variableChart.setStyle("color",0x000000);
   						variableChart.showDataTips=true;
				
				_panel.addElement(littleChart);
						littleChart.width=550;
						littleChart.height=100;
						littleChart.dataProvider=chartData.attributes.sortOn(chartSpecs.field,Array.NUMERIC | Array.DESCENDING);
						
						var catAxis1:CategoryAxis=new CategoryAxis();
						catAxis1.categoryField = chartSpecs.boundary;
						littleChart.horizontalAxis = catAxis1;
						
						var col1:ColumnSeries=new ColumnSeries();
							col1.yField=chartSpecs.field;
							col1.xField=chartSpecs.boundary;
							col1.setStyle("fill",_color);
							littleChart.series=[col1];
							littleChart.showDataTips=true;
				
				_panel.addElement(_slider);
					_slider.thumbCount=2;
					_slider.left=10;
					_slider.right=10;
					_slider.bottom=10;
					_slider.width=550;
					_slider.maximum=chartData.features.length;
					_slider.minimum=0;
					_slider.tickInterval=1;
					_slider.values=[0,chartData.features.length]
					_slider.addEventListener(SliderEvent.CHANGE,function(event:SliderEvent):void{
					_filteredDataProvider.refresh()});
					*/
				}
		
		public function getChart():Panel
			{
				return _panel;
			}
		
		public function createDataGrid():void
			{
							dataGrid=new DataGrid();
	   						dataGrid.dataProvider=chartData.attributes;
	   						dataGrid.width=500;
	   						dataGrid.height=400;
							dataGrid.setStyle("contentBakgroundColor","0xffffff");
	   						dataGrid.addEventListener(MouseEvent.CLICK,throwEvent);
	   						
	   					var colArray:Array=new Array();
	   						
	   						var col1:DataGridColumn=new DataGridColumn();
	   							col1.headerText=chartSpecs.boundary;
	   							col1.dataField=chartSpecs.boundary;
	   							col1.setStyle("color","0xffffff");
	   							col1.setStyle("textAlign","center");
	   							col1.setStyle("fontThickness","100");
	   							colArray.push(col1);
	   						
	   						var col2:DataGridColumn=new DataGridColumn();
	   							col2.headerText=chartSpecs.variable;
	   							col2.dataField=chartSpecs.field;
	   							col2.setStyle("color","0xffffff");
	   							col2.setStyle("textAlign","center");
	   							col2.setStyle("fontThickness","100");
	   							colArray.push(col2);
	   					dataGrid.columns=colArray;
	   					
		}
		
		public function getDataGrid():DataGrid{
			return dataGrid;
		}
		private function throwEvent(e:Event):void{
			e.target.dispatchEvent(new Event("highlightMap",true));
		}
	}
}