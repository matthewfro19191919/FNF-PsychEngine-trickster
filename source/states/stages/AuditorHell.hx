package states.stages;

import states.stages.objects.*;

class AuditorHell extends BaseStage
{
	var tstatic:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('TrickyStatic','clown'), true, 320, 180);

	var tStaticSound:FlxSound = new FlxSound().loadEmbedded(Paths.sound("staticSound","preload"));

	override function create()
	{
			//trace("line 538");
			defaultCamZoom = 0.55;
			curStage = 'auditorHell';

			tstatic.antialiasing = true;
			tstatic.scrollFactor.set(0,0);
			tstatic.setGraphicSize(Std.int(tstatic.width * 8.3));
			tstatic.animation.add('static', [0, 1, 2], 24, true);
			tstatic.animation.play('static');

			tstatic.alpha = 0;

			var bg:FlxSprite = new FlxSprite(-10, -10).loadGraphic(Paths.image('fourth/bg','clown'));
			bg.antialiasing = true;
			bg.scrollFactor.set(0.9, 0.9);
			bg.active = false;
			bg.setGraphicSize(Std.int(bg.width * 4));
			add(bg);

			hole.antialiasing = true;
			hole.scrollFactor.set(0.9, 0.9);
					
			converHole.antialiasing = true;
			converHole.scrollFactor.set(0.9, 0.9);
			converHole.setGraphicSize(Std.int(converHole.width * 1.3));
			hole.setGraphicSize(Std.int(hole.width * 1.55));

			cover.antialiasing = true;
			cover.scrollFactor.set(0.9, 0.9);
			cover.setGraphicSize(Std.int(cover.width * 1.55));

			var energyWall:FlxSprite = new FlxSprite(1350,-690).loadGraphic(Paths.image("fourth/Energywall","clown"));
			energyWall.antialiasing = true;
			energyWall.scrollFactor.set(0.9, 0.9);
			add(energyWall);
			
			var stageFront:FlxSprite = new FlxSprite(-350, -355).loadGraphic(Paths.image('fourth/daBackground','clown'));
			stageFront.antialiasing = true;
			stageFront.scrollFactor.set(0.9, 0.9);
			stageFront.setGraphicSize(Std.int(stageFront.width * 1.55));
			add(stageFront);
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
	override function eventPushed(event:objects.Note.EventNote)
	{
		// used for preloading assets used on events that doesn't need different assets based on its values
		switch(event.event)
		{
			case "My Event":
				//precacheImage('myImage') //preloads images/myImage.png
				//precacheSound('mySound') //preloads sounds/mySound.ogg
				//precacheMusic('myMusic') //preloads music/myMusic.ogg
		}
	}
	override function eventPushedUnique(event:objects.Note.EventNote)
	{
		// used for preloading assets used on events where its values affect what assets should be preloaded
		switch(event.event)
		{
			case "My Event":
				switch(event.value1)
				{
					// If value 1 is "blah blah", it will preload these assets:
					case 'blah blah':
						//precacheImage('myImageOne') //preloads images/myImageOne.png
						//precacheSound('mySoundOne') //preloads sounds/mySoundOne.ogg
						//precacheMusic('myMusicOne') //preloads music/myMusicOne.ogg

					// If value 1 is "coolswag", it will preload these assets:
					case 'coolswag':
						//precacheImage('myImageTwo') //preloads images/myImageTwo.png
						//precacheSound('mySoundTwo') //preloads sounds/mySoundTwo.ogg
						//precacheMusic('myMusicTwo') //preloads music/myMusicTwo.ogg
					
					// If value 1 is not "blah blah" or "coolswag", it will preload these assets:
					default:
						//precacheImage('myImageThree') //preloads images/myImageThree.png
						//precacheSound('mySoundThree') //preloads sounds/mySoundThree.ogg
						//precacheMusic('myMusicThree') //preloads music/myMusicThree.ogg
				}
		}
	}

	// Note Hit/Miss
	override function goodNoteHit(note:Note)
	{
		// Code here
	}

	override function opponentNoteHit(note:Note)
	{
		// Code here
	}

	override function noteMiss(note:Note)
	{
		// Code here
	}

	override function noteMissPress(direction:Int)
	{
		// Code here
	}
}
