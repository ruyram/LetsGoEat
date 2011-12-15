package scripts 
{


	
	[Bindable]
	public class App
	{
		private static var instance:App;
		

		
		
		public var scr:Script;

		
		public function App() {
			scr = new Script;
		}
		
		public static function getInstance() : App 
		{
			if ( instance == null )
			{
				instance = new App();
			}
			return instance;
		}
	}
}