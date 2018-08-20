package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var text:FlxText;
	var sprite:FlxSprite;

	override public function create():Void
	{
		super.create();
		sprite = new FlxSprite();
		sprite.makeGraphic(300,300,flixel.util.FlxColor.WHITE);
		for(y in 0 ... 300){
			for(x in 0 ... 300){
				if(x%2 == 1 && y%2 == 1)
					sprite.pixels.setPixel(x,y,0x0000ff);
					if(x < 5 || y < 5 || x > 295 || y >295)
						sprite.pixels.setPixel(x,y,0x333333);
			}
		}
		add(sprite);

		text = new FlxText(0, 0, FlxG.width, "Hello HaxeFlixel", 64);
		text.setFormat(null,64,FlxColor.RED,FlxTextAlign.CENTER);
		add(text);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		text.y++;
		if(text.y > FlxG.height)
		text.y = 0 - 64;

		sprite.y++;
		if(sprite.y > FlxG.height)
		sprite.y = 0 - 64;
	}
}
