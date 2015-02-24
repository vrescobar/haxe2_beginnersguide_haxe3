import Sys;

/* Read an XML file from a given path in the command line,
inspect it and drink beer.

The examples of the book are quite different and actually, to
create nodes is quite straightforward and didn't change in the
API from the library.

Just take a look to the XML API here and make your own example:
http://api.haxe.org/Xml.html
*/

class XMLReader {	
	static function slurp (filePath: String): String { 
		if (!sys.FileSystem.exists(filePath)) throw('The file "$filePath" doesn\'t look to exist');
		if (sys.FileSystem.isDirectory(filePath)) throw('It is a directory, not a file: "$filePath"');
		var contents:String = sys.io.File.getContent(filePath);
		return contents;
	}
	public static function main(): Void{
		try {
			if (Sys.args().length != 1) throw ("Give me a path to a XML file.");
			var contents:String = slurp(Sys.args()[0]);
			var xmlDoc = Xml.parse(contents);
			for (fridge in xmlDoc.elementsNamed("fridge")){
				var total:Int=0;
				var fruits:Int=0;
				var deserts:Int=0;
				var drinks:Int=0;
				var beers:List<Xml> = new List<Xml>();
				var color:String = if(fridge.exists('color')){ fridge.get('color'); } else {'boring';}

				for (meal in fridge.elementsNamed("meal")){
					//Sys.println('$total $meal');
					switch (meal.get('type')) {
						case "fruit":
							fruits++;
						case "desert":
							deserts++;
						case "drink":
							if (meal.firstChild().nodeValue == "Beer") {
								beers.add(meal);
							}
							drinks++;
					}
					total++;
				}
				Sys.println('In the $color fridge it was $total meals: $fruits fruits, $deserts desert and $drinks drinks. But now...');
				for (beer_element in beers) {
					fridge.removeChild(beer_element);
				}
				Sys.println('\n${fridge.toString()}');
			}
			Sys.exit(0);
		} catch(error_msg: String) {
			Sys.stderr().writeString('Error: $error_msg\n');
      	 	Sys.exit(-1);
      	} catch( unknown : Dynamic ) {
      		Sys.stderr().writeString('Unknown exception. Is it a valid file with read permissions? It is a valid XML file?\n');
      	 	Sys.exit(-1);
		}
	}
}
