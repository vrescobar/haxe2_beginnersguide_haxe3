/* Differences with the book: actually in Haxe 3 the print interfaces have been unified under 'sys'
and now all the language specific things related to the system (such as IO) are managed by Haxe.

So just to test the macro example I print the name of the identifier to test if it is working.

I tried the remap but I couldn't make it work, and it is not appearing anymore in the
haxe 3 documentation.
*/

class Example {
	static function f (s: String): Void { 
		Sys.println("Hello from "+s);
	}
	public static function main(): Void{
		var language:String;
		#if java
		language = "java";
		#elseif cpp
		language = "cpp";
		#else
		language = "neko (probably)";
		#end
		f(language);
	}
}
