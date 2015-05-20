package;

import flixel.addons.editors.ogmo.FlxOgmoLoader;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class Overworld extends FlxState
{
	public var playerCharacter:Player;
	private var playerChosen:Int = 2;
	private var ogmoMap:FlxOgmoLoader;
	private var ogmoWalls:FlxTilemap;
	private var plants:FlxTypedGroup<Plantsentity>;
	public var healthCareWorker:FlxTypedGroup<Healthcareworker>;
	private var door:FlxTypedGroup<Doorentity>;
	private var elevator:FlxTypedGroup<Elevatorentity>;
	private var bed:FlxTypedGroup<Bedentity>;
	private var frontdoor:FlxTypedGroup<Frontdoorentity>;
	private var clock:FlxTypedGroup<Clockentity>;
	private var worldType = 1;
	private var behind:FlxTypedGroup<Behinddoor>;
	
	// The variable that says which character is 
	public function new(JoeporAnneloes, _worldType)
	{
		super();
		playerChosen = JoeporAnneloes;
		worldType = _worldType;
	}
	
	// Here it creates all of the world
	override public function create()
	{		
		ogmoMap = new FlxOgmoLoader("assets/data/ogmolevel/easyLvl"+ Std.string(worldType) + ".oel");
		ogmoWalls = ogmoMap.loadTilemap("assets/images/Tile_sheet.png", 256, 256, "Tiles");
		ogmoWalls.setTileProperties(1, FlxObject.ANY);
		ogmoWalls.setTileProperties(2, FlxObject.ANY);
		ogmoWalls.setTileProperties(3, FlxObject.ANY);
		ogmoWalls.setTileProperties(4, FlxObject.NONE);
		ogmoWalls.setTileProperties(5, FlxObject.ANY);
		ogmoWalls.setTileProperties(6, FlxObject.ANY);
		ogmoWalls.setTileProperties(7, FlxObject.ANY);
		ogmoWalls.setTileProperties(8, FlxObject.ANY);
		ogmoWalls.setTileProperties(9, FlxObject.ANY);
		ogmoWalls.setTileProperties(10, FlxObject.ANY);
		ogmoWalls.setTileProperties(11, FlxObject.ANY);
		ogmoWalls.setTileProperties(12, FlxObject.ANY);
		ogmoWalls.setTileProperties(13, FlxObject.ANY);
		ogmoWalls.setTileProperties(14, FlxObject.ANY);
		ogmoWalls.setTileProperties(15, FlxObject.ANY);
		add(ogmoWalls);
		
		behind = new FlxTypedGroup<Behinddoor>();
		add(behind);
		
		door = new FlxTypedGroup<Doorentity>();
		add(door);
		
		plants = new FlxTypedGroup<Plantsentity>();
		add(plants);
		
		bed = new FlxTypedGroup<Bedentity>();
		add(bed);
		
		clock = new FlxTypedGroup<Clockentity>();
		add(clock);
		
		frontdoor = new FlxTypedGroup<Frontdoorentity>();
		add(frontdoor);
		
		elevator = new FlxTypedGroup<Elevatorentity>();
		add(elevator);
		
		healthCareWorker = new FlxTypedGroup<Healthcareworker>();
		add(healthCareWorker);
		
		playerCharacter = new Player(playerChosen);
		add(playerCharacter);
		FlxG.camera.follow(playerCharacter, FlxCamera.STYLE_TOPDOWN_TIGHT);
		
		ogmoMap.loadEntities(placeEntities, "Entities");
		super.create();
	}

	// Placing of all of the entities
	private function placeEntities(entityName:String, entityData:Xml):Void
	{
		if (entityName == "player")
		{
			playerCharacter.x = Std.parseInt(entityData.get("x")) + 32;
			playerCharacter.y = Std.parseInt(entityData.get("y"));
		}
		else if (entityName == "healthcareworker")
		{			
			healthCareWorker.add(new Healthcareworker(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y")), Std.parseInt(entityData.get("htype"))));
		}
		else if (entityName == "door")
		{
			door.add(new Doorentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "elevator")
		{
			elevator.add(new Elevatorentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "plant")
		{
			plants.add(new Plantsentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "bed")
		{
			bed.add(new Bedentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "clock")
		{
			clock.add(new Clockentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "frontdoor")
		{
			frontdoor.add(new Frontdoorentity(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
		else if (entityName == "behind")
		{
			behind.add(new Behinddoor(Std.parseInt(entityData.get("x")), Std.parseInt(entityData.get("y"))));
		}
	}
	
	// Start activity number 1
	private function activity1():Void
	{
		var zPressed:Bool = false;
		zPressed = FlxG.keys.anyPressed(["Z"]);
		
		if (/*FlxG.overlap(door, playerCharacter) && */zPressed)
		{
			FlxG.switchState(new Instructionscreen1(playerChosen));
		}
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}
	
	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		collide(); 
		activity1();
	}
	
	// Every collide function that it needs to check for
	private function collide():Void
	{
		FlxG.collide(playerCharacter, ogmoWalls);
		FlxG.collide(healthCareWorker, ogmoWalls);
		FlxG.collide(healthCareWorker, plants);
		FlxG.collide(playerCharacter, plants);
		FlxG.collide(playerCharacter, bed);
		FlxG.collide(playerCharacter, behind);
	}
}