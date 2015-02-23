package haxe.root;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class Example extends haxe.lang.HxObject
{
	public static void main(String[] args)
	{
		main();
	}
	public    Example(haxe.lang.EmptyObject empty)
	{
		{
		}
		
	}
	
	
	public    Example()
	{
		haxe.root.Example.__hx_ctor__Example(this);
	}
	
	
	public static   void __hx_ctor__Example(haxe.root.Example __temp_me4)
	{
		{
		}
		
	}
	
	
	public static   void f(java.lang.String s)
	{
		haxe.root.Date date = haxe.root.Date.now();
		java.lang.String prs = ( ( ( ( ( ( "Hello from " + s ) + ". Time is: " ) + date.date.getHours() ) + ":" ) + date.date.getMinutes() ) + ". " );
		java.lang.System.out.println(((java.lang.Object) (prs) ));
	}
	
	
	public static   void main()
	{
		java.lang.String language = null;
		language = "java";
		haxe.root.Example.f(language);
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new haxe.root.Example(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new haxe.root.Example();
	}
	
	
}


