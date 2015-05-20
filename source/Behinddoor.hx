package;

import flixel.FlxSprite;

/**
 * ...
 * @author ...
 */

class Behinddoor extends FlxSprite
{
	public function new(X:Float=0, Y:Float=0):Void
	{
		super(X, Y);
		loadGraphic("assets/images/wall.png");
		setSize(256, 50);
		offset.y = 128;
		immovable = true;
	}
}