#include <hxcpp.h>

#ifndef INCLUDED_Doorentity
#include <Doorentity.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxDestroyable
#include <flixel/interfaces/IFlxDestroyable.h>
#endif

Void Doorentity_obj::__construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y)
{
HX_STACK_FRAME("Doorentity","new",0x7f705ca3,"Doorentity.new","Doorentity.hx",13,0x4573482d)
HX_STACK_THIS(this)
HX_STACK_ARG(__o_X,"X")
HX_STACK_ARG(__o_Y,"Y")
Float X = __o_X.Default(0);
Float Y = __o_Y.Default(0);
{
	HX_STACK_LINE(14)
	super::__construct(X,Y,null());
	HX_STACK_LINE(15)
	this->loadGraphic(HX_CSTRING("assets/images/door.png"),null(),null(),null(),null(),null());
}
;
	return null();
}

//Doorentity_obj::~Doorentity_obj() { }

Dynamic Doorentity_obj::__CreateEmpty() { return  new Doorentity_obj; }
hx::ObjectPtr< Doorentity_obj > Doorentity_obj::__new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y)
{  hx::ObjectPtr< Doorentity_obj > result = new Doorentity_obj();
	result->__construct(__o_X,__o_Y);
	return result;}

Dynamic Doorentity_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Doorentity_obj > result = new Doorentity_obj();
	result->__construct(inArgs[0],inArgs[1]);
	return result;}


Doorentity_obj::Doorentity_obj()
{
}

Dynamic Doorentity_obj::__Field(const ::String &inName,bool inCallProp)
{
	return super::__Field(inName,inCallProp);
}

Dynamic Doorentity_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void Doorentity_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Doorentity_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Doorentity_obj::__mClass,"__mClass");
};

#endif

Class Doorentity_obj::__mClass;

void Doorentity_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Doorentity"), hx::TCanCast< Doorentity_obj> ,sStaticFields,sMemberFields,
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

void Doorentity_obj::__boot()
{
}

