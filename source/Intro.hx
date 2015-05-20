package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxDestroyUtil;

/**
 * ...
 * @author 
 */
class Intro extends FlxState
{
	private var buttonBw:FlxButton;
	private var buttonFw:FlxButton;
	private var back:Background;
	
	public function new() 
	{
		super();
	}
	
	override public function create():Void
	{
		screen1();
	}
	
	private function screen1():Void
	{
		remove(buttonFw);
		remove(buttonBw);
		remove(back);
		
		back = new Background();
		back.instruction1();
		add(back);
		
		buttonFw = new FlxButton(0, 0, "", screen2);
		buttonFw.loadGraphic("assets/images/nextbutton.png");
		buttonFw.x = 1400;
		buttonFw.y = 1300;
		add(buttonFw);
		
		buttonBw = new FlxButton(0, 0, "", clickBw);
		buttonBw.loadGraphic("assets/images/backtobutton.png");
		buttonBw.x = 136;
		buttonBw.y = 1300;
		add(buttonBw);
	}
	
	private function screen2():Void
	{
		remove(buttonFw);
		remove(buttonBw);
		remove(back);
		
		back.instruction2();
		add(back);
		
		buttonFw = new FlxButton(0, 0, "", screen3);
		buttonFw.loadGraphic("assets/images/nextbutton.png");
		buttonFw.x = 1400;
		buttonFw.y = 1300;
		add(buttonFw);
		
		buttonBw = new FlxButton(0, 0, "", screen1);
		buttonBw.loadGraphic("assets/images/backbutton.png");
		buttonBw.x = 136;
		buttonBw.y = 1300;
		add(buttonBw);
	}
	
	private function screen3():Void
	{
		remove(buttonFw);
		remove(buttonBw);
		remove(back);
		
		back.instruction3();
		add(back);
		
		buttonFw = new FlxButton(0, 0, "", clickFw);
		buttonFw.loadGraphic("assets/images/selectbutton.png");
		buttonFw.x = 832;
		buttonFw.y = 1300;
		add(buttonFw);
		
		buttonBw = new FlxButton(0, 0, "", screen2);
		buttonBw.loadGraphic("assets/images/backbutton.png");
		buttonBw.x = 136;
		buttonBw.y = 1300;
		add(buttonBw);
	}
	
	private function clickBw():Void
	{
		FlxG.switchState(new MenuState());
	}
	
	private function clickFw():Void
	{
		FlxG.switchState(new Playerchoosing());
	}
	
	override public function update():Void
	{
		super.update();
	}
}