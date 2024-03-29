#include <hxcpp.h>

#ifndef INCLUDED_openfl__legacy_display_DirectRenderer
#include <openfl/_legacy/display/DirectRenderer.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObject
#include <openfl/_legacy/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_OpenGLView
#include <openfl/_legacy/display/OpenGLView.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_EventDispatcher
#include <openfl/_legacy/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_IEventDispatcher
#include <openfl/_legacy/events/IEventDispatcher.h>
#endif
namespace openfl{
namespace _legacy{
namespace display{

Void OpenGLView_obj::__construct()
{
HX_STACK_FRAME("openfl._legacy.display.OpenGLView","new",0x99376116,"openfl._legacy.display.OpenGLView.new","openfl/_legacy/display/OpenGLView.hx",19,0xa91fb237)
HX_STACK_THIS(this)
{
	HX_STACK_LINE(19)
	super::__construct(HX_CSTRING("OpenGLView"));
}
;
	return null();
}

//OpenGLView_obj::~OpenGLView_obj() { }

Dynamic OpenGLView_obj::__CreateEmpty() { return  new OpenGLView_obj; }
hx::ObjectPtr< OpenGLView_obj > OpenGLView_obj::__new()
{  hx::ObjectPtr< OpenGLView_obj > result = new OpenGLView_obj();
	result->__construct();
	return result;}

Dynamic OpenGLView_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< OpenGLView_obj > result = new OpenGLView_obj();
	result->__construct();
	return result;}

::String OpenGLView_obj::CONTEXT_LOST;

::String OpenGLView_obj::CONTEXT_RESTORED;

bool OpenGLView_obj::isSupported;

bool OpenGLView_obj::get_isSupported( ){
	HX_STACK_FRAME("openfl._legacy.display.OpenGLView","get_isSupported",0x7340fe31,"openfl._legacy.display.OpenGLView.get_isSupported","openfl/_legacy/display/OpenGLView.hx",33,0xa91fb237)
	HX_STACK_LINE(33)
	return true;
}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(OpenGLView_obj,get_isSupported,return )


OpenGLView_obj::OpenGLView_obj()
{
}

Dynamic OpenGLView_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"isSupported") ) { return inCallProp ? get_isSupported() : isSupported; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"get_isSupported") ) { return get_isSupported_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic OpenGLView_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"isSupported") ) { isSupported=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void OpenGLView_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("CONTEXT_LOST"),
	HX_CSTRING("CONTEXT_RESTORED"),
	HX_CSTRING("isSupported"),
	HX_CSTRING("get_isSupported"),
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *sMemberStorageInfo = 0;
#endif

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(OpenGLView_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(OpenGLView_obj::CONTEXT_LOST,"CONTEXT_LOST");
	HX_MARK_MEMBER_NAME(OpenGLView_obj::CONTEXT_RESTORED,"CONTEXT_RESTORED");
	HX_MARK_MEMBER_NAME(OpenGLView_obj::isSupported,"isSupported");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(OpenGLView_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(OpenGLView_obj::CONTEXT_LOST,"CONTEXT_LOST");
	HX_VISIT_MEMBER_NAME(OpenGLView_obj::CONTEXT_RESTORED,"CONTEXT_RESTORED");
	HX_VISIT_MEMBER_NAME(OpenGLView_obj::isSupported,"isSupported");
};

#endif

Class OpenGLView_obj::__mClass;

void OpenGLView_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("openfl._legacy.display.OpenGLView"), hx::TCanCast< OpenGLView_obj> ,sStaticFields,sMemberFields,
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

void OpenGLView_obj::__boot()
{
	CONTEXT_LOST= HX_CSTRING("glcontextlost");
	CONTEXT_RESTORED= HX_CSTRING("glcontextrestored");
}

} // end namespace openfl
} // end namespace _legacy
} // end namespace display
