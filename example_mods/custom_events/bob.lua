function onCreate() -- Add The Flicker

	makeAnimatedLuaSprite('bob', 'bob', -90, -50)
	
	-- Properties
	setScrollFactor('bob', 0, 0)
	scaleObject('bob', 1.5, 1.5)
	
	-- Animations
	addAnimationByPrefix('bob', 'bob', 'bob', 24, false)
	
end

function onEvent(name, value1, value2)
	if name == 'bob' then
	playSound('bobjumpscare')
	runTimer('bob', 0.7, 1)
	addLuaSprite('bob', true)
	objectPlayAnimation('bob', true)
	triggerEvent('Screen Shake', '0.10, 0.10', '0.7, 0.7');
	end
end
	
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'bob' then
	setProperty('bob.visible', false)
	end
end