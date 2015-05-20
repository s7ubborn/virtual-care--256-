package ;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;
using flixel.util.FlxDestroyUtil;

/**
 * ...
 * @author jef
 */

// The screen where the character you play will be chosen
class Playerchoosing extends FlxState
{
	private var buttonSelect:FlxButton; 
	private var buttonJoep:FlxButton;
	private var buttonAnneloes:FlxButton;
	private var mainClass:Main;
	private var player:Player;
	private var playerChosen:Int = 2;
	private var worldType = 1;
	
	//The buttons get created
	override public function create():Void 
	{						
		buttonAnneloes = new FlxButton(0, 0, "", chosenAnneloes);
		buttonAnneloes.x = (FlxG.width / 2) - 768;
		buttonAnneloes.y = FlxG.height / 4;
		buttonAnneloes.loadGraphic("assets/images/buttonAnneloes.png", false);
		add(buttonAnneloes);
		
		buttonJoep = new FlxButton(0, 0, "", chosenJoep);
		buttonJoep.x = (FlxG.width / 2) + 256;
		buttonJoep.y = FlxG.height / 4;
		buttonJoep.loadGraphic("assets/images/buttonJoep.png", false);
		add(buttonJoep);
		
		buttonSelect = new FlxButton(0, 0, "", startGame);
		buttonSelect.x = (FlxG.width / 2) - 128; 
		buttonSelect.y = (FlxG.height / 4) * 3;
		buttonSelect.loadGraphic("assets/images/button.png");
		add(buttonSelect);
		
		super.create();
	}
	
	// If the button for anneloes is chosen
	private function chosenAnneloes()
	{
		playerChosen = 1;
	}
	
	//If the button for Joep is chosen
	private function chosenJoep()
	{
		playerChosen = 0;
	}
	
	//When the button start button is pressed after a character is chosen
	private function startGame()
	{
		if (playerChosen == 0)
		{
			FlxG.switchState(new Overworld(playerChosen, worldType));
		}
		if (playerChosen == 1)
		{
			FlxG.switchState(new Overworld(playerChosen, worldType));
		}
		else
		{
			
		}
	}
	
	override public function destroy():Void
	{
		super.destroy();
		buttonAnneloes = FlxDestroyUtil.destroy(buttonAnneloes);
		buttonJoep = FlxDestroyUtil.destroy(buttonJoep);
		buttonSelect = FlxDestroyUtil.destroy(buttonSelect);
	}
}