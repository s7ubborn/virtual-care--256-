#include <hxcpp.h>

#ifndef INCLUDED_Main
#include <Main.h>
#endif
#ifndef INCLUDED_Overworld
#include <Overworld.h>
#endif
#ifndef INCLUDED_Player
#include <Player.h>
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

Void Playerchoosing_obj::__construct(Dynamic MaxSize)
{
HX_STACK_FRAME("Playerchoosing","new",0x86f29fc7,"Playerchoosing.new","Playerchoosing.hx",15,0xb3b0b589)
HX_STACK_THIS(this)
HX_STACK_ARG(MaxSize,"MaxSize")
{
	HX_STACK_LINE(22)
	this->playerChosen = (int)2;
	HX_STACK_LINE(15)
	super::__construct(MaxSize);
}
;
	return null();
}

//Playerchoosing_obj::~Playerchoosing_obj() { }

Dynamic Playerchoosing_obj::__CreateEmpty() { return  new Playerchoosing_obj; }
hx::ObjectPtr< Playerchoosing_obj > Playerchoosing_obj::__new(Dynamic MaxSize)
{  hx::ObjectPtr< Playerchoosing_obj > result = new Playerchoosing_obj();
	result->__construct(MaxSize);
	return result;}

Dynamic Playerchoosing_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Playerchoosing_obj > result = new Playerchoosing_obj();
	result->__construct(inArgs[0]);
	return result;}

Void Playerchoosing_obj::create( ){
{
		HX_STACK_FRAME("Playerchoosing","create",0x8370f1f5,"Playerchoosing.create","Playerchoosing.hx",25,0xb3b0b589)
		HX_STACK_THIS(this)
		HX_STACK_LINE(26)
		::flixel::ui::FlxButton _g = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->chosenAnneloes_dyn());		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(26)
		this->buttonAnneloes = _g;
		HX_STACK_LINE(27)
		this->buttonAnneloes->set_x(((Float(::flixel::FlxG_obj::width) / Float((int)2)) - (int)1536));
		HX_STACK_LINE(28)
		this->buttonAnneloes->set_y((Float(::flixel::FlxG_obj::height) / Float((int)4)));
		HX_STACK_LINE(29)
		this->buttonAnneloes->loadGraphic(HX_CSTRING("assets/images/buttonAnneloes.png"),false,null(),null(),null(),null());
		HX_STACK_LINE(30)
		this->add(this->buttonAnneloes);
		HX_STACK_LINE(32)
		::flixel::ui::FlxButton _g1 = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->chosenJoep_dyn());		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(32)
		this->buttonJoep = _g1;
		HX_STACK_LINE(33)
		this->buttonJoep->set_x(((Float(::flixel::FlxG_obj::width) / Float((int)2)) + (int)512));
		HX_STACK_LINE(34)
		this->buttonJoep->set_y((Float(::flixel::FlxG_obj::height) / Float((int)4)));
		HX_STACK_LINE(35)
		this->buttonJoep->loadGraphic(HX_CSTRING("assets/images/buttonJoep.png"),false,null(),null(),null(),null());
		HX_STACK_LINE(36)
		this->add(this->buttonJoep);
		HX_STACK_LINE(38)
		::flixel::ui::FlxButton _g2 = ::flixel::ui::FlxButton_obj::__new((int)0,(int)0,HX_CSTRING(""),this->startGame_dyn());		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(38)
		this->buttonSelect = _g2;
		HX_STACK_LINE(39)
		this->buttonSelect->set_x(((Float(::flixel::FlxG_obj::width) / Float((int)2)) - (int)256));
		HX_STACK_LINE(40)
		this->buttonSelect->set_y(((Float(::flixel::FlxG_obj::height) / Float((int)4)) * (int)3));
		HX_STACK_LINE(41)
		this->buttonSelect->loadGraphic(HX_CSTRING("assets/images/button.png"),null(),null(),null(),null(),null());
		HX_STACK_LINE(42)
		this->add(this->buttonSelect);
		HX_STACK_LINE(44)
		this->super::create();
	}
return null();
}


