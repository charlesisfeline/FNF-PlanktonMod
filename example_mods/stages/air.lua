function onCreate()
	-- background shit
	makeLuaSprite('air', 'air', -600, -300);
	setScrollFactor('air', 0.9, 0.9);
	
	makeLuaSprite('air', 'seaground', -650, -350);
	setScrollFactor('air', 0.9, 0.9);
	scaleObject('air', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('air', 'air', -500, -300);
		setScrollFactor('air', 1.3, 1.3);
		scaleObject('air', 0.9, 0.9);
	end

	addLuaSprite('air', false);
	addLuaSprite('air', false);
	addLuaSprite('air', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end