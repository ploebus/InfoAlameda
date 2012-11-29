package infoWidgets.dataExploration.chart
{
	import mx.collections.ArrayCollection;

	public class ChartComponentAbstract
	{
		protected var _chartSpecs:Object;
		protected var _fieldName:String;
		protected var _geography:String;
		protected var _description:String;
		protected var _chartData:ArrayCollection;
		
		public function ChartComponentAbstract()
		{
			
		}
		
		
		public function get chartData():ArrayCollection
		{
			return _chartData;
		}

		public function set chartData(value:ArrayCollection):void
		{
			_chartData = value;
		}

		public function get description():String
		{
			return _description;
		}

		public function set description(value:String):void
		{
			_description = value;
		}

		public function get geography():String
		{
			return _geography;
		}

		public function set geography(value:String):void
		{
			_geography = value;
		}

		public function get fieldName():String
		{
			return _fieldName;
		}

		public function set fieldName(value:String):void
		{
			_fieldName = value;
		}

		public function get chartSpecs():Object
		{
			return _chartSpecs;
		}

		public function set chartSpecs(value:Object):void
		{
			_chartSpecs = value;
		}

	}
}