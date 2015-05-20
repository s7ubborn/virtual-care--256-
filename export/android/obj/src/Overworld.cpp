#include <hxcpp.h>

#ifndef INCLUDED_Doorentity
#include <Doorentity.h>
#endif
#ifndef INCLUDED_Elevatorentity
#include <Elevatorentity.h>
#endif
#ifndef INCLUDED_Healthcareworker
#include <Healthcareworker.h>
#endif
#ifndef INCLUDED_Overworld
#include <Overworld.h>
#endif
#ifndef INCLUDED_Player
#include <Player.h>
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_Xml
#include <Xml.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxCamera
#include <flixel/FlxCamera.h>
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
#ifndef INCLUDED_flixel_addons_editors_ogmo_FlxOgmoLoader
#include <flixel/addons/editors/ogmo/FlxOgmoLoader.h>
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
#ifndef INCLUDED_flixel_tile_FlxTilemap
#include <flixel/tile/FlxTilemap.h>
#endif
#ifndef INCLUDED_flixel_util_FlxPoint
#include <flixel/util/FlxPoint.h>
#endif

Void Overworld_obj::__construct(int JoeporAnneloes)
{
HX_STACK_FRAME("Overworld","new",0x8e8bbc50,"Overworld.new","Overworld.hx",18,0x21ee3d20)
HX_STACK_THIS(this)
HX_STACK_ARG(JoeporAnneloes,"JoeporAnneloes")
{
	HX_STACK_LINE(21)
	this->playerChosen = (int)2;
	HX_STACK_LINE(30)
	super::__construct(null());
	HX_STACK_LINE(31)
	this->playerChosen = JoeporAnneloes;
}
;
	return null();
}

//Overworld_obj::~Overworld_obj() { }

Dynamic Overworld_obj::__CreateEmpty() { return  new Overworld_obj; }
hx::ObjectPtr< Overworld_obj > Overworld_obj::__new(int JoeporAnneloes)
{  hx::ObjectPtr< Overworld_obj > result = new Overworld_obj();
	result->__construct(JoeporAnneloes);
	return result;}

Dynamic Overworld_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Overworld_obj > result = new Overworld_obj();
	result->__construct(inArgs[0]);
	return result;}

Void Overworld_obj::create( ){
{
		HX_STACK_FRAME("Overworld","create",0x5dff910c,"Overworld.create","Overworld.hx",38,0x21ee3d20)
		HX_STACK_THIS(this)
		HX_STACK_LINE(39)
		::flixel::addons::editors::ogmo::FlxOgmoLoader _g = ::flixel::addons::editors::ogmo::FlxOgmoLoader_obj::__new(HX_CSTRING("assets/data/ogmolevel/placeholder.oel"));		HX_STACK_VAR(_g,"_g");
		HX_STACK_LINE(39)
		this->ogmoMap = _g;
		HX_STACK_LINE(40)
		::flixel::tile::FlxTilemap _g1 = this->ogmoMap->loadTilemap(HX_CSTRING("assets/images/placeholder.png"),(int)512,(int)512,HX_CSTRING("Tiles"));		HX_STACK_VAR(_g1,"_g1");
		HX_STACK_LINE(40)
		this->ogmoWalls = _g1;
		HX_STACK_LINE(41)
		this->ogmoWalls->setTileProperties((int)1,(int)0,null(),null(),null());
		HX_STACK_LINE(42)
		this->ogmoWalls->setTileProperties((int)2,(int)4369,null(),null(),null());
		HX_STACK_LINE(43)
		this->add(this->ogmoWalls);
		HX_STACK_LINE(45)
		::flixel::group::FlxTypedGroup _g2 = ::flixel::group::FlxTypedGroup_obj::__new(null());		HX_STACK_VAR(_g2,"_g2");
		HX_STACK_LINE(45)
		this->door = _g2;
		HX_STACK_LINE(46)
		this->add(this->door);
		HX_STACK_LINE(48)
		::flixel::group::FlxTypedGroup _g3 = ::flixel::group::FlxTypedGroup_obj::__new(null());		HX_STACK_VAR(_g3,"_g3");
		HX_STACK_LINE(48)
		this->elevator = _g3;
		HX_STACK_LINE(49)
		this->add(this->elevator);
		HX_STACK_LINE(51)
		::flixel::group::FlxTypedGroup _g4 = ::flixel::group::FlxTypedGroup_obj::__new(null());		HX_STACK_VAR(_g4,"_g4");
		HX_STACK_LINE(51)
		this->healthCareWorker = _g4;
		HX_STACK_LINE(52)
		this->add(this->healthCareWorker);
		HX_STACK_LINE(54)
		::Player _g5 = ::Player_obj::__new(this->playerChosen,null(),null());		HX_STACK_VAR(_g5,"_g5");
		HX_STACK_LINE(54)
		this->playerCharacter = _g5;
		HX_STACK_LINE(55)
		this->add(this->playerCharacter);
		HX_STACK_LINE(56)
		::flixel::FlxG_obj::camera->follow(this->playerCharacter,(int)3,null(),null());
		HX_STACK_LINE(58)
		this->ogmoMap->loadEntities(this->placeEntities_dyn(),HX_CSTRING("Entities"));
		HX_STACK_LINE(60)
		this->super::create();
	}
return null();
}


