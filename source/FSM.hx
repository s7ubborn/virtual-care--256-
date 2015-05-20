package;

/**
 * ...
 * @author ...
 */

 //The class for the healthcare worker so that it can walk on his own
class FSM
{
	public var activeState:Void->Void;
	
	public function new(?InitState:Void->Void):Void
	{
		activeState = InitState;
	}
	
	public function update():Void
	{
		if (activeState != null)
		{
			activeState();
		}
	}
	
}