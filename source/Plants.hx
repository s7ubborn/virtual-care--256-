package;

import flixel.FlxSprite;

/**
 * ...
 * @author 
 */

 // implements the plants
class Plants extends FlxSprite
{
	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		loadGraphic("assets/images/plant.png");
		setSize(128, 200);
		immovable = true;
	}
}