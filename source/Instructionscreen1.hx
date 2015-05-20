package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;

/**
 * ...
 * @author 
 */
class Instructionscreen1 extends FlxState
{
	private var playerChosen = 2;
	private var back:Background;
	private var buttoncontinue:FlxButton;
	
	public function new(JoeporAnneloes) 
	{
		super();
		playerChosen = JoeporAnneloes;
	}
	
	override public function create():Void
	{
		back = new Background();
		back.instructionscreenactivity1();
		add(back);
		
		buttoncontinue = new FlxButton(0, 0, "", continue_activity1);
		buttoncontinue.loadGraphic("assets/images/nextbutton.png");
		buttoncontinue.x = 1400;
		buttoncontinue.y = 1300;
		add(buttoncontinue);
	}
	
	private function continue_activity1():Void
	{
		FlxG.switchState(new Activity1(playerChosen));
	}
	
	override public function update():Void
	{
		super.update();
	}
}