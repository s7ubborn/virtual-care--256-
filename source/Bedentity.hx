package;

import flixel.FlxSprite;

/**
 * ...
 * @author 
 */
class Bedentity extends FlxSprite
{

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		loadGraphic("assets/images/bed.png");
		setSize(298, 440);
		offset.x = 44;
		immovable = true;
	}	
}