package scripts
{
	public class Script
	{
		import mx.collections.ArrayList;
		
		[Bindable]
		public var places:ArrayList = new ArrayList();
		
		
		public function Script()
		{
		}
		
		/**
		 * Add a place to the resturant list
		 */
		public function addPlace(placeName:String):void{
			places.addItem({label:placeName});
		}
		
		/**
		 * Delete a place to the resturant list
		 */
		public function delPlace(placeName:String):void{
			var id:int = places.getItemIndex(placeName);
			if(id != -1){
			places.removeItemAt(id);
			}
		}
		
		/**
		 * Randomize a place from the resturang list
		 */
		public function randomize():String{
			var temp:int = generateRandomNumber(places.length-1);
			if(temp != -1){
				return places.getItemAt(temp).label;
			}else{
				return "No resturants in List";
			}
		}
		
		/**
		 * Generate a random number between 0 and end:Number
		 * returns the Number
		 */
		private function generateRandomNumber(end:int):int
		{
			var randomNum:int;
			
			if(end == -1){
				return -1;
			}
			else{
				// Number is between 0 and end, round the number
				randomNum = Math.round( Math.random() * end );
			}
			// Return random number
			return randomNum;
		}
	}
}