
/* The inheritance example of the book perfectly works on haxe 3.

Here comes another example showing inheritance, list comprehesion,
protocols and Lists of types.
*/

class Main {
      public static function main() {
         var humans:Array<HumanBeing>;
         humans = [for (name in ['Anna','Benjamin', 'Víctor']) new HumanBeing(name)];
         for (human in humans){
            greet(human);
         }
      }
      public static function greet(lt : LivingThing) {
         trace("Hi " + lt.name);
      }
}



class LivingThing {
   public var name : String;
   public function new() { name = ""; }
}

class HumanBeing extends LivingThing {
      public function new(name : String) {
         super();
         this.name = name;
         //name.length
      }
}

/*class Place {
   public function new(name : String, obj(x: Float, y: Float)) {
      this.name = name;
      this.coord_x = x;
      this.coord_y = y;
   }
}
class City extends Place {
   public function new(name : String, x: Float, y: Float) {
      super(name, x , y);
   }
   public getter length():Int {}
   public new_citizen(person:HumanBeing)
}*/