Void Overworld_obj::placeEntities( ::String entityName,::Xml entityData){
{
		HX_STACK_FRAME("Overworld","placeEntities",0x2d821e18,"Overworld.placeEntities","Overworld.hx",65,0x21ee3d20)
		HX_STACK_THIS(this)
		HX_STACK_ARG(entityName,"entityName")
		HX_STACK_ARG(entityData,"entityData")
		HX_STACK_LINE(65)
		if (((entityName == HX_CSTRING("player")))){
			HX_STACK_LINE(67)
			::String _g = entityData->get(HX_CSTRING("x"));		HX_STACK_VAR(_g,"_g");
			HX_STACK_LINE(67)
			Dynamic _g1 = ::Std_obj::parseInt(_g);		HX_STACK_VAR(_g1,"_g1");
			HX_STACK_LINE(67)
			int _g2 = (_g1 + (int)64);		HX_STACK_VAR(_g2,"_g2");
			HX_STACK_LINE(67)
			this->playerCharacter->set_x(_g2);
			HX_STACK_LINE(68)
			::String _g3 = entityData->get(HX_CSTRING("y"));		HX_STACK_VAR(_g3,"_g3");
			HX_STACK_LINE(68)
			Dynamic _g4 = ::Std_obj::parseInt(_g3);		HX_STACK_VAR(_g4,"_g4");
			HX_STACK_LINE(68)
			this->playerCharacter->set_y(_g4);
		}
		else{
			HX_STACK_LINE(70)
			if (((entityName == HX_CSTRING("healthcareworker")))){
				HX_STACK_LINE(72)
				::String _g5 = entityData->get(HX_CSTRING("x"));		HX_STACK_VAR(_g5,"_g5");
				HX_STACK_LINE(72)
				Dynamic _g6 = ::Std_obj::parseInt(_g5);		HX_STACK_VAR(_g6,"_g6");
				HX_STACK_LINE(72)
				::String _g7 = entityData->get(HX_CSTRING("y"));		HX_STACK_VAR(_g7,"_g7");
				HX_STACK_LINE(72)
				Dynamic _g8 = ::Std_obj::parseInt(_g7);		HX_STACK_VAR(_g8,"_g8");
				HX_STACK_LINE(72)
				::String _g9 = entityData->get(HX_CSTRING("htype"));		HX_STACK_VAR(_g9,"_g9");
				HX_STACK_LINE(72)
				Dynamic _g10 = ::Std_obj::parseInt(_g9);		HX_STACK_VAR(_g10,"_g10");
				HX_STACK_LINE(72)
				::Healthcareworker _g11 = ::Healthcareworker_obj::__new(_g6,_g8,_g10);		HX_STACK_VAR(_g11,"_g11");
				HX_STACK_LINE(72)
				this->healthCareWorker->add(_g11);
			}
			else{
				HX_STACK_LINE(74)
				if (((entityName == HX_CSTRING("door")))){
					HX_STACK_LINE(76)
					::String _g12 = entityData->get(HX_CSTRING("x"));		HX_STACK_VAR(_g12,"_g12");
					HX_STACK_LINE(76)
					Dynamic _g13 = ::Std_obj::parseInt(_g12);		HX_STACK_VAR(_g13,"_g13");
					HX_STACK_LINE(76)
					::String _g14 = entityData->get(HX_CSTRING("y"));		HX_STACK_VAR(_g14,"_g14");
					HX_STACK_LINE(76)
					Dynamic _g15 = ::Std_obj::parseInt(_g14);		HX_STACK_VAR(_g15,"_g15");
					HX_STACK_LINE(76)
					::Doorentity _g16 = ::Doorentity_obj::__new(_g13,_g15);		HX_STACK_VAR(_g16,"_g16");
					HX_STACK_LINE(76)
					this->door->add(_g16);
				}
				else{
					HX_STACK_LINE(78)
					if (((entityName == HX_CSTRING("elevator")))){
						HX_STACK_LINE(80)
						::String _g17 = entityData->get(HX_CSTRING("x"));		HX_STACK_VAR(_g17,"_g17");
						HX_STACK_LINE(80)
						Dynamic _g18 = ::Std_obj::parseInt(_g17);		HX_STACK_VAR(_g18,"_g18");
						HX_STACK_LINE(80)
						::String _g19 = entityData->get(HX_CSTRING("y"));		HX_STACK_VAR(_g19,"_g19");
						HX_STACK_LINE(80)
						Dynamic _g20 = ::Std_obj::parseInt(_g19);		HX_STACK_VAR(_g20,"_g20");
						HX_STACK_LINE(80)
						::Elevatorentity _g21 = ::Elevatorentity_obj::__new(_g18,_g20);		HX_STACK_VAR(_g21,"_g21");
						HX_STACK_LINE(80)
						this->elevator->add(_g21);
					}
				}
			}
		}
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(Overworld_obj,placeEntities,(void))

Void Overworld_obj::destroy( ){
{
		HX_STACK_FRAME("Overworld","destroy",0xf4bad0ea,"Overworld.destroy","Overworld.hx",90,0x21ee3d20)
		HX_STACK_THIS(this)
		HX_STACK_LINE(90)
		this->super::destroy();
	}
return null();
}


Void Overworld_obj::collide( ){
{
		HX_STACK_FRAME("Overworld","collide",0xbd98536e,"Overworld.collide","Overworld.hx",93,0x21ee3d20)
		HX_STACK_THIS(this)
		HX_STACK_LINE(94)
		::flixel::FlxG_obj::overlap(this->playerCharacter,this->ogmoWalls,null(),::flixel::FlxObject_obj::separate_dyn());
		HX_STACK_LINE(95)
		::flixel::FlxG_obj::overlap(this->healthCareWorker,this->ogmoWalls,null(),::flixel::FlxObject_obj::separate_dyn());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(Overworld_obj,collide,(void))

Void Overworld_obj::update( ){
{
		HX_STACK_FRAME("Overworld","update",0x68f5b019,"Overworld.update","Overworld.hx",101,0x21ee3d20)
		HX_STACK_THIS(this)
		HX_STACK_LINE(102)
		this->super::update();
		HX_STACK_LINE(103)
		this->collide();
	}
return null();
}



Overworld_obj::Overworld_obj()
{
}

void Overworld_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Overworld);
	HX_MARK_MEMBER_NAME(playerCharacter,"playerCharacter");
	HX_MARK_MEMBER_NAME(playerChosen,"playerChosen");
	HX_MARK_MEMBER_NAME(ogmoMap,"ogmoMap");
	HX_MARK_MEMBER_NAME(ogmoWalls,"ogmoWalls");
	HX_MARK_MEMBER_NAME(healthCareWorker,"healthCareWorker");
	HX_MARK_MEMBER_NAME(door,"door");
	HX_MARK_MEMBER_NAME(elevator,"elevator");
	::flixel::FlxState_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Overworld_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(playerCharacter,"playerCharacter");
	HX_VISIT_MEMBER_NAME(playerChosen,"playerChosen");
	HX_VISIT_MEMBER_NAME(ogmoMap,"ogmoMap");
	HX_VISIT_MEMBER_NAME(ogmoWalls,"ogmoWalls");
	HX_VISIT_MEMBER_NAME(healthCareWorker,"healthCareWorker");
	HX_VISIT_MEMBER_NAME(door,"door");
	HX_VISIT_MEMBER_NAME(elevator,"elevator");
	::flixel::FlxState_obj::__Visit(HX_VISIT_ARG);
}

Dynamic Overworld_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"door") ) { return door; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return create_dyn(); }
		if (HX_FIELD_EQ(inName,"update") ) { return update_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"ogmoMap") ) { return ogmoMap; }
		if (HX_FIELD_EQ(inName,"destroy") ) { return destroy_dyn(); }
		if (HX_FIELD_EQ(inName,"collide") ) { return collide_dyn(); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"elevator") ) { return elevator; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"ogmoWalls") ) { return ogmoWalls; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"playerChosen") ) { return playerChosen; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"placeEntities") ) { return placeEntities_dyn(); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"playerCharacter") ) { return playerCharacter; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"healthCareWorker") ) { return healthCareWorker; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Overworld_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"door") ) { door=inValue.Cast< ::flixel::group::FlxTypedGroup >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"ogmoMap") ) { ogmoMap=inValue.Cast< ::flixel::addons::editors::ogmo::FlxOgmoLoader >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"elevator") ) { elevator=inValue.Cast< ::flixel::group::FlxTypedGroup >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"ogmoWalls") ) { ogmoWalls=inValue.Cast< ::flixel::tile::FlxTilemap >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"playerChosen") ) { playerChosen=inValue.Cast< int >(); return inValue; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"playerCharacter") ) { playerCharacter=inValue.Cast< ::Player >(); return inValue; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"healthCareWorker") ) { healthCareWorker=inValue.Cast< ::flixel::group::FlxTypedGroup >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Overworld_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("playerCharacter"));
	outFields->push(HX_CSTRING("playerChosen"));
	outFields->push(HX_CSTRING("ogmoMap"));
	outFields->push(HX_CSTRING("ogmoWalls"));
	outFields->push(HX_CSTRING("healthCareWorker"));
	outFields->push(HX_CSTRING("door"));
	outFields->push(HX_CSTRING("elevator"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

#if HXCPP_SCRIPTABLE
static hx::StorageInfo sMemberStorageInfo[] = {
	{hx::fsObject /*::Player*/ ,(int)offsetof(Overworld_obj,playerCharacter),HX_CSTRING("playerCharacter")},
	{hx::fsInt,(int)offsetof(Overworld_obj,playerChosen),HX_CSTRING("playerChosen")},
	{hx::fsObject /*::flixel::addons::editors::ogmo::FlxOgmoLoader*/ ,(int)offsetof(Overworld_obj,ogmoMap),HX_CSTRING("ogmoMap")},
	{hx::fsObject /*::flixel::tile::FlxTilemap*/ ,(int)offsetof(Overworld_obj,ogmoWalls),HX_CSTRING("ogmoWalls")},
	{hx::fsObject /*::flixel::group::FlxTypedGroup*/ ,(int)offsetof(Overworld_obj,healthCareWorker),HX_CSTRING("healthCareWorker")},
	{hx::fsObject /*::flixel::group::FlxTypedGroup*/ ,(int)offsetof(Overworld_obj,door),HX_CSTRING("door")},
	{hx::fsObject /*::flixel::group::FlxTypedGroup*/ ,(int)offsetof(Overworld_obj,elevator),HX_CSTRING("elevator")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String sMemberFields[] = {
	HX_CSTRING("playerCharacter"),
	HX_CSTRING("playerChosen"),
	HX_CSTRING("ogmoMap"),
	HX_CSTRING("ogmoWalls"),
	HX_CSTRING("healthCareWorker"),
	HX_CSTRING("door"),
	HX_CSTRING("elevator"),
	HX_CSTRING("create"),
	HX_CSTRING("placeEntities"),
	HX_CSTRING("destroy"),
	HX_CSTRING("collide"),
	HX_CSTRING("update"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Overworld_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Overworld_obj::__mClass,"__mClass");
};

#endif

Class Overworld_obj::__mClass;

void Overworld_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("Overworld"), hx::TCanCast< Overworld_obj> ,sStaticFields,sMemberFields,
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

void Overworld_obj::__boot()
{
}

