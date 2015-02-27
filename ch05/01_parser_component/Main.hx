/* The proposed component write/read exercice with corrections
*/

class Main {
      public static function main() {
         sys.println("Rading example.conf...");
         var comp = ComponentParser.parseConfigurationFile("example.conf");
         trace(comp.properties.get("text"));
         trace(comp.metadata.get("name"));
      }
}

/* The class "hash" is not htere anymore and it has been replaced by "Map"
which is almost the same: a a key->value storage implemented to get a constant time
access to the items.

API and usage:
http://api.haxe.org/Map.html
*/
class Component {
      public var properties : Map<String,Dynamic>; 
      public var metadata : Map<String,Dynamic>; // The second pair could be any primitive
      public function new() {
         properties = new Map<String,Dynamic>();
         metadata = new Map<String,Dynamic>();
      }
}

/* This function takes a path to a configuration file and returns
   an instance of ComponentParser */
class ComponentParser {
      public static function parseConfigurationFile(path : String) {
         var fileStream = sys.io.File.read(path, false); //Open our file for reading in character mode
         var comp = new Component();
         while(!fileStream.eof())  {
            var str = fileStream.readLine(); // Read file line by file
            var fields = str.split(" ");
            if(fields[2] == "0") {
               comp.properties.set(fields[0], fields[1]); //Set the key<->value in the properties Hash
            } else {
               comp.metadata.set(fields[0], fields[1]); //Set the key<->value in the metadata Hash
            }
         }
         stream.close();
         return comp;
         }
   }