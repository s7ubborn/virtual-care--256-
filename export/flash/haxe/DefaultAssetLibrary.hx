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
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		className.set ("assets/data/ogmolevel/easyLvl.oel", __ASSET__assets_data_ogmolevel_easylvl_oel);
		type.set ("assets/data/ogmolevel/easyLvl.oel", AssetType.TEXT);
		className.set ("assets/data/ogmolevel/easyLvl1.oel", __ASSET__assets_data_ogmolevel_easylvl1_oel);
		type.set ("assets/data/ogmolevel/easyLvl1.oel", AssetType.TEXT);
		className.set ("assets/data/ogmolevel/easyLvl2.oel", __ASSET__assets_data_ogmolevel_easylvl2_oel);
		type.set ("assets/data/ogmolevel/easyLvl2.oel", AssetType.TEXT);
		className.set ("assets/data/ogmolevel/virtual care.oep", __ASSET__assets_data_ogmolevel_virtual_care_oep);
		type.set ("assets/data/ogmolevel/virtual care.oep", AssetType.TEXT);
		className.set ("assets/images/backbutton.png", __ASSET__assets_images_backbutton_png);
		type.set ("assets/images/backbutton.png", AssetType.IMAGE);
		className.set ("assets/images/background_activity1.png", __ASSET__assets_images_background_activity1_png);
		type.set ("assets/images/background_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/backtobutton.png", __ASSET__assets_images_backtobutton_png);
		type.set ("assets/images/backtobutton.png", AssetType.IMAGE);
		className.set ("assets/images/bed.png", __ASSET__assets_images_bed_png);
		type.set ("assets/images/bed.png", AssetType.IMAGE);
		className.set ("assets/images/bed_activity1.png", __ASSET__assets_images_bed_activity1_png);
		type.set ("assets/images/bed_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/boxtrolly_activity1.png", __ASSET__assets_images_boxtrolly_activity1_png);
		type.set ("assets/images/boxtrolly_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/box_activity1.png", __ASSET__assets_images_box_activity1_png);
		type.set ("assets/images/box_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/button.png", __ASSET__assets_images_button_png);
		type.set ("assets/images/button.png", AssetType.IMAGE);
		className.set ("assets/images/buttonAnneloes - kopie.png", __ASSET__assets_images_buttonanneloes___kopie_png);
		type.set ("assets/images/buttonAnneloes - kopie.png", AssetType.IMAGE);
		className.set ("assets/images/buttonAnneloes.png", __ASSET__assets_images_buttonanneloes_png);
		type.set ("assets/images/buttonAnneloes.png", AssetType.IMAGE);
		className.set ("assets/images/buttonCredits.png", __ASSET__assets_images_buttoncredits_png);
		type.set ("assets/images/buttonCredits.png", AssetType.IMAGE);
		className.set ("assets/images/buttonJoep.png", __ASSET__assets_images_buttonjoep_png);
		type.set ("assets/images/buttonJoep.png", AssetType.IMAGE);
		className.set ("assets/images/buttonOptions.png", __ASSET__assets_images_buttonoptions_png);
		type.set ("assets/images/buttonOptions.png", AssetType.IMAGE);
		className.set ("assets/images/chair_activity1.png", __ASSET__assets_images_chair_activity1_png);
		type.set ("assets/images/chair_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/clock.png", __ASSET__assets_images_clock_png);
		type.set ("assets/images/clock.png", AssetType.IMAGE);
		className.set ("assets/images/correct.jpg", __ASSET__assets_images_correct_jpg);
		type.set ("assets/images/correct.jpg", AssetType.IMAGE);
		className.set ("assets/images/door.png", __ASSET__assets_images_door_png);
		type.set ("assets/images/door.png", AssetType.IMAGE);
		className.set ("assets/images/drawer_activity1.png", __ASSET__assets_images_drawer_activity1_png);
		type.set ("assets/images/drawer_activity1.png", AssetType.IMAGE);
		className.set ("assets/images/elevator.png", __ASSET__assets_images_elevator_png);
		type.set ("assets/images/elevator.png", AssetType.IMAGE);
		className.set ("assets/images/frontdoor.png", __ASSET__assets_images_frontdoor_png);
		type.set ("assets/images/frontdoor.png", AssetType.IMAGE);
		className.set ("assets/images/healthcareworker-0.png", __ASSET__assets_images_healthcareworker_0_png);
		type.set ("assets/images/healthcareworker-0.png", AssetType.IMAGE);
		className.set ("assets/images/healthcareworker-1.png", __ASSET__assets_images_healthcareworker_1_png);
		type.set ("assets/images/healthcareworker-1.png", AssetType.IMAGE);
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		className.set ("assets/images/instructionscreen1.png", __ASSET__assets_images_instructionscreen1_png);
		type.set ("assets/images/instructionscreen1.png", AssetType.IMAGE);
		className.set ("assets/images/instructionscreen2.png", __ASSET__assets_images_instructionscreen2_png);
		type.set ("assets/images/instructionscreen2.png", AssetType.IMAGE);
		className.set ("assets/images/instructionscreen3.png", __ASSET__assets_images_instructionscreen3_png);
		type.set ("assets/images/instructionscreen3.png", AssetType.IMAGE);
		className.set ("assets/images/instructionscreenactivity1.png", __ASSET__assets_images_instructionscreenactivity1_png);
		type.set ("assets/images/instructionscreenactivity1.png", AssetType.IMAGE);
		className.set ("assets/images/lift_Activity1.png", __ASSET__assets_images_lift_activity1_png);
		type.set ("assets/images/lift_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/menuscreen.png", __ASSET__assets_images_menuscreen_png);
		type.set ("assets/images/menuscreen.png", AssetType.IMAGE);
		className.set ("assets/images/nextbutton.png", __ASSET__assets_images_nextbutton_png);
		type.set ("assets/images/nextbutton.png", AssetType.IMAGE);
		className.set ("assets/images/plant.png", __ASSET__assets_images_plant_png);
		type.set ("assets/images/plant.png", AssetType.IMAGE);
		className.set ("assets/images/player-0.png", __ASSET__assets_images_player_0_png);
		type.set ("assets/images/player-0.png", AssetType.IMAGE);
		className.set ("assets/images/player-1.png", __ASSET__assets_images_player_1_png);
		type.set ("assets/images/player-1.png", AssetType.IMAGE);
		className.set ("assets/images/pull0_Activity1.png", __ASSET__assets_images_pull0_activity1_png);
		type.set ("assets/images/pull0_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/pull1_Activity1.png", __ASSET__assets_images_pull1_activity1_png);
		type.set ("assets/images/pull1_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/push0_Activity1.png", __ASSET__assets_images_push0_activity1_png);
		type.set ("assets/images/push0_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/push1_Activity1.png", __ASSET__assets_images_push1_activity1_png);
		type.set ("assets/images/push1_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/selectbutton.png", __ASSET__assets_images_selectbutton_png);
		type.set ("assets/images/selectbutton.png", AssetType.IMAGE);
		className.set ("assets/images/Tile_sheet.png", __ASSET__assets_images_tile_sheet_png);
		type.set ("assets/images/Tile_sheet.png", AssetType.IMAGE);
		className.set ("assets/images/toolbutton1_Activity1.png", __ASSET__assets_images_toolbutton1_activity1_png);
		type.set ("assets/images/toolbutton1_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/toolbutton2_Activity1.png", __ASSET__assets_images_toolbutton2_activity1_png);
		type.set ("assets/images/toolbutton2_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/trolly_Activity1.png", __ASSET__assets_images_trolly_activity1_png);
		type.set ("assets/images/trolly_Activity1.png", AssetType.IMAGE);
		className.set ("assets/images/wall.png", __ASSET__assets_images_wall_png);
		type.set ("assets/images/wall.png", AssetType.IMAGE);
		className.set ("assets/images/wrong.png", __ASSET__assets_images_wrong_png);
		type.set ("assets/images/wrong.png", AssetType.IMAGE);
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/data-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ogmolevel/easyLvl.oel";
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
		id = "assets/images/buttonAnneloes - kopie.png";
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
		id = "assets/images/toolbutton1_Activity1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/toolbutton2_Activity1.png";
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
		id = "assets/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		
		
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
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/data/ogmolevel/easyLvl.oel", __ASSET__assets_data_ogmolevel_easylvl_oel);
		type.set ("assets/data/ogmolevel/easyLvl.oel", AssetType.TEXT);
		
		className.set ("assets/data/ogmolevel/easyLvl1.oel", __ASSET__assets_data_ogmolevel_easylvl1_oel);
		type.set ("assets/data/ogmolevel/easyLvl1.oel", AssetType.TEXT);
		
		className.set ("assets/data/ogmolevel/easyLvl2.oel", __ASSET__assets_data_ogmolevel_easylvl2_oel);
		type.set ("assets/data/ogmolevel/easyLvl2.oel", AssetType.TEXT);
		
		className.set ("assets/data/ogmolevel/virtual care.oep", __ASSET__assets_data_ogmolevel_virtual_care_oep);
		type.set ("assets/data/ogmolevel/virtual care.oep", AssetType.TEXT);
		
		className.set ("assets/images/backbutton.png", __ASSET__assets_images_backbutton_png);
		type.set ("assets/images/backbutton.png", AssetType.IMAGE);
		
		className.set ("assets/images/background_activity1.png", __ASSET__assets_images_background_activity1_png);
		type.set ("assets/images/background_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/backtobutton.png", __ASSET__assets_images_backtobutton_png);
		type.set ("assets/images/backtobutton.png", AssetType.IMAGE);
		
		className.set ("assets/images/bed.png", __ASSET__assets_images_bed_png);
		type.set ("assets/images/bed.png", AssetType.IMAGE);
		
		className.set ("assets/images/bed_activity1.png", __ASSET__assets_images_bed_activity1_png);
		type.set ("assets/images/bed_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/boxtrolly_activity1.png", __ASSET__assets_images_boxtrolly_activity1_png);
		type.set ("assets/images/boxtrolly_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/box_activity1.png", __ASSET__assets_images_box_activity1_png);
		type.set ("assets/images/box_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/button.png", __ASSET__assets_images_button_png);
		type.set ("assets/images/button.png", AssetType.IMAGE);
		
		className.set ("assets/images/buttonAnneloes - kopie.png", __ASSET__assets_images_buttonanneloes___kopie_png);
		type.set ("assets/images/buttonAnneloes - kopie.png", AssetType.IMAGE);
		
		className.set ("assets/images/buttonAnneloes.png", __ASSET__assets_images_buttonanneloes_png);
		type.set ("assets/images/buttonAnneloes.png", AssetType.IMAGE);
		
		className.set ("assets/images/buttonCredits.png", __ASSET__assets_images_buttoncredits_png);
		type.set ("assets/images/buttonCredits.png", AssetType.IMAGE);
		
		className.set ("assets/images/buttonJoep.png", __ASSET__assets_images_buttonjoep_png);
		type.set ("assets/images/buttonJoep.png", AssetType.IMAGE);
		
		className.set ("assets/images/buttonOptions.png", __ASSET__assets_images_buttonoptions_png);
		type.set ("assets/images/buttonOptions.png", AssetType.IMAGE);
		
		className.set ("assets/images/chair_activity1.png", __ASSET__assets_images_chair_activity1_png);
		type.set ("assets/images/chair_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/clock.png", __ASSET__assets_images_clock_png);
		type.set ("assets/images/clock.png", AssetType.IMAGE);
		
		className.set ("assets/images/correct.jpg", __ASSET__assets_images_correct_jpg);
		type.set ("assets/images/correct.jpg", AssetType.IMAGE);
		
		className.set ("assets/images/door.png", __ASSET__assets_images_door_png);
		type.set ("assets/images/door.png", AssetType.IMAGE);
		
		className.set ("assets/images/drawer_activity1.png", __ASSET__assets_images_drawer_activity1_png);
		type.set ("assets/images/drawer_activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/elevator.png", __ASSET__assets_images_elevator_png);
		type.set ("assets/images/elevator.png", AssetType.IMAGE);
		
		className.set ("assets/images/frontdoor.png", __ASSET__assets_images_frontdoor_png);
		type.set ("assets/images/frontdoor.png", AssetType.IMAGE);
		
		className.set ("assets/images/healthcareworker-0.png", __ASSET__assets_images_healthcareworker_0_png);
		type.set ("assets/images/healthcareworker-0.png", AssetType.IMAGE);
		
		className.set ("assets/images/healthcareworker-1.png", __ASSET__assets_images_healthcareworker_1_png);
		type.set ("assets/images/healthcareworker-1.png", AssetType.IMAGE);
		
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/images/instructionscreen1.png", __ASSET__assets_images_instructionscreen1_png);
		type.set ("assets/images/instructionscreen1.png", AssetType.IMAGE);
		
		className.set ("assets/images/instructionscreen2.png", __ASSET__assets_images_instructionscreen2_png);
		type.set ("assets/images/instructionscreen2.png", AssetType.IMAGE);
		
		className.set ("assets/images/instructionscreen3.png", __ASSET__assets_images_instructionscreen3_png);
		type.set ("assets/images/instructionscreen3.png", AssetType.IMAGE);
		
		className.set ("assets/images/instructionscreenactivity1.png", __ASSET__assets_images_instructionscreenactivity1_png);
		type.set ("assets/images/instructionscreenactivity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/lift_Activity1.png", __ASSET__assets_images_lift_activity1_png);
		type.set ("assets/images/lift_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/menuscreen.png", __ASSET__assets_images_menuscreen_png);
		type.set ("assets/images/menuscreen.png", AssetType.IMAGE);
		
		className.set ("assets/images/nextbutton.png", __ASSET__assets_images_nextbutton_png);
		type.set ("assets/images/nextbutton.png", AssetType.IMAGE);
		
		className.set ("assets/images/plant.png", __ASSET__assets_images_plant_png);
		type.set ("assets/images/plant.png", AssetType.IMAGE);
		
		className.set ("assets/images/player-0.png", __ASSET__assets_images_player_0_png);
		type.set ("assets/images/player-0.png", AssetType.IMAGE);
		
		className.set ("assets/images/player-1.png", __ASSET__assets_images_player_1_png);
		type.set ("assets/images/player-1.png", AssetType.IMAGE);
		
		className.set ("assets/images/pull0_Activity1.png", __ASSET__assets_images_pull0_activity1_png);
		type.set ("assets/images/pull0_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/pull1_Activity1.png", __ASSET__assets_images_pull1_activity1_png);
		type.set ("assets/images/pull1_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/push0_Activity1.png", __ASSET__assets_images_push0_activity1_png);
		type.set ("assets/images/push0_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/push1_Activity1.png", __ASSET__assets_images_push1_activity1_png);
		type.set ("assets/images/push1_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/selectbutton.png", __ASSET__assets_images_selectbutton_png);
		type.set ("assets/images/selectbutton.png", AssetType.IMAGE);
		
		className.set ("assets/images/Tile_sheet.png", __ASSET__assets_images_tile_sheet_png);
		type.set ("assets/images/Tile_sheet.png", AssetType.IMAGE);
		
		className.set ("assets/images/toolbutton1_Activity1.png", __ASSET__assets_images_toolbutton1_activity1_png);
		type.set ("assets/images/toolbutton1_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/toolbutton2_Activity1.png", __ASSET__assets_images_toolbutton2_activity1_png);
		type.set ("assets/images/toolbutton2_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/trolly_Activity1.png", __ASSET__assets_images_trolly_activity1_png);
		type.set ("assets/images/trolly_Activity1.png", AssetType.IMAGE);
		
		className.set ("assets/images/wall.png", __ASSET__assets_images_wall_png);
		type.set ("assets/images/wall.png", AssetType.IMAGE);
		
		className.set ("assets/images/wrong.png", __ASSET__assets_images_wrong_png);
		type.set ("assets/images/wrong.png", AssetType.IMAGE);
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		
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

