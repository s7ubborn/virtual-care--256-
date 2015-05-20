#ifndef INCLUDED_Healthcareworker
#define INCLUDED_Healthcareworker

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <flixel/FlxSprite.h>
HX_DECLARE_CLASS0(FSM)
HX_DECLARE_CLASS0(Healthcareworker)
HX_DECLARE_CLASS0(Overworld)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS1(flixel,FlxState)
HX_DECLARE_CLASS2(flixel,group,FlxGroup)
HX_DECLARE_CLASS2(flixel,group,FlxTypedGroup)
HX_DECLARE_CLASS2(flixel,interfaces,IFlxDestroyable)


class HXCPP_CLASS_ATTRIBUTES  Healthcareworker_obj : public ::flixel::FlxSprite_obj{
	public:
		typedef ::flixel::FlxSprite_obj super;
		typedef Healthcareworker_obj OBJ_;
		Healthcareworker_obj();
		Void __construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,int Htype);

	public:
		inline void *operator new( size_t inSize, bool inContainer=true)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< Healthcareworker_obj > __new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,int Htype);
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Healthcareworker_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Healthcareworker"); }

		Float speed;
		int htype;
		::FSM activeState;
		Float idleTimer;
		Float moveDirection;
		::Overworld overworld;
		virtual Void draw( );

		virtual Void idle( );
		Dynamic idle_dyn();

		virtual Void update( );

};


#endif /* INCLUDED_Healthcareworker */ 
