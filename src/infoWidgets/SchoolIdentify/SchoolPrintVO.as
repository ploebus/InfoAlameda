package infoWidgets.SchoolIdentify
{
	import mx.collections.ArrayCollection;

	public class SchoolPrintVO
	{
		private var _enrollmentCollection:ArrayCollection;
		private var _evaluationCollection:ArrayCollection;
		private var _staffingCollection:ArrayCollection;
		private var _ethnicityCollection:ArrayCollection;
		
		public var schoolName:String;
		public var schoolDistrict:String;
		public var addressField:String;
		
		public function SchoolPrintVO(name:String, district:String, address:String)
		{
			schoolName = name;
			schoolDistrict = district;
			addressField = address;
		}

		public function get ethnicityCollection():ArrayCollection
		{
			return _ethnicityCollection;
		}

		public function set ethnicityCollection(value:ArrayCollection):void
		{
			_ethnicityCollection = value;
		}

		public function get staffingCollection():ArrayCollection
		{
			return _staffingCollection;
		}

		public function set staffingCollection(value:ArrayCollection):void
		{
			_staffingCollection = value;
		}

		public function get evaluationCollection():ArrayCollection
		{
			return _evaluationCollection;
		}

		public function set evaluationCollection(value:ArrayCollection):void
		{
			_evaluationCollection = value;
		}

		public function get enrollmentCollection():ArrayCollection
		{
			return _enrollmentCollection;
		}

		public function set enrollmentCollection(value:ArrayCollection):void
		{
			_enrollmentCollection = value;
		}

	}
}