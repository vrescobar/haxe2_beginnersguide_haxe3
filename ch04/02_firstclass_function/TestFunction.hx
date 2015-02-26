import Std;
import Sys;
/* The inheritance example of the book perfectly works on haxe 3.

Here comes another example showing inheritance, list comprehesion,
protocols and Lists of types.
*/

class TestFunction {
      public function new(){}
      public static function main() {
        var m = new TestFunction();
         m.saySomething();
         m.saySomething = function () {
            trace("Hi.");
         };
         m.saySomething();
      }
      public dynamic function saySomething()
      {
￼      trace("Hello.");
   }
}