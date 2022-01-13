function onEvent(name, value1, value2) 

	curHealth = getProperty('health');
	if name == 'Drain' then
		if curHealth > 0.02 then 
		
		setProperty('health', curHealth - 0.02);
		end
	end
end