@:keep @:bind #if display private #end class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ogmolevel_easylvl_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ogmolevel_easylvl1_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ogmolevel_easylvl2_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ogmolevel_virtual_care_oep extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_backbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_background_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_backtobutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_bed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_bed_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_boxtrolly_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_box_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_buttonanneloes___kopie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_buttonanneloes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_buttoncredits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_buttonjoep_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_buttonoptions_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_chair_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_clock_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_correct_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_door_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_drawer_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_elevator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_frontdoor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_healthcareworker_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_healthcareworker_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_instructionscreen1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_instructionscreen2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_instructionscreen3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_instructionscreenactivity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_lift_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_menuscreen_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_nextbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_plant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_player_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_player_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pull0_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pull1_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_push0_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_push1_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_selectbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_tile_sheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_toolbutton1_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_toolbutton2_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_trolly_activity1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_wall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_wrong_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends flash.media.Sound { }


#elseif html5
























































#else



#if (windows || mac || linux)


@:file("assets/data/data-goes-here.txt") #if display private #end class __ASSET__assets_data_data_goes_here_txt extends lime.utils.ByteArray {}
@:file("assets/data/ogmolevel/easyLvl.oel") #if display private #end class __ASSET__assets_data_ogmolevel_easylvl_oel extends lime.utils.ByteArray {}
@:file("assets/data/ogmolevel/easyLvl1.oel") #if display private #end class __ASSET__assets_data_ogmolevel_easylvl1_oel extends lime.utils.ByteArray {}
@:file("assets/data/ogmolevel/easyLvl2.oel") #if display private #end class __ASSET__assets_data_ogmolevel_easylvl2_oel extends lime.utils.ByteArray {}
@:file("assets/data/ogmolevel/virtual care.oep") #if display private #end class __ASSET__assets_data_ogmolevel_virtual_care_oep extends lime.utils.ByteArray {}
@:image("assets/images/backbutton.png") #if display private #end class __ASSET__assets_images_backbutton_png extends lime.graphics.Image {}
@:image("assets/images/background_activity1.png") #if display private #end class __ASSET__assets_images_background_activity1_png extends lime.graphics.Image {}
@:image("assets/images/backtobutton.png") #if display private #end class __ASSET__assets_images_backtobutton_png extends lime.graphics.Image {}
@:image("assets/images/bed.png") #if display private #end class __ASSET__assets_images_bed_png extends lime.graphics.Image {}
@:image("assets/images/bed_activity1.png") #if display private #end class __ASSET__assets_images_bed_activity1_png extends lime.graphics.Image {}
@:image("assets/images/boxtrolly_activity1.png") #if display private #end class __ASSET__assets_images_boxtrolly_activity1_png extends lime.graphics.Image {}
@:image("assets/images/box_activity1.png") #if display private #end class __ASSET__assets_images_box_activity1_png extends lime.graphics.Image {}
@:image("assets/images/button.png") #if display private #end class __ASSET__assets_images_button_png extends lime.graphics.Image {}
@:image("assets/images/buttonAnneloes - kopie.png") #if display private #end class __ASSET__assets_images_buttonanneloes___kopie_png extends lime.graphics.Image {}
@:image("assets/images/buttonAnneloes.png") #if display private #end class __ASSET__assets_images_buttonanneloes_png extends lime.graphics.Image {}
@:image("assets/images/buttonCredits.png") #if display private #end class __ASSET__assets_images_buttoncredits_png extends lime.graphics.Image {}
@:image("assets/images/buttonJoep.png") #if display private #end class __ASSET__assets_images_buttonjoep_png extends lime.graphics.Image {}
@:image("assets/images/buttonOptions.png") #if display private #end class __ASSET__assets_images_buttonoptions_png extends lime.graphics.Image {}
@:image("assets/images/chair_activity1.png") #if display private #end class __ASSET__assets_images_chair_activity1_png extends lime.graphics.Image {}
@:image("assets/images/clock.png") #if display private #end class __ASSET__assets_images_clock_png extends lime.graphics.Image {}
@:image("assets/images/correct.jpg") #if display private #end class __ASSET__assets_images_correct_jpg extends lime.graphics.Image {}
@:image("assets/images/door.png") #if display private #end class __ASSET__assets_images_door_png extends lime.graphics.Image {}
@:image("assets/images/drawer_activity1.png") #if display private #end class __ASSET__assets_images_drawer_activity1_png extends lime.graphics.Image {}
@:image("assets/images/elevator.png") #if display private #end class __ASSET__assets_images_elevator_png extends lime.graphics.Image {}
@:image("assets/images/frontdoor.png") #if display private #end class __ASSET__assets_images_frontdoor_png extends lime.graphics.Image {}
@:image("assets/images/healthcareworker-0.png") #if display private #end class __ASSET__assets_images_healthcareworker_0_png extends lime.graphics.Image {}
@:image("assets/images/healthcareworker-1.png") #if display private #end class __ASSET__assets_images_healthcareworker_1_png extends lime.graphics.Image {}
@:file("assets/images/images-go-here.txt") #if display private #end class __ASSET__assets_images_images_go_here_txt extends lime.utils.ByteArray {}
@:image("assets/images/instructionscreen1.png") #if display private #end class __ASSET__assets_images_instructionscreen1_png extends lime.graphics.Image {}
@:image("assets/images/instructionscreen2.png") #if display private #end class __ASSET__assets_images_instructionscreen2_png extends lime.graphics.Image {}
@:image("assets/images/instructionscreen3.png") #if display private #end class __ASSET__assets_images_instructionscreen3_png extends lime.graphics.Image {}
@:image("assets/images/instructionscreenactivity1.png") #if display private #end class __ASSET__assets_images_instructionscreenactivity1_png extends lime.graphics.Image {}
@:image("assets/images/lift_Activity1.png") #if display private #end class __ASSET__assets_images_lift_activity1_png extends lime.graphics.Image {}
@:image("assets/images/menuscreen.png") #if display private #end class __ASSET__assets_images_menuscreen_png extends lime.graphics.Image {}
@:image("assets/images/nextbutton.png") #if display private #end class __ASSET__assets_images_nextbutton_png extends lime.graphics.Image {}
@:image("assets/images/plant.png") #if display private #end class __ASSET__assets_images_plant_png extends lime.graphics.Image {}
@:image("assets/images/player-0.png") #if display private #end class __ASSET__assets_images_player_0_png extends lime.graphics.Image {}
@:image("assets/images/player-1.png") #if display private #end class __ASSET__assets_images_player_1_png extends lime.graphics.Image {}
@:image("assets/images/pull0_Activity1.png") #if display private #end class __ASSET__assets_images_pull0_activity1_png extends lime.graphics.Image {}
@:image("assets/images/pull1_Activity1.png") #if display private #end class __ASSET__assets_images_pull1_activity1_png extends lime.graphics.Image {}
@:image("assets/images/push0_Activity1.png") #if display private #end class __ASSET__assets_images_push0_activity1_png extends lime.graphics.Image {}
@:image("assets/images/push1_Activity1.png") #if display private #end class __ASSET__assets_images_push1_activity1_png extends lime.graphics.Image {}
@:image("assets/images/selectbutton.png") #if display private #end class __ASSET__assets_images_selectbutton_png extends lime.graphics.Image {}
@:image("assets/images/Tile_sheet.png") #if display private #end class __ASSET__assets_images_tile_sheet_png extends lime.graphics.Image {}
@:image("assets/images/toolbutton1_Activity1.png") #if display private #end class __ASSET__assets_images_toolbutton1_activity1_png extends lime.graphics.Image {}
@:image("assets/images/toolbutton2_Activity1.png") #if display private #end class __ASSET__assets_images_toolbutton2_activity1_png extends lime.graphics.Image {}
@:image("assets/images/trolly_Activity1.png") #if display private #end class __ASSET__assets_images_trolly_activity1_png extends lime.graphics.Image {}
@:image("assets/images/wall.png") #if display private #end class __ASSET__assets_images_wall_png extends lime.graphics.Image {}
@:image("assets/images/wrong.png") #if display private #end class __ASSET__assets_images_wrong_png extends lime.graphics.Image {}
@:file("assets/music/music-goes-here.txt") #if display private #end class __ASSET__assets_music_music_goes_here_txt extends lime.utils.ByteArray {}
@:file("assets/sounds/sounds-go-here.txt") #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends lime.utils.ByteArray {}
@:file("D:/Haxe Toolkit/haxe/lib/flixel/3,3,8/assets/sounds/beep.mp3") #if display private #end class __ASSET__assets_sounds_beep_mp3 extends lime.utils.ByteArray {}
@:file("D:/Haxe Toolkit/haxe/lib/flixel/3,3,8/assets/sounds/flixel.mp3") #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends lime.utils.ByteArray {}



#end

#if openfl

#end

#end
#end

