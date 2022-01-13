-- Event notes hooks
function onEvent(name, value1)
	if name == 'Set Score' then
		set = tonumber(value1);
			setScore(set);
		end
end