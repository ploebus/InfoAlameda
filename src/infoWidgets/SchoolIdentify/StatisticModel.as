package infoWidgets.SchoolIdentify
{
	public class StatisticModel
	{
		private static var _instance:StatisticModel;
		public var countyDemographics:XMLList;
		
		public function StatisticModel(enforcer:SingletonEnforcer){}
		
		public static function getInstance():StatisticModel{
			if (StatisticModel._instance == null){
			StatisticModel._instance = new StatisticModel(new SingletonEnforcer());
			}
			return StatisticModel._instance;
		}
	}
}
class SingletonEnforcer{}