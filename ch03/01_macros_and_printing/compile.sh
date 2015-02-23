mkdir -p build/
haxe -main Example -neko build/macroGreeting.n
haxe -main Example -cpp build/macroGreeting.cpp
haxe -main Example -java build/macroGreeting.java

