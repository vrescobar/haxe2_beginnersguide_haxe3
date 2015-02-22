import Sys;
// Differences with the boo
//    Multiline comments with /* */
//    println present in package Sys.Lib

class TestHaxe {
      public static function main(): Void {
         /* Creates an EReg matching any string
            beginning with Hello. var e = simply declares the variable
            and assign the value on the right to it. */
         var e = ~/^Hello.*/; 
         // Alternatively REGEX syntax:
         // Creates an EReg matching any string beginning with Hello
         // var e = new EReg("^Hello.*","");
         if (e.match("Hello Benjamin")) {
            Sys.println("Matches");
         } else {
            Sys.println("Does not match"); 
         }
      }
}