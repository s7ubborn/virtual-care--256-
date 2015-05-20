package;

import flixel.FlxSprite;

/**
 * ...
 * @author ...
 */

// The class for the elevator
class Elevatorentity extends FlxSprite
{

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		loadGraphic("assets/images/elevator.png");
	}
	
}