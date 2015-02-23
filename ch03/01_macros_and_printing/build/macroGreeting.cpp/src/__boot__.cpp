#include <hxcpp.h>

#include <haxe/io/Eof.h>
#include <Sys.h>
#include <Std.h>
#include <Example.h>
#include <Date.h>

void __files__boot();

void __boot_all()
{
__files__boot();
hx::RegisterResources( hx::GetResources() );
::haxe::io::Eof_obj::__register();
::Sys_obj::__register();
::Std_obj::__register();
::Example_obj::__register();
::Date_obj::__register();
::Date_obj::__boot();
::Example_obj::__boot();
::Std_obj::__boot();
::Sys_obj::__boot();
::haxe::io::Eof_obj::__boot();
}

