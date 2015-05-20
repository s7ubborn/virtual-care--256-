#include <hxcpp.h>

#ifndef INCLUDED_FSM
#include <FSM.h>
#endif

Void FSM_obj::__construct(Dynamic InitState)
{
HX_STACK_FRAME("FSM","new",0x0313b752,"FSM.new","FSM.hx",13,0xfa46185e)
HX_STACK_THIS(this)
HX_STACK_ARG(InitState,"InitState")
{
	HX_STACK_LINE(13)
	this->activeState = InitState;
}
;
	return null();
}

//FSM_obj::~FSM_obj() { }

Dynamic FSM_obj::__CreateEmpty() { return  new FSM_obj; }
hx::ObjectPtr< FSM_obj > FSM_obj::__new(Dynamic InitState)
{  hx::ObjectPtr< FSM_obj > result = new FSM_obj();
	result->__construct(InitState);
	return result;}

Dynamic FSM_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< FSM_obj > result = new FSM_obj();
	result->__construct(inArgs[0]);
	return result;}

Void FSM_obj::update( ){
{
		HX_STACK_FRAME("FSM","update",0x2caf0257,"FSM.update","FSM.hx",18,0xfa46185e)
		HX_STACK_THIS(this)
		HX_STACK_LINE(18)
		if (((this->activeState_dyn() != null()))){
			HX_STACK_LINE(20)
			this->activeState();
		}
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(FSM_obj,update,(void))


FSM_obj::FSM_obj()
{
}

void FSM_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FSM);
	HX_MARK_MEMBER_NAME(activeState,"activeState");
	HX_MARK_END_CLASS();
}

void FSM_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(activeState,"activeState");
}

Dynamic FSM_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"activeState") ) { return activeState; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic FSM_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"activeState") ) { activeState=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FSM_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*Dynamic*/ ,(int)offsetof(FSM_obj,activeState),HX_CSTRING("activeState")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("activeState"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(FSM_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(FSM_obj::__mClass,"__mClass");
};

#endif

Class FSM_obj::__mClass;

void FSM_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("FSM"), hx::TCanCast< FSM_obj> ,sStaticFields,sMemberFields,
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

void FSM_obj::__boot()
{
}

