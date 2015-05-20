#include <hxcpp.h>

#ifndef INCLUDED_Background
#include <Background.h>
#endif
#ifndef INCLUDED_MenuState
#include <MenuState.h>
#endif
#ifndef INCLUDED_Playerchoosing
#include <Playerchoosing.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_FlxGame
#include <flixel/FlxGame.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
#ifndef INCLUDED_flixel_group_FlxGroup
#include <flixel/group/FlxGroup.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_interfaces_IFlxDestroyable
#include <flixel/interfaces/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_ui_FlxButton
#include <flixel/ui/FlxButton.h>
#endif
#ifndef INCLUDED_flixel_ui_FlxTypedButton
#include <flixel/ui/FlxTypedButton.h>
#endif
#ifndef INCLUDED_flixel_util_FlxDestroyUtil
#include <flixel/util/FlxDestroyUtil.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObject
#include <openfl/_legacy/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObjectContainer
#include <openfl/_legacy/display/DisplayObjectContainer.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_InteractiveObject
#include <openfl/_legacy/display/InteractiveObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_Sprite
#include <openfl/_legacy/display/Sprite.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_EventDispatcher
#include <openfl/_legacy/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_IEventDispatcher
#include <openfl/_legacy/events/IEventDispatcher.h>
#endif

Void MenuState_obj::__construct(Dynamic MaxSize)
{
HX_STACK_FRAME("MenuState","new",0xe563b1c4,"MenuState.new","MenuState.hx",15,0xdfbcb22c)
HX_STACK_THIS(this)
HX_STACK_ARG(MaxSize,"MaxSize")
{
	HX_STACK_LINE(15)
	super::__construct(MaxSize);
}
;
	return null();
}

//MenuState_obj::~MenuState_obj() { }

Dynamic MenuState_obj::__CreateEmpty() { return  new MenuState_obj; }
hx::ObjectPtr< MenuState_obj > MenuState_obj::__new(Dynamic MaxSize)
{  hx::ObjectPtr< MenuState_obj > result = new MenuState_obj();
	result->__construct(MaxSize);
	return result;}

Dynamic MenuState_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< MenuState_obj > result = new MenuState_obj();
	result->__construct(inArgs[0]);
	return result;}

Void MenuState_obj::create( ){
{
		HX_STACK_FRAME("MenuState","create",0xe57b7c18,"MenuState.create","MenuState.hx",26,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(27)
		::Background _g = ::Background_obj::__new();		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(27)
		this->background = _g;
		HX_STACK_LINE(28)
		this->background->loadGraphic(HX_CSTRING("assets/images/menuscreen.png"),null(),null(),null(),null(),null());
		HX_STACK_LINE(29)
		this->add(this->background);
		HX_STACK_LINE(31)
		::flixel::ui::FlxButton _g1 = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->clickPlay_dyn());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(31)
		this->buttonPlay = _g1;
		HX_STACK_LINE(32)
		this->buttonPlay->loadGraphic(HX_CSTRING("assets/images/button.png"),null(),null(),null(),null(),null());
		HX_STACK_LINE(33)
		this->buttonPlay->set_x((int)1000);
		HX_STACK_LINE(34)
		this->buttonPlay->set_y((int)1000);
		HX_STACK_LINE(35)
		this->add(this->buttonPlay);
		HX_STACK_LINE(37)
		::flixel::ui::FlxButton _g2 = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->clickoptions_dyn());		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(37)
		this->buttonoptions = _g2;
		HX_STACK_LINE(38)
		this->buttonoptions->loadGraphic(HX_CSTRING("assets/images/button.png"),null(),null(),null(),null(),null());
		HX_STACK_LINE(39)
		this->buttonoptions->set_x((int)0);
		HX_STACK_LINE(40)
		this->buttonoptions->set_y((int)0);
		HX_STACK_LINE(41)
		this->add(this->buttonoptions);
		HX_STACK_LINE(43)
		::flixel::ui::FlxButton _g3 = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->clickcredits_dyn());		HX_STACK_VAR(_g3,"_g3");
		HX_STACK_LINE(43)
		this->buttoncredits = _g3;
		HX_STACK_LINE(44)
		this->buttoncredits->loadGraphic(HX_CSTRING("assets/images/button.png"),null(),null(),null(),null(),null());
		HX_STACK_LINE(45)
		this->buttoncredits->set_x((int)500);
		HX_STACK_LINE(46)
		this->buttoncredits->set_y((int)500);
		HX_STACK_LINE(47)
		this->add(this->buttoncredits);
		HX_STACK_LINE(49)
		this->super::create();
	}
return null();
}


