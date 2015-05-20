package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	private var buttonPlay:FlxButton;
	private var buttoncredits:FlxButton;
	private var buttonoptions:FlxButton;
	private var background:Background;

	// The creation of the background and the buttons
	override public function create():Void
	{
		background = new Background();
		background.menuscreen();
		add (background);
		
		buttonPlay = new FlxButton(0, 0, "", clickPlay);
		buttonPlay.loadGraphic("assets/images/button.png");
		buttonPlay.x = 809;
		buttonPlay.y = 546.5;
		add(buttonPlay);
		
		buttonoptions = new FlxButton(0, 0, "", clickoptions);
		buttonoptions.loadGraphic("assets/images/buttonOptions.png");
		buttonoptions.x = 809;
		buttonoptions.y = 711.5;
		add(buttonoptions);
		
		buttoncredits = new FlxButton(0, 0, "", clickcredits);
		buttoncredits.loadGraphic("assets/images/buttonCredits.png");
		buttoncredits.x = 809;
		buttoncredits.y = 880;
		add(buttoncredits);
		
		super.create();
	}
	
	override public function destroy():Void
	{
		super.destroy();
		buttonPlay = FlxDestroyUtil.destroy(buttonPlay);
	}
	
	// If the play button is clicked
	private function clickPlay():Void
	{
		FlxG.switchState(new Intro());
	}
	
	// If the option button is clicked
	private function clickoptions():Void
	{
		//FlxG.switchState(new Options());
	}
	
	// If the credits button is clicked
	private function clickcredits():Void
	{
		//FlxG.switchState(new Credits());
	}
	
	
	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}