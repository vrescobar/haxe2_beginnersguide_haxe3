mkdir -p build/
haxe -main XMLReader -neko build/XMLReader.n
haxe -main XMLReader -cpp build/XMLReader.cpp
haxe -main XMLReader -java build/XMLReader.java

