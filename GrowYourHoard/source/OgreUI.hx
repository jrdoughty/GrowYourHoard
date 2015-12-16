package;

/**
 * ...
 * @author John Doughty
 */
class OgreUI extends Ogre
{

	override public function update():Void 
	{
		
	}

	override private function setup()
	{
		loadGraphic("assets/images/ogre.png", true, 32, 64);
		setGraphicSize(8, 16);
		updateHitbox();
	}
	
}