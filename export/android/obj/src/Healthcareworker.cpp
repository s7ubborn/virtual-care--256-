#include <hxcpp.h>

#ifndef INCLUDED_FSM
#include <FSM.h>
#endif
#ifndef INCLUDED_Healthcareworker
#include <Healthcareworker.h>
#endif
#ifndef INCLUDED_IMap
#include <IMap.h>
#endif
#ifndef INCLUDED_Overworld
#include <Overworld.h>
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
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
#ifndef INCLUDED_flixel_animation_FlxAnimationController
#include <flixel/animation/FlxAnimationController.h>
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
#ifndef INCLUDED_flixel_interfaces_IFlxPooled
#include <flixel/interfaces/IFlxPooled.h>
#endif
#ifndef INCLUDED_flixel_util_FlxPoint
#include <flixel/util/FlxPoint.h>
#endif
#ifndef INCLUDED_flixel_util_FlxPool_flixel_util_FlxPoint
#include <flixel/util/FlxPool_flixel_util_FlxPoint.h>
#endif
#ifndef INCLUDED_flixel_util_FlxRandom
#include <flixel/util/FlxRandom.h>
#endif
#ifndef INCLUDED_haxe_ds_IntMap
#include <haxe/ds/IntMap.h>
#endif
#ifndef INCLUDED_hxMath
#include <hxMath.h>
#endif

Void Healthcareworker_obj::__construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,int Htype)
{
HX_STACK_FRAME("Healthcareworker","new",0x76e1c33d,"Healthcareworker.new","Healthcareworker.hx",14,0xaa6f32d3)
HX_STACK_THIS(this)
HX_STACK_ARG(__o_X,"X")
HX_STACK_ARG(__o_Y,"Y")
HX_STACK_ARG(Htype,"Htype")
Float X = __o_X.Default(0);
Float Y = __o_Y.Default(0);
{
	HX_STACK_LINE(16)
	this->speed = (int)750;
	HX_STACK_LINE(25)
	super::__construct(X,Y,null());
	HX_STACK_LINE(26)
	this->htype = Htype;
	HX_STACK_LINE(27)
	::String _g = ::Std_obj::string(this->htype);		HX_STACK_VAR(_g,"_g");
	HX_STACK_LINE(27)
	::String _g1 = (HX_CSTRING("assets/images/player-") + _g);		HX_STACK_VAR(_g1,"_g1");
	HX_STACK_LINE(27)
	::String _g2 = (_g1 + HX_CSTRING(".png"));		HX_STACK_VAR(_g2,"_g2");
	HX_STACK_LINE(27)
	this->loadGraphic(_g2,true,(int)512,(int)512,null(),null());
	struct _Function_1_1{
		inline static Dynamic Block( ){
			HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Healthcareworker.hx",28,0xaa6f32d3)
			{
				hx::Anon __result = hx::Anon_obj::Create();
				__result->Add(HX_CSTRING("x") , true,false);
				__result->Add(HX_CSTRING("y") , false,false);
				return __result;
			}
			return null();
		}
	};
	HX_STACK_LINE(28)
	this->_facingFlip->set((int)1,_Function_1_1::Block());
	struct _Function_1_2{
		inline static Dynamic Block( ){
			HX_STACK_FRAME("*","closure",0x5bdab937,"*.closure","Healthcareworker.hx",29,0xaa6f32d3)
			{
				hx::Anon __result = hx::Anon_obj::Create();
				__result->Add(HX_CSTRING("x") , false,false);
				__result->Add(HX_CSTRING("y") , false,false);
				return __result;
			}
			return null();
		}
	};
	HX_STACK_LINE(29)
	this->_facingFlip->set((int)16,_Function_1_2::Block());
	HX_STACK_LINE(30)
	this->animation->add(HX_CSTRING("d"),Array_obj< int >::__new().Add((int)1).Add((int)0).Add((int)2).Add((int)0),(int)5,false);
	HX_STACK_LINE(31)
	this->animation->add(HX_CSTRING("u"),Array_obj< int >::__new().Add((int)4).Add((int)3).Add((int)5).Add((int)3),(int)5,false);
	HX_STACK_LINE(32)
	this->animation->add(HX_CSTRING("lr"),Array_obj< int >::__new().Add((int)7).Add((int)6).Add((int)8).Add((int)6),(int)5,false);
	HX_STACK_LINE(33)
	Float _g3 = this->drag->set_y((int)1600);		HX_STACK_VAR(_g3,"_g3");
	HX_STACK_LINE(33)
	this->drag->set_x(_g3);
	HX_STACK_LINE(34)
	this->setSize((int)384,(int)512);
	HX_STACK_LINE(35)
	this->offset->set_x((int)64);
	HX_STACK_LINE(37)
	::FSM _g4 = ::FSM_obj::__new(this->idle_dyn());		HX_STACK_VAR(_g4,"_g4");
	HX_STACK_LINE(37)
	this->activeState = _g4;
	HX_STACK_LINE(38)
	this->idleTimer = (int)0;
}
;
	return null();
}

