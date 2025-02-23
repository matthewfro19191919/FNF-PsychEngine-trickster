package states.stages;

import states.stages.objects.*;

class NevadaSpook extends BaseStage
{
	var tstatic:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('TrickyStatic','clown'), true, 320, 180);

	var tStaticSound:FlxSound = new FlxSound().loadEmbedded(Paths.sound("staticSound","preload"));

	override function create()
	{
			tstatic.antialiasing = true;
			tstatic.scrollFactor.set(0,0);
			tstatic.setGraphicSize(Std.int(tstatic.width * 10));
			tstatic.screenCenter(Y);
			tstatic.animation.add('static', [0, 1, 2], 24, true);
			tstatic.animation.play('static');

			tstatic.alpha = 0;


			var bg:FlxSprite = new FlxSprite(-1000, -1000).loadGraphic(Paths.image('fourth/bg','clown'));
			bg.antialiasing = true;
			bg.scrollFactor.set(0.9, 0.9);
			bg.setGraphicSize(Std.int(bg.width * 5));
			bg.active = false;
			add(bg);

			var stageFront:FlxSprite = new FlxSprite(-2000, -400).loadGraphic(Paths.image('hellclwn/island_but_red','clown'));
			stageFront.setGraphicSize(Std.int(stageFront.width * 2.6));
			stageFront.antialiasing = true;
			stageFront.scrollFactor.set(0.9, 0.9);
			stageFront.active = false;
			add(stageFront);
			
			var hank:FlxSprite = new FlxSprite(60,-170);
			hank.frames = Paths.getSparrowAtlas('hellclwn/Hank','clown');
			hank.animation.addByPrefix('dance','Hank',24);
			hank.animation.play('dance');
			hank.scrollFactor.set(0.9, 0.9);
			hank.setGraphicSize(Std.int(hank.width * 1.55));
			hank.antialiasing = true;
			

			add(hank);
	}
	
	override function createPost()
	{
		// Use this function to layer things above characters!
	}

	override function update(elapsed:Float)
	{
		// Code here
	}

	override function destroy()
	{
		// Code here
	}

	
	override function countdownTick(count:Countdown, num:Int)
	{
		switch(count)
		{
			case THREE: //num 0
			case TWO: //num 1
			case ONE: //num 2
			case GO: //num 3
			case START: //num 4
		}
	}

	override function startSong()
	{
		// Code here
	}

	// Steps, Beats and Sections:
	//    curStep, curDecStep
	//    curBeat, curDecBeat
	//    curSection
	override function stepHit()
	{
		// Code here
	}
	override function beatHit()
	{
		// Code here
	}
	override function sectionHit()
	{
		// Code here
	}

	// Substates for pausing/resuming tweens and timers
	override function closeSubState()
	{
		if(paused)
		{
			//timer.active = true;
			//tween.active = true;
		}
	}

	override function openSubState(SubState:flixel.FlxSubState)
	{
		if(paused)
		{
			//timer.active = false;
			//tween.active = false;
		}
	}

	// For events
	override function eventCalled(eventName:String, value1:String, value2:String, flValue1:Null<Float>, flValue2:Null<Float>, strumTime:Float)
	{
		switch(eventName)
		{
			case "My Event":
		}
	}
}
