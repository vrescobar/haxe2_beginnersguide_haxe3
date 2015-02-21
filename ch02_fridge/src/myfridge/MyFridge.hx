package myfridge;
import Sys;


class MyFridge {
	public static function main() : Void {
		var choice ="";
		do {
			Sys.println("Main Menu");
			Sys.println("=========");
			Sys.println("1) Add new meal");
			Sys.println("2) List meals in Fridge");
			Sys.println("9) Exit menu ");
			
			var choice = new String(Sys.stdin().readLine());

			switch(choice){
				case "1":
					Sys.print("Your meal is: ");
					var nMeal = new Meal(Sys.stdin().readLine());
					myfridge.Fridge.meals.add(nMeal);
				case "2":
					Sys.println("Meals in fridge:");
					for(meal in myfridge.Fridge.meals) { 
						Sys.println(meal.name);
					}
				case "9":
					Sys.println("bye bye");
					//return; // Why the do-while fails?
			}
			trace("choice is: " + choice + " Expecting " + "9");
			trace("This comparison is: "+ (choice.toString() != "9"));
		} while( (choice.toString() != "9") );
		trace("You exited");
	}
}
