import Sys;

// Differences with the book:
//	args is now present in the Sys package (not neko anymore)

class Main {
         public function new() { }
         public static function main() {
          var name = Sys.args()[0];
          trace("Hello " + name);
          trace("Your name is " + Std.string(name.length) + " characters long.");
         }
}