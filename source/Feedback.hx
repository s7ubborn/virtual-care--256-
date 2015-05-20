package;

import flixel.FlxSprite;

/**
 * ...
 * @author Bokata
 */
class Feedback extends FlxSprite
{
	public function new() 
	{
		super();
	}
	
	public function correctAnswer():Void
	{
		loadGraphic("assets/images/correct.jpg");
	}
	
	public function wrongAnswer():Void
	{
		loadGraphic("assets/images/wrong.png");
	}
	
	
}