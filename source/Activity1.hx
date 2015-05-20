package;

import flixel.addons.display.shapes.FlxShapeBox;
import flixel.effects.FlxSpriteFilter;
import flixel.FlxG;
import flixel.FlxState;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxDestroyUtil;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.group.FlxTypedGroup;
import openfl.filters.GlowFilter;

/**
 * ...
 * @author Jef
 */
class Activity1 extends FlxState
{
	private var playerChosen = 2;
	private var activityDone = 0;
	private var pPressed:Bool = false;
	private var buttonChair:FlxButton;
	private var buttonBox:FlxButton;
	private var buttonDrawer:FlxButton;
	private var buttonlifting1:FlxButton;
	private var buttonlifting2:FlxButton;
	private var buttonlifting3:FlxButton;
	private var buttonlifting4:FlxButton;
	private var buttonClicked = 7;
	private var objectRemaining = 4;
	private var lifting = 7;
	private var correctFeedback:FlxSprite;
	private var wrongFeedback:FlxSprite;
	private var mistakes = 0;
	private var backgrounds:Background;
	private var buttonBed:FlxButton;
	private var box:Box;
	private var outlineDrawer:FlxSpriteFilter;
	private var outlineBox:FlxSpriteFilter;
	private var outlineBed:FlxSpriteFilter;
	private var outlineChair:FlxSpriteFilter;
	private var filter2:GlowFilter;
	
	public function new(JoepotAnneloes) 
	{
		super();
		playerChosen = JoepotAnneloes;
	}
	
	override public function create():Void
	{
		backgrounds = new Background();
		backgrounds.activity1();
		add(backgrounds);
		
		buttonDrawer = new FlxButton(0, 0, "", clickDrawer);
		buttonDrawer.loadGraphic("assets/images/drawer_activity1.png");
		buttonDrawer.x = 1500;
		buttonDrawer.y = 565;
		add(buttonDrawer);
		
		buttonBed = new FlxButton(0, 0, "", clickBed);
		buttonBed.loadGraphic("assets/images/bed_activity1.png");
		buttonBed.x = 1170;
		buttonBed.y = 550;
		add(buttonBed);
		
		buttonBox = new FlxButton(0, 0, "", clickBox);
		buttonBox.loadGraphic("assets/images/box_activity1.png");
		buttonBox.x = 850;
		buttonBox.y = 550;
		add(buttonBox);
		
		buttonChair = new FlxButton(0, 0, "", clickChair);
		buttonChair.loadGraphic("assets/images/chair_activity1.png");
		buttonChair.x = 1700;
		buttonChair.y = 600;
		add(buttonChair);
		
		buttonlifting1 = new FlxButton(0, 0, "", clickLifting1);
		buttonlifting1.loadGraphic("assets/images/pull" + Std.string(playerChosen) + "_Activity1.png");
		buttonlifting1.x = 247;
		buttonlifting1.y = 1182;
		add(buttonlifting1);
		
		buttonlifting2 = new FlxButton(0, 0, "", clickLifting2);
		buttonlifting2.loadGraphic("assets/images/trolly_Activity1.png");
		buttonlifting2.x = 530;
		buttonlifting2.y = 1182;
		add(buttonlifting2);
		
		buttonlifting3 = new FlxButton(0, 0, "", clickLifting3);
		buttonlifting3.loadGraphic("assets/images/push" + Std.string(playerChosen) + "_Activity1.png");
		buttonlifting3.x = 813;
		buttonlifting3.y = 1182;
		add(buttonlifting3);
		
		buttonlifting4 = new FlxButton(0, 0, "", clickLifting4);
		buttonlifting4.loadGraphic("assets/images/lift_Activity1.png");
		buttonlifting4.x = 1096;
		buttonlifting4.y = 1182;
		add(buttonlifting4);
		

		filter2 = new GlowFilter(0xFFFF99, 1, 50, 50, 1.5, 1, true);
		outlineDrawer = new FlxSpriteFilter(buttonDrawer);
		outlineBox = new FlxSpriteFilter(buttonBox);
		outlineChair = new FlxSpriteFilter(buttonChair);
		outlineBed = new FlxSpriteFilter(buttonBed);
	}
	
	private function clickDrawer():Void
	{
		buttonClicked = 0;
		glowing();
	}
	
	private function clickBox():Void
	{
		buttonClicked = 1;
		glowing();
	}
	
	private function clickChair():Void
	{
		buttonClicked = 2;
		glowing();
	}
	
