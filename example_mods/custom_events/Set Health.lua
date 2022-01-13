-- Event notes hooks
function onEvent(name, value1)
	if name == 'Set Health' then
		value = tonumber(value1);
			setProperty('health', value);
		end
end