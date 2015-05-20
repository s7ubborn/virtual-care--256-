package;

import flixel.FlxSprite;

/**
 * ...
 * @author 
 */
class Frontdoorentity extends FlxSprite
{

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		loadGraphic("assets/images/frontdoor.png");
	}
	
}