package;

import flixel.FlxSprite;

/**
 * ...
 * @author ...
 */

 // The class that loads all of the backgrounds
class Background extends FlxSprite
{

	public function new() 
	{
		super();
	}
	
	public function menuscreen():Void
	{
		loadGraphic("assets/images/menuscreen.png");
	}
	
	public function playerhoosing():Void
	{
		loadGraphic("assets/images/playerChhosing.png");
	}
	
	public function activity1():Void
	{
		loadGraphic("assets/images/background_activity1.png");
	}
	
	public function instructionscreenactivity1():Void
	{
		loadGraphic("assets/images/instructionscreenactivity1.png");
	}
	
	public function instruction1():Void
	{
		loadGraphic("assets/images/instructionscreen1.png");
	}
	
	public function instruction2():Void
	{
		loadGraphic("assets/images/instructionscreen2.png");
	}
	
	public function instruction3():Void
	{
		loadGraphic("assets/images/instructionscreen3.png");
	}
}