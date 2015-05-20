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
			path.set ("assets/data/ogmolevel/placeholder.oel", "assets/data/ogmolevel/placeholder.oel");
			type.set ("assets/data/ogmolevel/placeholder.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/ogmolevel/virtual care.oep", "assets/data/ogmolevel/virtual care.oep");
			type.set ("assets/data/ogmolevel/virtual care.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/button.png", "assets/images/button.png");
			type.set ("assets/images/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonAnneloes.png", "assets/images/buttonAnneloes.png");
			type.set ("assets/images/buttonAnneloes.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/buttonJoep.png", "assets/images/buttonJoep.png");
			type.set ("assets/images/buttonJoep.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/door.png", "assets/images/door.png");
			type.set ("assets/images/door.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/elevator.png", "assets/images/elevator.png");
			type.set ("assets/images/elevator.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/healthcareworker-0.png", "assets/images/healthcareworker-0.png");
			type.set ("assets/images/healthcareworker-0.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/healthcareworker-1.png", "assets/images/healthcareworker-1.png");
			type.set ("assets/images/healthcareworker-1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/menuscreen.png", "assets/images/menuscreen.png");
			type.set ("assets/images/menuscreen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/placeholder.png", "assets/images/placeholder.png");
			type.set ("assets/images/placeholder.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player-0.png", "assets/images/player-0.png");
			type.set ("assets/images/player-0.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player-1.png", "assets/images/player-1.png");
			type.set ("assets/images/player-1.png", Reflect.field (AssetType, "image".toUpperCase ()));
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
