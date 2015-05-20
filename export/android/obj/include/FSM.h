#ifndef INCLUDED_FSM
#define INCLUDED_FSM

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS0(FSM)


class HXCPP_CLASS_ATTRIBUTES  FSM_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef FSM_obj OBJ_;
		FSM_obj();
		Void __construct(Dynamic InitState);

	public:
		inline void *operator new( size_t inSize, bool inContainer=true)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< FSM_obj > __new(Dynamic InitState);
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~FSM_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("FSM"); }

		Dynamic activeState;
		Dynamic &activeState_dyn() { return activeState;}
		virtual Void update( );
		Dynamic update_dyn();

};


#endif /* INCLUDED_FSM */ 
