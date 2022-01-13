function onCreate()
	-- background shit
	makeLuaSprite('stages/whitty/whittyBack', 'stages/whitty/whittyBack', -500, -300);
	setLuaSpriteScrollFactor('stages/whitty/whittyBack', 0.9, 0.9);
	
	makeLuaSprite('stages/whitty/whittyFront', 'stages/whitty/whittyFront', -650, 600);
	setLuaSpriteScrollFactor('stages/whitty/whittyFront', 0.9, 0.9);
	scaleObject('stages/whitty/whittyFront', 1.1, 1.1);

	addLuaSprite('stages/whitty/whittyBack', false);
	addLuaSprite('stages/whitty/whittyFront', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end