//Healthcareworker_obj::~Healthcareworker_obj() { }

Dynamic Healthcareworker_obj::__CreateEmpty() { return  new Healthcareworker_obj; }
hx::ObjectPtr< Healthcareworker_obj > Healthcareworker_obj::__new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,int Htype)
{  hx::ObjectPtr< Healthcareworker_obj > result = new Healthcareworker_obj();
	result->__construct(__o_X,__o_Y,Htype);
	return result;}

Dynamic Healthcareworker_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Healthcareworker_obj > result = new Healthcareworker_obj();
	result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return result;}

Void Healthcareworker_obj::draw( ){
{
		HX_STACK_FRAME("Healthcareworker","draw",0x8816ba87,"Healthcareworker.draw","Healthcareworker.hx",42,0xaa6f32d3)
		HX_STACK_THIS(this)
		HX_STACK_LINE(43)
		if (((bool(((bool((this->velocity->x != (int)0)) || bool((this->velocity->y != (int)0))))) && bool((this->touching == (int)0))))){
			HX_STACK_LINE(45)
			Float _g = ::Math_obj::abs(this->velocity->x);		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(45)
			Float _g1 = ::Math_obj::abs(this->velocity->y);		HX_STACK_VAR(_g1,"_g1");
			HX_STACK_LINE(45)
			if (((_g > _g1))){
				HX_STACK_LINE(47)
				if (((this->velocity->x < (int)0))){
					HX_STACK_LINE(49)
					this->set_facing((int)1);
				}
				else{
					HX_STACK_LINE(53)
					this->set_facing((int)16);
				}
			}
			else{
				HX_STACK_LINE(58)
				if (((this->velocity->y < (int)0))){
					HX_STACK_LINE(60)
					this->set_facing((int)256);
				}
				else{
					HX_STACK_LINE(64)
					this->set_facing((int)4096);
				}
			}
			HX_STACK_LINE(68)
			{
				HX_STACK_LINE(68)
				int _g2 = this->facing;		HX_STACK_VAR(_g2,"_g2");
				HX_STACK_LINE(68)
				switch( (int)(_g2)){
					case (int)1: case (int)16: {
						HX_STACK_LINE(70)
						this->animation->play(HX_CSTRING("lr"),null(),null());
					}
					;break;
					case (int)256: {
						HX_STACK_LINE(71)
						this->animation->play(HX_CSTRING("u"),null(),null());
					}
					;break;
					case (int)4096: {
						HX_STACK_LINE(72)
						this->animation->play(HX_CSTRING("d"),null(),null());
					}
					;break;
				}
			}
		}
		HX_STACK_LINE(76)
		this->super::draw();
	}
return null();
}


