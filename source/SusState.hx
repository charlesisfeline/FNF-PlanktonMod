import flixel.FlxSprite;
import flixel.FlxState;
import flixel.*;
import flixel.util.FlxTimer;
import flash.system.System;

class SusState extends FlxState
{
    var sus:FlxSprite;

    public function new()
    {
        super();
    }
    override public function create()
    {
        super.create();


        FlxG.sound.play(Paths.sound("jumpscare", "preload"), 1, false);
        new FlxTimer().start(0.6, closeGame);
    }
    public function closeGame(time:FlxTimer = null)
    {
        System.exit(0);
    }
}