Void Playerchoosing_obj::chosenAnneloes( ){
{
		HX_STACK_FRAME("Playerchoosing","chosenAnneloes",0x7485ebe0,"Playerchoosing.chosenAnneloes","Playerchoosing.hx",49,0xb3b0b589)
		HX_STACK_THIS(this)
		HX_STACK_LINE(49)
		this->playerChosen = (int)1;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Playerchoosing_obj,chosenAnneloes,(void))

Void Playerchoosing_obj::chosenJoep( ){
{
		HX_STACK_FRAME("Playerchoosing","chosenJoep",0xe9f570bb,"Playerchoosing.chosenJoep","Playerchoosing.hx",54,0xb3b0b589)
		HX_STACK_THIS(this)
		HX_STACK_LINE(54)
		this->playerChosen = (int)0;
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Playerchoosing_obj,chosenJoep,(void))

Void Playerchoosing_obj::startGame( ){
{
		HX_STACK_FRAME("Playerchoosing","startGame",0xe499441b,"Playerchoosing.startGame","Playerchoosing.hx",58,0xb3b0b589)
		HX_STACK_THIS(this)
		HX_STACK_LINE(59)
		if (((this->playerChosen == (int)0))){
			HX_STACK_LINE(61)
			::flixel::FlxState State = ::Overworld_obj::__new(this->playerChosen);		HX_STACK_VAR(State,"State");
			HX_STACK_LINE(61)
			::flixel::FlxG_obj::game->_requestedState = State;
		}
		HX_STACK_LINE(63)
		if (((this->playerChosen == (int)1))){
			HX_STACK_LINE(65)
			::flixel::FlxState State = ::Overworld_obj::__new(this->playerChosen);		HX_STACK_VAR(State,"State");
			HX_STACK_LINE(65)
			::flixel::FlxG_obj::game->_requestedState = State;
		}
		else{
		}
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Playerchoosing_obj,startGame,(void))

Void Playerchoosing_obj::destroy( ){
{
		HX_STACK_FRAME("Playerchoosing","destroy",0x927e3be1,"Playerchoosing.destroy","Playerchoosing.hx",74,0xb3b0b589)
		HX_STACK_THIS(this)
		HX_STACK_LINE(75)
		this->super::destroy();
		HX_STACK_LINE(76)
		::flixel::ui::FlxButton _g = ::flixel::util::FlxDestroyUtil_obj::destroy(this->buttonAnneloes);		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(76)
		this->buttonAnneloes = _g;
		HX_STACK_LINE(77)
		::flixel::ui::FlxButton _g1 = ::flixel::util::FlxDestroyUtil_obj::destroy(this->buttonJoep);		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(77)
		this->buttonJoep = _g1;
		HX_STACK_LINE(78)
		::flixel::ui::FlxButton _g2 = ::flixel::util::FlxDestroyUtil_obj::destroy(this->buttonSelect);		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(78)
		this->buttonSelect = _g2;
	}
return null();
}



Playerchoosing_obj::Playerchoosing_obj()
{
}

void Playerchoosing_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Playerchoosing);
	HX_MARK_MEMBER_NAME(buttonSelect,"buttonSelect");
	HX_MARK_MEMBER_NAME(buttonJoep,"buttonJoep");
	HX_MARK_MEMBER_NAME(buttonAnneloes,"buttonAnneloes");
	HX_MARK_MEMBER_NAME(mainClass,"mainClass");
	HX_MARK_MEMBER_NAME(player,"player");
	HX_MARK_MEMBER_NAME(playerChosen,"playerChosen");
	::flixel::FlxState_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Playerchoosing_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(buttonSelect,"buttonSelect");
	HX_VISIT_MEMBER_NAME(buttonJoep,"buttonJoep");
	HX_VISIT_MEMBER_NAME(buttonAnneloes,"buttonAnneloes");
	HX_VISIT_MEMBER_NAME(mainClass,"mainClass");
	HX_VISIT_MEMBER_NAME(player,"player");
	HX_VISIT_MEMBER_NAME(playerChosen,"playerChosen");
	::flixel::FlxState_obj::__Visit(HX_VISIT_ARG);
}

Dynamic Playerchoosing_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"player") ) { return player; }
		if (HX_FIELD_EQ(inName,"create") ) { return create_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"destroy") ) { return destroy_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"mainClass") ) { return mainClass; }
		if (HX_FIELD_EQ(inName,"startGame") ) { return startGame_dyn(); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"buttonJoep") ) { return buttonJoep; }
		if (HX_FIELD_EQ(inName,"chosenJoep") ) { return chosenJoep_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"buttonSelect") ) { return buttonSelect; }
		if (HX_FIELD_EQ(inName,"playerChosen") ) { return playerChosen; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"buttonAnneloes") ) { return buttonAnneloes; }
		if (HX_FIELD_EQ(inName,"chosenAnneloes") ) { return chosenAnneloes_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Playerchoosing_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"player") ) { player=inValue.Cast< ::Player >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"mainClass") ) { mainClass=inValue.Cast< ::Main >(); return inValue; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"buttonJoep") ) { buttonJoep=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"buttonSelect") ) { buttonSelect=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
		if (HX_FIELD_EQ(inName,"playerChosen") ) { playerChosen=inValue.Cast< int >(); return inValue; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"buttonAnneloes") ) { buttonAnneloes=inValue.Cast< ::flixel::ui::FlxButton >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Playerchoosing_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("buttonSelect"));
	outFields->push(HX_CSTRING("buttonJoep"));
	outFields->push(HX_CSTRING("buttonAnneloes"));
	outFields->push(HX_CSTRING("mainClass"));
	outFields->push(HX_CSTRING("player"));
	outFields->push(HX_CSTRING("playerChosen"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(Playerchoosing_obj,buttonSelect),HX_CSTRING("buttonSelect")},
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(Playerchoosing_obj,buttonJoep),HX_CSTRING("buttonJoep")},
	{hx::fsObject /*::flixel::ui::FlxButton*/ ,(int)offsetof(Playerchoosing_obj,buttonAnneloes),HX_CSTRING("buttonAnneloes")},
	{hx::fsObject /*::Main*/ ,(int)offsetof(Playerchoosing_obj,mainClass),HX_CSTRING("mainClass")},
	{hx::fsObject /*::Player*/ ,(int)offsetof(Playerchoosing_obj,player),HX_CSTRING("player")},
	{hx::fsInt,(int)offsetof(Playerchoosing_obj,playerChosen),HX_CSTRING("playerChosen")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("buttonSelect"),
	HX_CSTRING("buttonJoep"),
	HX_CSTRING("buttonAnneloes"),
	HX_CSTRING("mainClass"),
	HX_CSTRING("player"),
	HX_CSTRING("playerChosen"),
	HX_CSTRING("create"),
	HX_CSTRING("chosenAnneloes"),
	HX_CSTRING("chosenJoep"),
	HX_CSTRING("startGame"),
	HX_CSTRING("destroy"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Playerchoosing_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Playerchoosing_obj::__mClass,"__mClass");
};

#endif

Class Playerchoosing_obj::__mClass;

void Playerchoosing_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Playerchoosing"), hx::TCanCast< Playerchoosing_obj> ,sStaticFields,sMemberFields,
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

void Playerchoosing_obj::__boot()
{
}

