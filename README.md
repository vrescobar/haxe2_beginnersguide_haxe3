### "Haxe 2 Beginner's guide" examples and code, translated to HaXe 3

There are only 2 books about haxe in the market and both are already outdated. In addition there are not much more online resources about learning the newest Haxe 3 version at the moment, which is not really something attractive for the newest interested people in the language.

This is a HaXe 3 port of the examples from the book _Haxe 2: Beginner's Guide_ together with some notes I made about the differences with Haxe 3. Those examples make only sense with the reading of the book together, but since all them are haxe 2 only the book results to be not that much useful and actually quite frustrating also because of some typos in the source code.

Since many libraries have changed and several things just do not compile anymore I though about sharing my work with other readers from the book which would like to learn the theory explained there with up to date examples.


### Haxe setup

First download and install haxe from [its webpage](http://haxe.org/download/) following the official instructions.

Install _node webkit_ for javascript and _hxcpp_ library for C++ the targets; neko should work out of the box.

~~~sh
$ haxelib setup
$ haxelib install node-webkit
$ haxelib install hxcpp
~~~

Remember that C++ will need later a C++ compiler such as gcc or g++. If that is a problem for you just follow the examples using neko.

All examples have been tested on Haxe 3.1.3.

### IDE or editor
I would recommend to use the sublime text [plugins](https://github.com/clemos/) or the [HIDE IDE](https://github.com/HaxeIDE/HIDE) which looks to be nice but I couldn't test it yet.

### Usage
Read the book chapters and when you find a source code example or exercice check if the soruce code is in this repository.

### Contributions

Since I am an <strike>absolute n00b</strike> Haxe beginner, I don't expect to make everything error free.
Your feedback is welcome.

### Disclaimer

This repository is part of my learning and training of haxe language and I would like to share it with other readers who cannot fully enjoy the book due the outdated source code or broken examples.