Void Healthcareworker_obj::idle( ){
{
		HX_STACK_FRAME("Healthcareworker","idle",0x8b5a3597,"Healthcareworker.idle","Healthcareworker.hx",81,0xaa6f32d3)
		HX_STACK_THIS(this)
		HX_STACK_LINE(81)
		if (((this->idleTimer <= (int)0))){
			HX_STACK_LINE(83)
			Float _g = ::flixel::util::FlxRandom_obj::floatRanged((int)0,(int)100,null());		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(83)
			if (((_g < (int)1))){
				HX_STACK_LINE(85)
				this->moveDirection = (int)-1;
				HX_STACK_LINE(86)
				Float _g1 = this->velocity->set_y((int)0);		HX_STACK_VAR(_g1,"_g1");
				HX_STACK_LINE(86)
				this->velocity->set_x(_g1);
			}
			else{
				HX_STACK_LINE(90)
				int _g2 = ::flixel::util::FlxRandom_obj::intRanged((int)512,(int)1536,null());		HX_STACK_VAR(_g2,"_g2");
				HX_STACK_LINE(90)
				int _g3 = (_g2 * (int)45);		HX_STACK_VAR(_g3,"_g3");
				HX_STACK_LINE(90)
				this->moveDirection = _g3;
				HX_STACK_LINE(91)
				{
					HX_STACK_LINE(91)
					::flixel::util::FlxPoint point = this->velocity;		HX_STACK_VAR(point,"point");
					HX_STACK_LINE(91)
					Float sin = (int)0;		HX_STACK_VAR(sin,"sin");
					HX_STACK_LINE(91)
					Float cos = (int)0;		HX_STACK_VAR(cos,"cos");
					HX_STACK_LINE(91)
					Float radians = (this->moveDirection * -(((Float(::Math_obj::PI) / Float((int)180)))));		HX_STACK_VAR(radians,"radians");
					HX_STACK_LINE(91)
					while((true)){
						HX_STACK_LINE(91)
						if ((!(((radians < -(::Math_obj::PI)))))){
							HX_STACK_LINE(91)
							break;
						}
						HX_STACK_LINE(91)
						hx::AddEq(radians,(::Math_obj::PI * (int)2));
					}
					HX_STACK_LINE(91)
					while((true)){
						HX_STACK_LINE(91)
						if ((!(((radians > ::Math_obj::PI))))){
							HX_STACK_LINE(91)
							break;
						}
						HX_STACK_LINE(91)
						radians = (radians - (::Math_obj::PI * (int)2));
					}
					HX_STACK_LINE(91)
					if (((radians < (int)0))){
						HX_STACK_LINE(91)
						sin = ((1.27323954 * radians) + ((.405284735 * radians) * radians));
						HX_STACK_LINE(91)
						if (((sin < (int)0))){
							HX_STACK_LINE(91)
							sin = ((.225 * (((sin * -(sin)) - sin))) + sin);
						}
						else{
							HX_STACK_LINE(91)
							sin = ((.225 * (((sin * sin) - sin))) + sin);
						}
					}
					else{
						HX_STACK_LINE(91)
						sin = ((1.27323954 * radians) - ((0.405284735 * radians) * radians));
						HX_STACK_LINE(91)
						if (((sin < (int)0))){
							HX_STACK_LINE(91)
							sin = ((.225 * (((sin * -(sin)) - sin))) + sin);
						}
						else{
							HX_STACK_LINE(91)
							sin = ((.225 * (((sin * sin) - sin))) + sin);
						}
					}
					HX_STACK_LINE(91)
					hx::AddEq(radians,(Float(::Math_obj::PI) / Float((int)2)));
					HX_STACK_LINE(91)
					if (((radians > ::Math_obj::PI))){
						HX_STACK_LINE(91)
						radians = (radians - (::Math_obj::PI * (int)2));
					}
					HX_STACK_LINE(91)
					if (((radians < (int)0))){
						HX_STACK_LINE(91)
						cos = ((1.27323954 * radians) + ((0.405284735 * radians) * radians));
						HX_STACK_LINE(91)
						if (((cos < (int)0))){
							HX_STACK_LINE(91)
							cos = ((.225 * (((cos * -(cos)) - cos))) + cos);
						}
						else{
							HX_STACK_LINE(91)
							cos = ((.225 * (((cos * cos) - cos))) + cos);
						}
					}
					else{
						HX_STACK_LINE(91)
						cos = ((1.27323954 * radians) - ((0.405284735 * radians) * radians));
						HX_STACK_LINE(91)
						if (((cos < (int)0))){
							HX_STACK_LINE(91)
							cos = ((.225 * (((cos * -(cos)) - cos))) + cos);
						}
						else{
							HX_STACK_LINE(91)
							cos = ((.225 * (((cos * cos) - cos))) + cos);
						}
					}
					HX_STACK_LINE(91)
					Float dx = this->speed;		HX_STACK_VAR(dx,"dx");
					HX_STACK_LINE(91)
					Float dy = (int)0;		HX_STACK_VAR(dy,"dy");
					HX_STACK_LINE(91)
					if (((point == null()))){
						HX_STACK_LINE(91)
						::flixel::util::FlxPoint _g4;		HX_STACK_VAR(_g4,"_g4");
						HX_STACK_LINE(91)
						{
							HX_STACK_LINE(91)
							Float X = (int)0;		HX_STACK_VAR(X,"X");
							HX_STACK_LINE(91)
							Float Y = (int)0;		HX_STACK_VAR(Y,"Y");
							HX_STACK_LINE(91)
							::flixel::util::FlxPoint point1 = ::flixel::util::FlxPoint_obj::_pool->get()->set(X,Y);		HX_STACK_VAR(point1,"point1");
							HX_STACK_LINE(91)
							point1->_inPool = false;
							HX_STACK_LINE(91)
							_g4 = point1;
						}
						HX_STACK_LINE(91)
						point = _g4;
					}
					HX_STACK_LINE(91)
					point->set_x(((cos * dx) - (sin * dy)));
					HX_STACK_LINE(91)
					point->set_y((((int)0 - (sin * dx)) - (cos * dy)));
					HX_STACK_LINE(91)
					point;
				}
			}
			HX_STACK_LINE(94)
			int _g5 = ::flixel::util::FlxRandom_obj::intRanged((int)1,(int)4,null());		HX_STACK_VAR(_g5,"_g5");
			HX_STACK_LINE(94)
			this->idleTimer = _g5;
		}
		else{
			HX_STACK_LINE(98)
			hx::SubEq(this->idleTimer,::flixel::FlxG_obj::elapsed);
		}
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Healthcareworker_obj,idle,(void))

Void Healthcareworker_obj::update( ){
{
		HX_STACK_FRAME("Healthcareworker","update",0x6e4efb4c,"Healthcareworker.update","Healthcareworker.hx",103,0xaa6f32d3)
		HX_STACK_THIS(this)
		HX_STACK_LINE(104)
		this->activeState->update();
		HX_STACK_LINE(105)
		this->super::update();
	}
return null();
}



Healthcareworker_obj::Healthcareworker_obj()
{
}

void Healthcareworker_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Healthcareworker);
	HX_MARK_MEMBER_NAME(speed,"speed");
	HX_MARK_MEMBER_NAME(htype,"htype");
	HX_MARK_MEMBER_NAME(activeState,"activeState");
	HX_MARK_MEMBER_NAME(idleTimer,"idleTimer");
	HX_MARK_MEMBER_NAME(moveDirection,"moveDirection");
	HX_MARK_MEMBER_NAME(overworld,"overworld");
	::flixel::FlxSprite_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Healthcareworker_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(speed,"speed");
	HX_VISIT_MEMBER_NAME(htype,"htype");
	HX_VISIT_MEMBER_NAME(activeState,"activeState");
	HX_VISIT_MEMBER_NAME(idleTimer,"idleTimer");
	HX_VISIT_MEMBER_NAME(moveDirection,"moveDirection");
	HX_VISIT_MEMBER_NAME(overworld,"overworld");
	::flixel::FlxSprite_obj::__Visit(HX_VISIT_ARG);
}

