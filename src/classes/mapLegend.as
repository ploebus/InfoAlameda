package classes
{
	import com.esri.ags.renderers.ClassBreaksRenderer;
	
	import infoComponents.NaturalBreakComp;
	
	import mx.managers.PopUpManager;
	
	public class mapLegend
	{
			public var _features:Array=[];
			public var _featureHigh:Number=0;
			public var _featureLow:Number=0;
			public var _featureTotal:Number=0;
			public var _featureAverage:Number;
			public var unit:String="";
			public var color:String;
			public var _classes:Number;
			private var _ranges:Array=[];
			public var variableName:String;
			private var _renderType:String;
			private var _transparency:Number = 1;
			public var classificationScheme:String;
			private var _renderer:ClassBreaksRenderer; //graphic layer renderer
			private var _classification:IClassificationScheme; //classification bin ranges
			public var _binCount:Array=[];
			
			
		public function mapLegend(items:Array,what:String,classCount:Number,Scheme:String,renderType:String)
			{
				_features=items; //capture data
				
				_renderType=renderType;
				
				_classes=classCount; //determine number of classes desired
				
				variableName=what;
				
				setBinCount(); //create an array for recording count by bin
				
				classificationScheme=Scheme; //what scheme is used, defaults to equal interval
				
				setRanges(); //depending on classification scheme, create data ranges
				
				_featureAverage=_featureTotal/_features.length; //create average of features data
				
				//get Classification Schemes
				classificationScheme=Scheme;
				
				//get Renderer
				setRenderer();
			}
		
			public function get transparency():Number
			{
				return _transparency;
			}

			public function set transparency(value:Number):void
			{
				_transparency = value;
			}

		public function getLegendChart():Array
			{
				var _thisArray:Array=new Array();
				for(var i:Number=0;i<_features.length;i++)
					{
					
					var item:Object=
						{
							What:variableName,
							Name:"Hello"+i,
							Value:_features[i].attributes[variableName],
							Bin:getBinNumber(_features[i].attributes[variableName])
						}
					_thisArray.push(item);
						
				}
				_thisArray.sortOn("Value",Array.NUMERIC);
				return _thisArray;
					
			}		
				
		public function get features():Array
			{
				return _features;
			}
		
		public function set classes(x:int):void
		{
			_classes=x;
		}
		
		public function get classes():int{
			return _classes;
		}
		
		
		public function setRenderer():void
			{
				switch (_renderType)
					{
						case "First":
							if(!color){
								color="green";
							}
							var x:IRenderer=new thematicRenderer(_classes,variableName,_ranges,color);
							_renderer=x.getRenderer();
						break;
						case "Second":
							if(!color){
								color="red";
							}
							var y:IRenderer=new proportionalSymbolRenderer(_classes,variableName,_ranges,color);
							_renderer=y.getRenderer();
						break;
					}
				
			}
			
			
		public function get Average():Number
		{
			return _featureAverage;
		}
		
		
		
		public function get featuresCount():Number
		{
			return _features.length;
		}
		
		public function setBinCount():void
		{
			for(var i:Number=0;i<_classes;i++)
			{
				_binCount.push(0);
			}
		}
					
		
		
		
		public function setRanges():void
		{
			var _classificationType:IClassificationScheme;
			
			switch(classificationScheme)
			{
				case "Equal Interval":
					_classificationType=new equalInterval(_features,_classes,variableName);
					_ranges=_classificationType.getRanges();
					break;
				case "Quantile":
					_classificationType=new quantile(_features,_classes,variableName);
					_ranges=_classificationType.getRanges();
					break;
				default:
					//var nbc:NaturalBreakComp = new NaturalBreakComp();
					//PopUpManager.addPopUp(nbc,this.,true);
					break;
				
			}
			
						
		}
		
		public function get Ranges():Array
			{
				return _ranges;
			}
		
		public function get BinCount():Array
			{
				return _binCount;
			}
		public function getLegend():Array
		{
			return _renderer as Array;
			
		}
		
		public function getBinNumber(value:Number):String
			{
				var binNumber:String;
				var totClassification:Number=_ranges.length;
				var flag:String=new String("false");
			for(var i:Number=1;i<_ranges.length;i++)
					{
					if(value < _ranges[0] && flag=="false")
						{
							binNumber="0";
							flag="true";
						}
					else if(value >= _ranges[i-1] && value < _ranges[i]&& flag=="false")
							{
								binNumber=i.toString();
								flag="true";
								
							}
					else if(value >=_ranges[_ranges.length-1]&& flag=="false")
					{
						var temp:Number=_ranges.length-1;
						binNumber=temp.toString();
						flag="true";
					}
				}	
					return binNumber;
			}
			
		
						
			
		public function get Graphics():ClassBreaksRenderer
		{
			return _renderer;
		} 
		
		public function alterRenderer(color:String):void
		{
			//_renderer._color=color;
			
		}
	}
}
