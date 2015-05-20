#if !lime_hybrid


package;


import haxe.Timer;
import haxe.Unserializer;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.MovieClip;
import openfl.events.Event;
import openfl.text.Font;
import openfl.media.Sound;
import openfl.net.URLRequest;
import openfl.utils.ByteArray;
import openfl.Assets;

#if (flash || js)
import openfl.display.Loader;
import openfl.events.Event;
import openfl.net.URLLoader;
#end

#if sys
import sys.FileSystem;
#end

#if ios
import openfl._legacy.utils.SystemPath;
#end


@:access(openfl.media.Sound)
class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/easyLvl1.oel", "assets/data/ogmolevel/easyLvl1.oel");
		type.set ("assets/data/ogmolevel/easyLvl1.oel", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/easyLvl2.oel", "assets/data/ogmolevel/easyLvl2.oel");
		type.set ("assets/data/ogmolevel/easyLvl2.oel", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/virtual care.oep", "assets/data/ogmolevel/virtual care.oep");
		type.set ("assets/data/ogmolevel/virtual care.oep", AssetType.TEXT);
		path.set ("assets/images/backbutton.png", "assets/images/backbutton.png");
		type.set ("assets/images/backbutton.png", AssetType.IMAGE);
		path.set ("assets/images/background_activity1.png", "assets/images/background_activity1.png");
		type.set ("assets/images/background_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/backtobutton.png", "assets/images/backtobutton.png");
		type.set ("assets/images/backtobutton.png", AssetType.IMAGE);
		path.set ("assets/images/bed.png", "assets/images/bed.png");
		type.set ("assets/images/bed.png", AssetType.IMAGE);
		path.set ("assets/images/bed_activity1.png", "assets/images/bed_activity1.png");
		type.set ("assets/images/bed_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/boxtrolly_activity1.png", "assets/images/boxtrolly_activity1.png");
		type.set ("assets/images/boxtrolly_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/box_activity1.png", "assets/images/box_activity1.png");
		type.set ("assets/images/box_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/button.png", "assets/images/button.png");
		type.set ("assets/images/button.png", AssetType.IMAGE);
		path.set ("assets/images/buttonAnneloes.png", "assets/images/buttonAnneloes.png");
		type.set ("assets/images/buttonAnneloes.png", AssetType.IMAGE);
		path.set ("assets/images/buttonCredits.png", "assets/images/buttonCredits.png");
		type.set ("assets/images/buttonCredits.png", AssetType.IMAGE);
		path.set ("assets/images/buttonJoep.png", "assets/images/buttonJoep.png");
		type.set ("assets/images/buttonJoep.png", AssetType.IMAGE);
		path.set ("assets/images/buttonOptions.png", "assets/images/buttonOptions.png");
		type.set ("assets/images/buttonOptions.png", AssetType.IMAGE);
		path.set ("assets/images/chair_activity1.png", "assets/images/chair_activity1.png");
		type.set ("assets/images/chair_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/clock.png", "assets/images/clock.png");
		type.set ("assets/images/clock.png", AssetType.IMAGE);
		path.set ("assets/images/correct.jpg", "assets/images/correct.jpg");
		type.set ("assets/images/correct.jpg", AssetType.IMAGE);
		path.set ("assets/images/door.png", "assets/images/door.png");
		type.set ("assets/images/door.png", AssetType.IMAGE);
		path.set ("assets/images/drawer_activity1.png", "assets/images/drawer_activity1.png");
		type.set ("assets/images/drawer_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/elevator.png", "assets/images/elevator.png");
		type.set ("assets/images/elevator.png", AssetType.IMAGE);
		path.set ("assets/images/frontdoor.png", "assets/images/frontdoor.png");
		type.set ("assets/images/frontdoor.png", AssetType.IMAGE);
		path.set ("assets/images/healthcareworker-0.png", "assets/images/healthcareworker-0.png");
		type.set ("assets/images/healthcareworker-0.png", AssetType.IMAGE);
		path.set ("assets/images/healthcareworker-1.png", "assets/images/healthcareworker-1.png");
		type.set ("assets/images/healthcareworker-1.png", AssetType.IMAGE);
		path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		path.set ("assets/images/instructionscreen1.png", "assets/images/instructionscreen1.png");
		type.set ("assets/images/instructionscreen1.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreen2.png", "assets/images/instructionscreen2.png");
		type.set ("assets/images/instructionscreen2.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreen3.png", "assets/images/instructionscreen3.png");
		type.set ("assets/images/instructionscreen3.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreenactivity1.png", "assets/images/instructionscreenactivity1.png");
		type.set ("assets/images/instructionscreenactivity1.png", AssetType.IMAGE);
		path.set ("assets/images/lift_Activity1.png", "assets/images/lift_Activity1.png");
		type.set ("assets/images/lift_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/menuscreen.png", "assets/images/menuscreen.png");
		type.set ("assets/images/menuscreen.png", AssetType.IMAGE);
		path.set ("assets/images/nextbutton.png", "assets/images/nextbutton.png");
		type.set ("assets/images/nextbutton.png", AssetType.IMAGE);
		path.set ("assets/images/plant.png", "assets/images/plant.png");
		type.set ("assets/images/plant.png", AssetType.IMAGE);
		path.set ("assets/images/player-0.png", "assets/images/player-0.png");
		type.set ("assets/images/player-0.png", AssetType.IMAGE);
		path.set ("assets/images/player-1.png", "assets/images/player-1.png");
		type.set ("assets/images/player-1.png", AssetType.IMAGE);
		path.set ("assets/images/pull0_Activity1.png", "assets/images/pull0_Activity1.png");
		type.set ("assets/images/pull0_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/pull1_Activity1.png", "assets/images/pull1_Activity1.png");
		type.set ("assets/images/pull1_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/push0_Activity1.png", "assets/images/push0_Activity1.png");
		type.set ("assets/images/push0_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/push1_Activity1.png", "assets/images/push1_Activity1.png");
		type.set ("assets/images/push1_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/selectbutton.png", "assets/images/selectbutton.png");
		type.set ("assets/images/selectbutton.png", AssetType.IMAGE);
		path.set ("assets/images/Tile_sheet.png", "assets/images/Tile_sheet.png");
		type.set ("assets/images/Tile_sheet.png", AssetType.IMAGE);
		path.set ("assets/images/trolly_Activity1.png", "assets/images/trolly_Activity1.png");
		type.set ("assets/images/trolly_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/wall.png", "assets/images/wall.png");
		type.set ("assets/images/wall.png", AssetType.IMAGE);
		path.set ("assets/images/wrong.png", "assets/images/wrong.png");
		type.set ("assets/images/wrong.png", AssetType.IMAGE);
		path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
		type.set ("assets/sounds/beep.ogg", AssetType.SOUND);
		path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
		type.set ("assets/sounds/flixel.ogg", AssetType.SOUND);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/data-goes-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/easyLvl1.oel";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/easyLvl2.oel";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/virtual care.oep";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/images/backbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/background_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/backtobutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/bed.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/bed_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/boxtrolly_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/box_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonAnneloes.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonCredits.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonJoep.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonOptions.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/chair_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/clock.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/correct.jpg";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/door.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/drawer_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/elevator.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/frontdoor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/healthcareworker-0.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/healthcareworker-1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/images-go-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/images/instructionscreen1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreen2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreen3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreenactivity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/lift_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/menuscreen.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/nextbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/plant.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player-0.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player-1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pull0_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pull1_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/push0_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/push1_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/selectbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/Tile_sheet.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/trolly_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/wall.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/wrong.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/music/music-goes-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/beep.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/flixel.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		
		
		#else
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = this.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null || (assetType == BINARY && type == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif openfl_html5
		
		return BitmapData.fromImage (ApplicationMain.images.get (path.get (id)));
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), BitmapData);
		else return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if (flash)
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);

		#elseif (js || openfl_html5 || pixi)
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists(id)) {
			var fontClass = className.get(id);
			Font.registerFont(fontClass);
			return cast (Type.createInstance (fontClass, []), Font);
		} else return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		var sound = new Sound ();
		sound.__buffer = true;
		sound.load (new URLRequest (path.get (id)));
		return sound; 
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:AssetType):Array<String> {
		
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (type == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, Type.createEnum (AssetType, asset.type));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		#if js
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}
		
		#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash




















