	private function clickBed():Void
	{
		buttonClicked = 3;
		if (objectRemaining == 1)
		{
			glowing();
		}
	}
	
	private function clickLifting1():Void
	{
		lifting = 0;
		checkObject();
	}
	
	private function clickLifting2():Void
	{
		lifting = 1;
		checkObject();
	}
	
	private function clickLifting3():Void
	{
		lifting = 2;
		checkObject();
	}
	
	private function clickLifting4():Void
	{
		lifting = 3;
		checkObject();
	}
	
	private function checkObject():Void
	{
		if (buttonClicked == 0 && lifting == 0)
		{
			outlineDrawer.removeFilter(filter2);
			FlxTween.tween(buttonDrawer, { x:2200, y:565 }, 3, { complete: buttonDrawerdestroy });
			buttonClicked = 7;
			objectRemaining = objectRemaining - 1;
		}
		else if (buttonClicked == 0 && lifting == 1)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 0 && lifting == 2)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 0 && lifting == 3)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
			
		if (buttonClicked == 1 && lifting == 1)
		{
			outlineBox.removeFilter(filter2);
			buttonBox.loadGraphic("assets/images/boxtrolly_activity1.png");
			buttonBox.x = buttonBox.x - 34;
			FlxTween.tween(buttonBox, { x:500, y:550 }, 3, { complete: buttonBoxdestroy });
			buttonClicked = 7;
			objectRemaining = objectRemaining - 1;
		}
		else if (buttonClicked == 1 && lifting == 0)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 1 && lifting == 2)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 1 && lifting == 3)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		
		if (buttonClicked == 2 && lifting == 2)
		{
			outlineChair.removeFilter(filter2);
			FlxTween.tween(buttonChair, { x:2190, y:600 }, 2, { complete: buttonChairdestroy });
			buttonClicked = 7;
			objectRemaining = objectRemaining - 1;
		}
		else if (buttonClicked == 2 && lifting == 0)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 2 && lifting == 1)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 2 && lifting == 3)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
			
		if (buttonClicked == 3 && lifting == 3 && objectRemaining == 1)
		{
			FlxTween.tween(buttonBed, { x:1170, y:550 }, 0.5, { complete: buttonBeddestroy });
			buttonClicked = 7;
		}
		else if (buttonClicked == 3 && lifting == 0)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 3 && lifting == 1)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
		else if (buttonClicked == 3 && lifting == 2)
		{
			FlxG.camera.shake(0.01, 0.2);
			mistakes = mistakes + 1;
		}
	}
	
	private function activitydone()
	{
		trace(mistakes);
		FlxG.switchState(new Overworld(playerChosen, activityDone));
	}
	
	private function buttonBoxdestroy(Tween:FlxTween):Void
	{
		box = new Box();
		box.x = 500;
		box.y = 550;
		add(box);
		remove(buttonBox);
	}
	
	private function buttonChairdestroy(Tween:FlxTween):Void
	{
		remove(buttonChair);
	}
	
	private function buttonBeddestroy(Tween:FlxTween):Void
	{
		objectRemaining = objectRemaining - 1;
	}
	
	private function buttonDrawerdestroy(Tween:FlxTween):Void
	{
		remove(buttonDrawer);
	}
	
	private function glowing():Void
	{
		if (buttonClicked == 0)
		{
			outlineChair.removeFilter(filter2);
			outlineDrawer.removeFilter(filter2);
			outlineBox.removeFilter(filter2);
			
			outlineDrawer.addFilter(filter2);
		}
		if (buttonClicked == 1)
		{
			outlineChair.removeFilter(filter2);
			outlineDrawer.removeFilter(filter2);
			outlineBox.removeFilter(filter2);
			
			outlineBox.addFilter(filter2);
		}
		if (buttonClicked == 2)
		{
			outlineChair.removeFilter(filter2);
			outlineDrawer.removeFilter(filter2);
			outlineBox.removeFilter(filter2);
			
			outlineChair.addFilter(filter2);
		}
		if (buttonClicked == 3)
		{
			outlineChair.removeFilter(filter2);
			outlineDrawer.removeFilter(filter2);
			outlineBox.removeFilter(filter2);
			
			outlineBed.addFilter(filter2);
		}
	}
	
	private function Cleared()
	{
		pPressed = FlxG.keys.anyPressed(["P"]);
		
		if (pPressed)
		{
			activityDone = 2;
			activitydone();
		}
		if (objectRemaining == 0)
		{
			activityDone = 2;
			activitydone();
		}
	}
	
	override public function update()
	{
		Cleared();
		super.update();
	}
}