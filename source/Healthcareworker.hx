package ;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxAngle;
import flixel.util.FlxRandom;
import flixel.util.FlxVelocity;

/**
 * ...
 * @author jef
 */

// The healthcareworker gets drawn and walks
class Healthcareworker extends FlxSprite
{
	public var activeState:FSM;
	public var htype(default, null):Int;
	public var speed:Float = 750;
	
	private var idleTimer:Float;
	private var moveDirection:Float;
	private var overworld:Overworld;
	
	// The spawning and animation
	public function new(X:Float=0, Y:Float=0, Htype:Int) 
	{
		super(X, Y);
		htype = Htype;
		loadGraphic("assets/images/player-" + Std.string(htype) + ".png", true, 256, 256); 
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		animation.add("d", [1, 0, 2, 0], 5, false);
		animation.add("u", [4, 3, 5, 3], 5, false);
		animation.add("lr", [7, 6, 8, 6], 5, false);
		drag.x = drag.y = 1600;
		setSize(192, 256);
		offset.x = 32;
		
		activeState = new FSM(idle);
		idleTimer = 0;
	}
	
	// The facing of the character in certain directions
	override public function draw():Void
	{
		if ((velocity.x != 0 || velocity.y != 0) && touching == FlxObject.NONE)
		{
			if (Math.abs(velocity.x) > Math.abs(velocity.y))
			{
				if (velocity.x < 0)
				{
					facing = FlxObject.LEFT;
				}
				else
				{
					facing = FlxObject.RIGHT;
				}
			}
			else
			{
				if (velocity.y < 0)
				{
					facing = FlxObject.UP;
				}
				else
				{
					facing = FlxObject.DOWN;
				}
			}
			
			switch (facing)
			{
				case FlxObject.LEFT, FlxObject.RIGHT: animation.play("lr");
				case FlxObject.UP: animation.play("u");
				case FlxObject.DOWN: animation.play("d");
			}
		}
		
		super.draw();
	}
	
	// The walking of the character
	public function idle():Void
	{
		if (idleTimer <= 0)
		{
			if (FlxRandom.chanceRoll(1))
			{
				moveDirection = -1;
				velocity.x = velocity.y = 0;
			}
			else
			{
				moveDirection = FlxRandom.intRanged(512, 1536) * 45;
				FlxAngle.rotatePoint(speed * 1, 0, 0, 0, moveDirection, velocity);
			}
			
			idleTimer = FlxRandom.intRanged(1, 4);
		}
		else
		{
			idleTimer -= FlxG.elapsed;
		}
	}
	
	override public function update():Void
	{
		activeState.update();
		super.update();
	}
}