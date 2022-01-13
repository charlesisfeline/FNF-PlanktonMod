function onCreate()
	-- background shit
	makeLuaSprite('seabackevil', 'seabackevil', -600, -300);
	setScrollFactor('seabackevil', 0.9, 0.9);
	addGlitchEffect('seabackevil', 2, 2)
	
	makeLuaSprite('seafrontevil', 'seagroundevil', -650, -350);
	setScrollFactor('seafrontevil', 0.9, 0.9);
	scaleObject('seafrontevil', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('seashadeevil', 'seashade', -500, -300);
		setScrollFactor('seashadeevil', 1.3, 1.3);
		scaleObject('seashadeevil', 0.9, 0.9);
	end

	addLuaSprite('seabackevil', false);
	addLuaSprite('seafrontevil', false);
	addLuaSprite('seashadeevil', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end