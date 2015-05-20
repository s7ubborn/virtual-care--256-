#include <hxcpp.h>

#ifndef INCLUDED_Background
#include <Background.h>
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

Void Background_obj::__construct()
{
HX_STACK_FRAME("Background","new",0xb2525800,"Background.new","Background.hx",14,0xd9c4a770)
HX_STACK_THIS(this)
{
	HX_STACK_LINE(14)
	super::__construct(null(),null(),null());
}
;
	return null();
}

//Background_obj::~Background_obj() { }

Dynamic Background_obj::__CreateEmpty() { return  new Background_obj; }
hx::ObjectPtr< Background_obj > Background_obj::__new()
{  hx::ObjectPtr< Background_obj > result = new Background_obj();
	result->__construct();
	return result;}

Dynamic Background_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Background_obj > result = new Background_obj();
	result->__construct();
	return result;}

Void Background_obj::menuscreen( ){
{
		HX_STACK_FRAME("Background","menuscreen",0xf8c4aeab,"Background.menuscreen","Background.hx",19,0xd9c4a770)
		HX_STACK_THIS(this)
		HX_STACK_LINE(19)
		this->loadGraphic(HX_CSTRING("assets/images/menuscreen.png"),null(),null(),null(),null(),null());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Background_obj,menuscreen,(void))


Background_obj::Background_obj()
{
}

Dynamic Background_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 10:
		if (HX_FIELD_EQ(inName,"menuscreen") ) { return menuscreen_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Background_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void Background_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("menuscreen"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Background_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Background_obj::__mClass,"__mClass");
};

#endif

Class Background_obj::__mClass;

void Background_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Background"), hx::TCanCast< Background_obj> ,sStaticFields,sMemberFields,
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

void Background_obj::__boot()
{
}

