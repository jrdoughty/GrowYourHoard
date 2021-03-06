package actors;

import flixel.util.FlxPoint;
import flixel.util.FlxVelocity;
import actors.Goblin;

class Ogre extends actors.Goblin
{
	public function new(X:Float=0, Y:Float=0, unitHealth:Float=5.0, ?SimpleGraphic:Dynamic)
	{
		super(X, Y, unitHealth, SimpleGraphic);
	}

	override private function setup()
	{
		loadGraphic("assets/images/ogre.png", true, 32, 64);
		animation.add("main", [0, 1], 6, true);
		setGraphicSize(32, 64);
		flipX = true;
		animation.play("main");

		Reg.counters["ogres_launched"] += 1;

		FlxVelocity.moveTowardsPoint(this, new FlxPoint(0 - width, y), 20);
	}

	override private function getUnitTag()
	{
		return "ogre";
	}
}