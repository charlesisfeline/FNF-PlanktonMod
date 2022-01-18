function onCreate()
	-- triggered when the lua file is started
	addCharacterToList('bf-lose', 'boyfriend');
	addCharacterToList('bf-win', 'boyfriend');
end

function onBeatHit()
	-- triggered 4 times per section
	if getProperty('health') < 0.3 then
		triggerEvent('Change Character', 0, 'bf-lose'); --Player's Losing State
	elseif getProperty('health') > 1.7 then
		triggerEvent('Change Character', 0, 'bf-win'); --Player'Winning State
	elseif getProperty('health') < 1.7 and getProperty('health') > 0.3 then
		triggerEvent('Change Character', 0, 'bf'); --Player's Default State
	end
end

