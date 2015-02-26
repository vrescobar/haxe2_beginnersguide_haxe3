mkdir -p build/
haxe -main TestFunction -neko build/TestFunction.n
haxe -main TestFunction -cpp build/TestFunction.cpp
haxe -main TestFunction -java build/TestFunction.java

