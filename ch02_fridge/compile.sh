mkdir -p build/
haxe -cp src/ -main myfridge.MyFridge -neko build/fridge.n
haxe -cp src/ -main myfridge.MyFridge -cpp build/fridge.cpp

# Open
# neko build/fridge.n
# or for CPP
# ./build/fridge.cpp/MyFridge
