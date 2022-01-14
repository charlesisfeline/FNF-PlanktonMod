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

        sus.loadGraphic(Paths.image("menuBG", "preload"));
        add(sus);
        FlxG.sound.play(Paths.sound("jumpscare", "preload"), 1, false);
    }
    public function closeGame(time:FlxTimer = null)
    {
        System.exit(0);
    }
}