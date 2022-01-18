notehitlol = 0
sadfasd = 0
function onCreate()
    makeLuaText("tnh", 'Total Notes Hit: 0', 250, 21, 259);
    makeLuaText("cm", 'Combos: 0', 200, 17, 302);
    makeLuaText("sick", 'Sicks!: 0', 200, 17, 333);
    setObjectCamera("tnh", 'other');
    setTextSize('tnh', 20);
    addLuaText("tnh");

    setObjectCamera("cm", 'other');
    setTextSize('cm', 20);
    addLuaText("cm");
    setObjectCamera("sick", 'other');
    setTextSize('sick', 20);
    addLuaText("sick");
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
    notehitlol = notehitlol + 1;
    setTextString('tnh', 'Total Notes Hit: ' .. tostring(notehitlol))

end


function onUpdate(elapsed)
    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Combos: ' .. getProperty('combo'))
	-- start of "update", some variables weren't updated yet
    -- setTextString('tnh', 'Total Notes Hit: ' + 1)
    if daRating == 'sick' then
        
        setTextString('sick', 'Sick!: ' .. 'gay')
    end
end