Void MenuState_obj::destroy( ){
{
		HX_STACK_FRAME("MenuState","destroy",0xf9ac905e,"MenuState.destroy","MenuState.hx",57,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(58)
		this->super::destroy();
		HX_STACK_LINE(59)
		::flixel::ui::FlxButton _g = ::flixel::util::FlxDestroyUtil_obj::destroy(this->buttonPlay);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(59)
		this->buttonPlay = _g;
	}
return null();
}


Void MenuState_obj::clickPlay( ){
{
		HX_STACK_FRAME("MenuState","clickPlay",0x5f6a9ec0,"MenuState.clickPlay","MenuState.hx",64,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(64)
		::flixel::FlxState State = ::Playerchoosing_obj::__new(null());		HX_STACK_VAR(State,"State");
		HX_STACK_LINE(64)
		::flixel::FlxG_obj::game->_requestedState = State;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(MenuState_obj,clickPlay,(void))

Void MenuState_obj::clickoptions( ){
{
		HX_STACK_FRAME("MenuState","clickoptions",0x165a2232,"MenuState.clickoptions","MenuState.hx",69,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(69)
		::flixel::FlxState State = ::Playerchoosing_obj::__new(null());		HX_STACK_VAR(State,"State");
		HX_STACK_LINE(69)
		::flixel::FlxG_obj::game->_requestedState = State;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(MenuState_obj,clickoptions,(void))

Void MenuState_obj::clickcredits( ){
{
		HX_STACK_FRAME("MenuState","clickcredits",0x49b9fcee,"MenuState.clickcredits","MenuState.hx",74,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(74)
		::flixel::FlxState State = ::Playerchoosing_obj::__new(null());		HX_STACK_VAR(State,"State");
		HX_STACK_LINE(74)
		::flixel::FlxG_obj::game->_requestedState = State;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(MenuState_obj,clickcredits,(void))

Void MenuState_obj::update( ){
{
		HX_STACK_FRAME("MenuState","update",0xf0719b25,"MenuState.update","MenuState.hx",83,0xdfbcb22c)
		HX_STACK_THIS(this)
		HX_STACK_LINE(83)
		this->super::update();
	}
return null();
}



MenuState_obj::MenuState_obj()
{
}

void MenuState_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(MenuState);
	HX_MARK_MEMBER_NAME(buttonPlay,"buttonPlay");
	HX_MARK_MEMBER_NAME(buttoncredits,"buttoncredits");
	HX_MARK_MEMBER_NAME(buttonoptions,"buttonoptions");
	HX_MARK_MEMBER_NAME(background,"background");
	::flixel::FlxState_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void MenuState_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(buttonPlay,"buttonPlay");
	HX_VISIT_MEMBER_NAME(buttoncredits,"buttoncredits");
	HX_VISIT_MEMBER_NAME(buttonoptions,"buttonoptions");
	HX_VISIT_MEMBER_NAME(background,"background");
	::flixel::FlxState_obj::__Visit(HX_VISIT_ARG);
}

Dynamic MenuState_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return create_dyn(); }
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"destroy") ) { return destroy_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"clickPlay") ) { return clickPlay_dyn(); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"buttonPlay") ) { return buttonPlay; }
		if (HX_FIELD_EQ(inName,"background") ) { return background; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"clickoptions") ) { return clickoptions_dyn(); }
		if (HX_FIELD_EQ(inName,"clickcredits") ) { return clickcredits_dyn(); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"buttoncredits") ) { return buttoncredits; }
		if (HX_FIELD_EQ(inName,"buttonoptions") ) { return buttonoptions; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic MenuState_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 10:
		if (HX_FIELD_EQ(inName,"buttonPlay") ) { buttonPlay=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
		if (HX_FIELD_EQ(inName,"background") ) { background=inValue.Cast< ::Background >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"buttoncredits") ) { buttoncredits=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
		if (HX_FIELD_EQ(inName,"buttonoptions") ) { buttonoptions=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void MenuState_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("buttonPlay"));
	outFields->push(HX_CSTRING("buttoncredits"));
	outFields->push(HX_CSTRING("buttonoptions"));
	outFields->push(HX_CSTRING("background"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(MenuState_obj,buttonPlay),HX_CSTRING("buttonPlay")},
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(MenuState_obj,buttoncredits),HX_CSTRING("buttoncredits")},
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(MenuState_obj,buttonoptions),HX_CSTRING("buttonoptions")},
	{hx::fsObject /*::Background*/ ,(int)offsetof(MenuState_obj,background),HX_CSTRING("background")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("buttonPlay"),
	HX_CSTRING("buttoncredits"),
	HX_CSTRING("buttonoptions"),
	HX_CSTRING("background"),
	HX_CSTRING("create"),
	HX_CSTRING("destroy"),
	HX_CSTRING("clickPlay"),
	HX_CSTRING("clickoptions"),
	HX_CSTRING("clickcredits"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(MenuState_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(MenuState_obj::__mClass,"__mClass");
};

#endif

Class MenuState_obj::__mClass;

void MenuState_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("MenuState"), hx::TCanCast< MenuState_obj> ,sStaticFields,sMemberFields,
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

void MenuState_obj::__boot()
{
}

