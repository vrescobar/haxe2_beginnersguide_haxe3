
// Differences with the book: 
// 		we allways need a class for our main process, we can't just have a function

class Main {
	public static function main() : Void {
	   var s : String;
	   s = if(true) {
				"Vrai";
			} else {
				"Faux";
			}
		trace(s);
		}
}