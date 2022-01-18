function onUpdate() 
if dadName == 'bambipissed-bandu' then --replace the name for your character name and you can replace dadName as boyfriendName or gfName. 
 setPropertyFromGroup('opponentStrums', 3, 'NOTE_assets', 'NOTE_assets') --Put opponentStrums for opponent or playerStrums for bf. 
  getProperty('unspawnNotes.length')-1 do if not getPropertyFromGroup('unspawnNotes', 0, 'mustPress') 
   getPropertyFromGroup('unspawnNotes', 0, 'noteType') == '' then --Put a not before the first getPropertyFromGroup to opponent change texture. 
    setPropertyFromGroup('unspawnNotes', 0, 'NOTE_assets', 'NOTE_assets'); --Change texture 
    end 
   end 
  end 
end