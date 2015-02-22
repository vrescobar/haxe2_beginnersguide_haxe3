import Sys;

// This example is not in the book actually, but I wrote it to teach myself how exceptions
// work in Haxe which I find still quite primitive compared to the python exceptions.
// 
// I thought about share this example here since it costed me some work to grasp
// the concept due the lack of documentation/examples online and my previous ideas from
// other programming languages.

class TestHaxe {
      public static function main(): Void {
      	 try {
   	      	// Verify arguments
   	      	if (Sys.args().length != 2) throw "I need two parameters to perform a division.";

   	      	// Parse the integers from the command line
	      	var a = Std.parseInt(Sys.args()[0]);
	      	var b = Std.parseInt(Sys.args()[1]);

	      	// If I declare a and b as integers then I can't compare them to null!
	      	if ((a==null)||(b==null)) throw "A and B must be valid integers";

	      	// Perform the division and exit
	      	Sys.println(a + "/" + b + "=" + perform_division(a, b) );
	        Sys.exit(0);

      	 } catch(error_msg:String) { 
      	 	// This catch could seems to be implemented with a GOTO, xD
      	 	// Stderr is actually an instance from haxe.io.Output
      	 	Sys.stderr().writeString("Error caught: " + error_msg + "\n");
      	 	Sys.exit(-1);
  	 		}
      }
      static function perform_division(a:Int, b: Int): Float {
      	// Exceptions thrown in a nested function are catched as well
      	if (b == 0) throw "I cannot divide by 0!";
      	return (a/b);
      }
}