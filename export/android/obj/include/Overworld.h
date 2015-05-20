#ifndef INCLUDED_Overworld
#define INCLUDED_Overworld

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <flixel/FlxState.h>
HX_DECLARE_CLASS0(Overworld)
HX_DECLARE_CLASS0(Player)
HX_DECLARE_CLASS0(Xml)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS1(flixel,FlxState)
HX_DECLARE_CLASS4(flixel,addons,editors,ogmo,FlxOgmoLoader)
HX_DECLARE_CLASS2(flixel,group,FlxGroup)
HX_DECLARE_CLASS2(flixel,group,FlxTypedGroup)
HX_DECLARE_CLASS2(flixel,interfaces,IFlxDestroyable)
HX_DECLARE_CLASS2(flixel,tile,FlxTilemap)


class HXCPP_CLASS_ATTRIBUTES  Overworld_obj : public ::flixel::FlxState_obj{
	public:
		typedef ::flixel::FlxState_obj super;
		typedef Overworld_obj OBJ_;
		Overworld_obj();
		Void __construct(int JoeporAnneloes);

	public:
		inline void *operator new( size_t inSize, bool inContainer=true)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< Overworld_obj > __new(int JoeporAnneloes);
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Overworld_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Overworld"); }

		::Player playerCharacter;
		int playerChosen;
		::flixel::addons::editors::ogmo::FlxOgmoLoader ogmoMap;
		::flixel::tile::FlxTilemap ogmoWalls;
		::flixel::group::FlxTypedGroup healthCareWorker;
		::flixel::group::FlxTypedGroup door;
		::flixel::group::FlxTypedGroup elevator;
		virtual Void create( );

		virtual Void placeEntities( ::String entityName,::Xml entityData);
		Dynamic placeEntities_dyn();

		virtual Void destroy( );

		virtual Void collide( );
		Dynamic collide_dyn();

		virtual Void update( );

};


#endif /* INCLUDED_Overworld */ 
