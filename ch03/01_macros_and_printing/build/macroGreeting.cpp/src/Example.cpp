#include <hxcpp.h>

#ifndef INCLUDED_Date
#include <Date.h>
#endif
#ifndef INCLUDED_Example
#include <Example.h>
#endif
#ifndef INCLUDED_Sys
#include <Sys.h>
#endif

Void Example_obj::__construct()
{
	return null();
}

//Example_obj::~Example_obj() { }

Dynamic Example_obj::__CreateEmpty() { return  new Example_obj; }
hx::ObjectPtr< Example_obj > Example_obj::__new()
{  hx::ObjectPtr< Example_obj > result = new Example_obj();
	result->__construct();
	return result;}

Dynamic Example_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Example_obj > result = new Example_obj();
	result->__construct();
	return result;}

Void Example_obj::f( ::String s){
{
		HX_STACK_FRAME("Example","f",0xc5cfef02,"Example.f","Example.hx",12,0x502134f4)
		HX_STACK_ARG(s,"s")
		HX_STACK_LINE(13)
		::Date date = ::Date_obj::now();		HX_STACK_VAR(date,"date");
		HX_STACK_LINE(15)
		int _g = date->getHours();		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(15)
		::String _g1 = (((HX_CSTRING("Hello from ") + s) + HX_CSTRING(". Time is: ")) + _g);		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(15)
		::String _g2 = (_g1 + HX_CSTRING(":"));		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(15)
		int _g3 = date->getMinutes();		HX_STACK_VAR(_g3,"_g3");
		HX_STACK_LINE(15)
		::String _g4 = (_g2 + _g3);		HX_STACK_VAR(_g4,"_g4");
		HX_STACK_LINE(15)
		::String prs = (_g4 + HX_CSTRING(". "));		HX_STACK_VAR(prs,"prs");
		HX_STACK_LINE(17)
		::Sys_obj::println(prs);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Example_obj,f,(void))

Void Example_obj::main( ){
{
		HX_STACK_FRAME("Example","main",0x85cc531d,"Example.main","Example.hx",22,0x502134f4)
		HX_STACK_LINE(23)
		::String language;		HX_STACK_VAR(language,"language");
		HX_STACK_LINE(27)
		language = HX_CSTRING("cpp");
		HX_STACK_LINE(33)
		::Example_obj::f(language);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(Example_obj,main,(void))


Example_obj::Example_obj()
{
}

Dynamic Example_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 1:
		if (HX_FIELD_EQ(inName,"f") ) { return f_dyn(); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"main") ) { return main_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Example_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void Example_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("f"),
	HX_CSTRING("main"),
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Example_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Example_obj::__mClass,"__mClass");
};

#endif

Class Example_obj::__mClass;

void Example_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Example"), hx::TCanCast< Example_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , sVisitStatics
#endif
#ifdef HXCPP_SCRIPTABLE
    , sMemberStorageInfo
#endif
);
}

void Example_obj::__boot()
{
}

