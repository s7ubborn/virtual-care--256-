package ;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxAngle;
import flixel.util.FlxColor;


/**
 * ...
 * @author jef
 */

// The player character gets drawn and the moving is implemented
class Player extends FlxSprite
{	
	public var speed:Float = 850;
	private var playerChosen:Int = 2;

	// The player character gets draw and animated
	public function new(JoeporAnneloes:Int, X:Float=0, Y:Float=0) 
	{
		playerChosen = JoeporAnneloes;
		super(X, Y);
		loadGraphic("assets/images/player-" + Std.string(playerChosen)  + ".png", true, 256, 256);
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		animation.add("d", [1, 0, 2, 0], 5, false);
		animation.add("u", [4, 3, 5, 3], 5, false);
		animation.add("lr", [7, 6, 8, 6], 5, false);
		drag.x = drag.y = 1600;	
		setSize(192, 128);
		offset.x = 32;
		offset.y = 128;
	}
	
	// Implement the movement and the facing of teh character
	private function movement():Void 
	{
		var up:Bool = false;
		var down:Bool = false;
		var left:Bool = false;
		var right:Bool = false;
		
		up = FlxG.keys.anyPressed(["UP"]);
		down = FlxG.keys.anyPressed(["DOWN"]);
		left = FlxG.keys.anyPressed(["LEFT"]);
		right = FlxG.keys.anyPressed(["RIGHT"]);
		
		if (up && down)
		{
			up = down = false;
		}
		
		if (left && right)
		{
			left = right = false;
		}
		
		if (up || down || left || right)
		{
			velocity.x = speed;
			velocity.y = speed;
			
			var mA:Float = 0;	
			if (up)
			{
				mA = -90;
				if (left)
				{
					mA -= 45;
				}
				else if (right)
				{
					mA += 45;
				}
				facing = FlxObject.UP;
			}
			else if (down)
			{
				mA = 90;
				if (left)
				{
					mA += 45;
				}
				else if (right)
				{
					mA -= 45;
				}
				facing = FlxObject.DOWN;
			}
			else if (left)
			{
				mA = 180;
				facing = FlxObject.LEFT;
			}
			else if (right)
			{
				mA = 0;
				facing = FlxObject.RIGHT;
			}
			
			FlxAngle.rotatePoint(speed, 0, 0, 0, mA, velocity);
			if ((velocity.x != 0 || velocity.y != 0) && touching == FlxObject.NONE)
			{
				switch(facing)
				{
					case FlxObject.LEFT, FlxObject.RIGHT: animation.play("lr");
					case FlxObject.UP: animation.play ("u");
					case FlxObject.DOWN: animation.play ("d");
				}
			}
		}
	}
	
	override function update()
	{
		movement();
		super.update();
	}
}