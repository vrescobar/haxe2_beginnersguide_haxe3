mkdir -p build/
haxe -main TestHaxe -neko build/division.n
haxe -main TestHaxe -cpp build/division.cpp
haxe -main TestHaxe -java build/division.java
# Open
# neko build/division.n
# or for CPP
# ./build/division.cpp/TestHaxe
