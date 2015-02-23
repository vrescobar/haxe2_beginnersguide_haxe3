#ifndef INCLUDED_Example
#define INCLUDED_Example

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS0(Example)


class HXCPP_CLASS_ATTRIBUTES  Example_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef Example_obj OBJ_;
		Example_obj();
		Void __construct();

	public:
		inline void *operator new( size_t inSize, bool inContainer=false)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< Example_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Example_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		::String __ToString() const { return HX_CSTRING("Example"); }

		static Void f( ::String s);
		static Dynamic f_dyn();

		static Void main( );
		static Dynamic main_dyn();

};


#endif /* INCLUDED_Example */ 