#elseif html5




















































#else

#if (windows || mac || linux)







#else




#end

#end


#else


package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Preloader;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.text.Font;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/easyLvl1.oel", "assets/data/ogmolevel/easyLvl1.oel");
		type.set ("assets/data/ogmolevel/easyLvl1.oel", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/easyLvl2.oel", "assets/data/ogmolevel/easyLvl2.oel");
		type.set ("assets/data/ogmolevel/easyLvl2.oel", AssetType.TEXT);
		path.set ("assets/data/ogmolevel/virtual care.oep", "assets/data/ogmolevel/virtual care.oep");
		type.set ("assets/data/ogmolevel/virtual care.oep", AssetType.TEXT);
		path.set ("assets/images/backbutton.png", "assets/images/backbutton.png");
		type.set ("assets/images/backbutton.png", AssetType.IMAGE);
		path.set ("assets/images/background_activity1.png", "assets/images/background_activity1.png");
		type.set ("assets/images/background_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/backtobutton.png", "assets/images/backtobutton.png");
		type.set ("assets/images/backtobutton.png", AssetType.IMAGE);
		path.set ("assets/images/bed.png", "assets/images/bed.png");
		type.set ("assets/images/bed.png", AssetType.IMAGE);
		path.set ("assets/images/bed_activity1.png", "assets/images/bed_activity1.png");
		type.set ("assets/images/bed_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/boxtrolly_activity1.png", "assets/images/boxtrolly_activity1.png");
		type.set ("assets/images/boxtrolly_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/box_activity1.png", "assets/images/box_activity1.png");
		type.set ("assets/images/box_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/button.png", "assets/images/button.png");
		type.set ("assets/images/button.png", AssetType.IMAGE);
		path.set ("assets/images/buttonAnneloes.png", "assets/images/buttonAnneloes.png");
		type.set ("assets/images/buttonAnneloes.png", AssetType.IMAGE);
		path.set ("assets/images/buttonCredits.png", "assets/images/buttonCredits.png");
		type.set ("assets/images/buttonCredits.png", AssetType.IMAGE);
		path.set ("assets/images/buttonJoep.png", "assets/images/buttonJoep.png");
		type.set ("assets/images/buttonJoep.png", AssetType.IMAGE);
		path.set ("assets/images/buttonOptions.png", "assets/images/buttonOptions.png");
		type.set ("assets/images/buttonOptions.png", AssetType.IMAGE);
		path.set ("assets/images/chair_activity1.png", "assets/images/chair_activity1.png");
		type.set ("assets/images/chair_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/clock.png", "assets/images/clock.png");
		type.set ("assets/images/clock.png", AssetType.IMAGE);
		path.set ("assets/images/correct.jpg", "assets/images/correct.jpg");
		type.set ("assets/images/correct.jpg", AssetType.IMAGE);
		path.set ("assets/images/door.png", "assets/images/door.png");
		type.set ("assets/images/door.png", AssetType.IMAGE);
		path.set ("assets/images/drawer_activity1.png", "assets/images/drawer_activity1.png");
		type.set ("assets/images/drawer_activity1.png", AssetType.IMAGE);
		path.set ("assets/images/elevator.png", "assets/images/elevator.png");
		type.set ("assets/images/elevator.png", AssetType.IMAGE);
		path.set ("assets/images/frontdoor.png", "assets/images/frontdoor.png");
		type.set ("assets/images/frontdoor.png", AssetType.IMAGE);
		path.set ("assets/images/healthcareworker-0.png", "assets/images/healthcareworker-0.png");
		type.set ("assets/images/healthcareworker-0.png", AssetType.IMAGE);
		path.set ("assets/images/healthcareworker-1.png", "assets/images/healthcareworker-1.png");
		type.set ("assets/images/healthcareworker-1.png", AssetType.IMAGE);
		path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		path.set ("assets/images/instructionscreen1.png", "assets/images/instructionscreen1.png");
		type.set ("assets/images/instructionscreen1.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreen2.png", "assets/images/instructionscreen2.png");
		type.set ("assets/images/instructionscreen2.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreen3.png", "assets/images/instructionscreen3.png");
		type.set ("assets/images/instructionscreen3.png", AssetType.IMAGE);
		path.set ("assets/images/instructionscreenactivity1.png", "assets/images/instructionscreenactivity1.png");
		type.set ("assets/images/instructionscreenactivity1.png", AssetType.IMAGE);
		path.set ("assets/images/lift_Activity1.png", "assets/images/lift_Activity1.png");
		type.set ("assets/images/lift_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/menuscreen.png", "assets/images/menuscreen.png");
		type.set ("assets/images/menuscreen.png", AssetType.IMAGE);
		path.set ("assets/images/nextbutton.png", "assets/images/nextbutton.png");
		type.set ("assets/images/nextbutton.png", AssetType.IMAGE);
		path.set ("assets/images/plant.png", "assets/images/plant.png");
		type.set ("assets/images/plant.png", AssetType.IMAGE);
		path.set ("assets/images/player-0.png", "assets/images/player-0.png");
		type.set ("assets/images/player-0.png", AssetType.IMAGE);
		path.set ("assets/images/player-1.png", "assets/images/player-1.png");
		type.set ("assets/images/player-1.png", AssetType.IMAGE);
		path.set ("assets/images/pull0_Activity1.png", "assets/images/pull0_Activity1.png");
		type.set ("assets/images/pull0_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/pull1_Activity1.png", "assets/images/pull1_Activity1.png");
		type.set ("assets/images/pull1_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/push0_Activity1.png", "assets/images/push0_Activity1.png");
		type.set ("assets/images/push0_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/push1_Activity1.png", "assets/images/push1_Activity1.png");
		type.set ("assets/images/push1_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/selectbutton.png", "assets/images/selectbutton.png");
		type.set ("assets/images/selectbutton.png", AssetType.IMAGE);
		path.set ("assets/images/Tile_sheet.png", "assets/images/Tile_sheet.png");
		type.set ("assets/images/Tile_sheet.png", AssetType.IMAGE);
		path.set ("assets/images/trolly_Activity1.png", "assets/images/trolly_Activity1.png");
		type.set ("assets/images/trolly_Activity1.png", AssetType.IMAGE);
		path.set ("assets/images/wall.png", "assets/images/wall.png");
		type.set ("assets/images/wall.png", AssetType.IMAGE);
		path.set ("assets/images/wrong.png", "assets/images/wrong.png");
		type.set ("assets/images/wrong.png", AssetType.IMAGE);
		path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
		type.set ("assets/sounds/beep.ogg", AssetType.SOUND);
		path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
		type.set ("assets/sounds/flixel.ogg", AssetType.SOUND);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/data-goes-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/easyLvl1.oel";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/easyLvl2.oel";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/virtual care.oep";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/images/backbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/background_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/backtobutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/bed.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/bed_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/boxtrolly_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/box_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/button.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonAnneloes.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonCredits.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonJoep.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/buttonOptions.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/chair_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/clock.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/correct.jpg";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/door.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/drawer_activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/elevator.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/frontdoor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/healthcareworker-0.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/healthcareworker-1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/images-go-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/images/instructionscreen1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreen2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreen3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/instructionscreenactivity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/lift_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/menuscreen.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/nextbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/plant.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player-0.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player-1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pull0_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pull1_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/push0_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/push1_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/selectbutton.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/Tile_sheet.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/trolly_Activity1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/wall.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/wrong.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/music/music-goes-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/beep.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/flixel.ogg";
		path.set (id, id);
		type.set (id, AssetType.SOUND);
		
		
		var assetsPrefix = ApplicationMain.config.assetsPrefix;
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if openfl
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#end
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), ByteArray));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return cast (Type.createInstance (className.get (id), []), ByteArray);
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return bitmapData.getPixels (bitmapData.rect);
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String, handler:AudioBuffer -> Void):Void {
		
		#if (flash)
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				handler (audioBuffer);
				
			});
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			handler (getAudioBuffer (id));
			
		}
		#else
		handler (getAudioBuffer (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadImage (id:String, handler:Image -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				handler (Image.fromBitmapData (bitmapData));
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getImage (id));
			
		}
		
		#else
		
		handler (getImage (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = ByteArray.readFile ("../Resources/manifest");
			#elseif ios
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if ios
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	/*public override function loadMusic (id:String, handler:Dynamic -> Void):Void {
		
		#if (flash || html5)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}*/
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		//#if html5
		
		/*if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}*/
		
		//#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		//#end
		
	}
	
	
}


#if !display
#if flash




















































#elseif html5




















































#else



#if (windows || mac || linux)





#end

#if openfl

#end

#end
#end


#end