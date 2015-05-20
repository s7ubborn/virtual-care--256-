#include <hxcpp.h>

#ifndef INCLUDED_Elevatorentity
#include <Elevatorentity.h>
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

Void Elevatorentity_obj::__construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y)
{
HX_STACK_FRAME("Elevatorentity","new",0x5f9d18a3,"Elevatorentity.new","Elevatorentity.hx",13,0x4c320c2d)
HX_STACK_THIS(this)
HX_STACK_ARG(__o_X,"X")
HX_STACK_ARG(__o_Y,"Y")
Float X = __o_X.Default(0);
Float Y = __o_Y.Default(0);
{
	HX_STACK_LINE(14)
	super::__construct(X,Y,null());
	HX_STACK_LINE(15)
	this->loadGraphic(HX_CSTRING("assets/images/elevator.png"),null(),null(),null(),null(),null());
}
;
	return null();
}

//Elevatorentity_obj::~Elevatorentity_obj() { }

Dynamic Elevatorentity_obj::__CreateEmpty() { return  new Elevatorentity_obj; }
hx::ObjectPtr< Elevatorentity_obj > Elevatorentity_obj::__new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y)
{  hx::ObjectPtr< Elevatorentity_obj > result = new Elevatorentity_obj();
	result->__construct(__o_X,__o_Y);
	return result;}

Dynamic Elevatorentity_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Elevatorentity_obj > result = new Elevatorentity_obj();
	result->__construct(inArgs[0],inArgs[1]);
	return result;}


Elevatorentity_obj::Elevatorentity_obj()
{
}

Dynamic Elevatorentity_obj::__Field(const ::String &inName,bool inCallProp)
{
	return super::__Field(inName,inCallProp);
}

Dynamic Elevatorentity_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void Elevatorentity_obj::__GetFields(Array< ::String> &outFields)
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
	HX_MARK_MEMBER_NAME(Elevatorentity_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Elevatorentity_obj::__mClass,"__mClass");
};

#endif

Class Elevatorentity_obj::__mClass;

void Elevatorentity_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Elevatorentity"), hx::TCanCast< Elevatorentity_obj> ,sStaticFields,sMemberFields,
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

void Elevatorentity_obj::__boot()
{
}

