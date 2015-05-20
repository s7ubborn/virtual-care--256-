package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/ogmolevel/easyLvl1.oel", "assets/data/ogmolevel/easyLvl1.oel");
			type.set ("assets/data/ogmolevel/easyLvl1.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/ogmolevel/easyLvl2.oel", "assets/data/ogmolevel/easyLvl2.oel");
			type.set ("assets/data/ogmolevel/easyLvl2.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/ogmolevel/virtual care.oep", "assets/data/ogmolevel/virtual care.oep");
			type.set ("assets/data/ogmolevel/virtual care.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/backbutton.png", "assets/images/backbutton.png");
			type.set ("assets/images/backbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/background_activity1.png", "assets/images/background_activity1.png");
			type.set ("assets/images/background_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/backtobutton.png", "assets/images/backtobutton.png");
			type.set ("assets/images/backtobutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/bed.png", "assets/images/bed.png");
			type.set ("assets/images/bed.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/bed_activity1.png", "assets/images/bed_activity1.png");
			type.set ("assets/images/bed_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/boxtrolly_activity1.png", "assets/images/boxtrolly_activity1.png");
			type.set ("assets/images/boxtrolly_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/box_activity1.png", "assets/images/box_activity1.png");
			type.set ("assets/images/box_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/button.png", "assets/images/button.png");
			type.set ("assets/images/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonAnneloes.png", "assets/images/buttonAnneloes.png");
			type.set ("assets/images/buttonAnneloes.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonCredits.png", "assets/images/buttonCredits.png");
			type.set ("assets/images/buttonCredits.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonJoep.png", "assets/images/buttonJoep.png");
			type.set ("assets/images/buttonJoep.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonOptions.png", "assets/images/buttonOptions.png");
			type.set ("assets/images/buttonOptions.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/chair_activity1.png", "assets/images/chair_activity1.png");
			type.set ("assets/images/chair_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/clock.png", "assets/images/clock.png");
			type.set ("assets/images/clock.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/correct.jpg", "assets/images/correct.jpg");
			type.set ("assets/images/correct.jpg", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/door.png", "assets/images/door.png");
			type.set ("assets/images/door.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/drawer_activity1.png", "assets/images/drawer_activity1.png");
			type.set ("assets/images/drawer_activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/elevator.png", "assets/images/elevator.png");
			type.set ("assets/images/elevator.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/frontdoor.png", "assets/images/frontdoor.png");
			type.set ("assets/images/frontdoor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/healthcareworker-0.png", "assets/images/healthcareworker-0.png");
			type.set ("assets/images/healthcareworker-0.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/healthcareworker-1.png", "assets/images/healthcareworker-1.png");
			type.set ("assets/images/healthcareworker-1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/instructionscreen1.png", "assets/images/instructionscreen1.png");
			type.set ("assets/images/instructionscreen1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/instructionscreen2.png", "assets/images/instructionscreen2.png");
			type.set ("assets/images/instructionscreen2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/instructionscreen3.png", "assets/images/instructionscreen3.png");
			type.set ("assets/images/instructionscreen3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/instructionscreenactivity1.png", "assets/images/instructionscreenactivity1.png");
			type.set ("assets/images/instructionscreenactivity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/lift_Activity1.png", "assets/images/lift_Activity1.png");
			type.set ("assets/images/lift_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/menuscreen.png", "assets/images/menuscreen.png");
			type.set ("assets/images/menuscreen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/nextbutton.png", "assets/images/nextbutton.png");
			type.set ("assets/images/nextbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/plant.png", "assets/images/plant.png");
			type.set ("assets/images/plant.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player-0.png", "assets/images/player-0.png");
			type.set ("assets/images/player-0.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player-1.png", "assets/images/player-1.png");
			type.set ("assets/images/player-1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/pull0_Activity1.png", "assets/images/pull0_Activity1.png");
			type.set ("assets/images/pull0_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/pull1_Activity1.png", "assets/images/pull1_Activity1.png");
			type.set ("assets/images/pull1_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/push0_Activity1.png", "assets/images/push0_Activity1.png");
			type.set ("assets/images/push0_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/push1_Activity1.png", "assets/images/push1_Activity1.png");
			type.set ("assets/images/push1_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/selectbutton.png", "assets/images/selectbutton.png");
			type.set ("assets/images/selectbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Tile_sheet.png", "assets/images/Tile_sheet.png");
			type.set ("assets/images/Tile_sheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/trolly_Activity1.png", "assets/images/trolly_Activity1.png");
			type.set ("assets/images/trolly_Activity1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/wall.png", "assets/images/wall.png");
			type.set ("assets/images/wall.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/wrong.png", "assets/images/wrong.png");
			type.set ("assets/images/wrong.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
			type.set ("assets/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
			type.set ("assets/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