Dynamic Healthcareworker_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"draw") ) { return draw_dyn(); }
		if (HX_FIELD_EQ(inName,"idle") ) { return idle_dyn(); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"speed") ) { return speed; }
		if (HX_FIELD_EQ(inName,"htype") ) { return htype; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"idleTimer") ) { return idleTimer; }
		if (HX_FIELD_EQ(inName,"overworld") ) { return overworld; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"activeState") ) { return activeState; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"moveDirection") ) { return moveDirection; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Healthcareworker_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"speed") ) { speed=inValue.Cast< Float >(); return inValue; }
		if (HX_FIELD_EQ(inName,"htype") ) { htype=inValue.Cast< int >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"idleTimer") ) { idleTimer=inValue.Cast< Float >(); return inValue; }
		if (HX_FIELD_EQ(inName,"overworld") ) { overworld=inValue.Cast< ::Overworld >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"activeState") ) { activeState=inValue.Cast< ::FSM >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"moveDirection") ) { moveDirection=inValue.Cast< Float >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Healthcareworker_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("speed"));
	outFields->push(HX_CSTRING("htype"));
	outFields->push(HX_CSTRING("activeState"));
	outFields->push(HX_CSTRING("idleTimer"));
	outFields->push(HX_CSTRING("moveDirection"));
	outFields->push(HX_CSTRING("overworld"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsFloat,(int)offsetof(Healthcareworker_obj,speed),HX_CSTRING("speed")},
	{hx::fsInt,(int)offsetof(Healthcareworker_obj,htype),HX_CSTRING("htype")},
	{hx::fsObject /*::FSM*/ ,(int)offsetof(Healthcareworker_obj,activeState),HX_CSTRING("activeState")},
	{hx::fsFloat,(int)offsetof(Healthcareworker_obj,idleTimer),HX_CSTRING("idleTimer")},
	{hx::fsFloat,(int)offsetof(Healthcareworker_obj,moveDirection),HX_CSTRING("moveDirection")},
	{hx::fsObject /*::Overworld*/ ,(int)offsetof(Healthcareworker_obj,overworld),HX_CSTRING("overworld")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("speed"),
	HX_CSTRING("htype"),
	HX_CSTRING("activeState"),
	HX_CSTRING("idleTimer"),
	HX_CSTRING("moveDirection"),
	HX_CSTRING("overworld"),
	HX_CSTRING("draw"),
	HX_CSTRING("idle"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Healthcareworker_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Healthcareworker_obj::__mClass,"__mClass");
};

#endif

Class Healthcareworker_obj::__mClass;

void Healthcareworker_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Healthcareworker"), hx::TCanCast< Healthcareworker_obj> ,sStaticFields,sMemberFields,
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

void Healthcareworker_obj::__boot()
{
}

