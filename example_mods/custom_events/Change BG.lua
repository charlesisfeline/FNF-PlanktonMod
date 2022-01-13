function onEvent(name, value1, value2)
if name == 'Change BG' then
function onCreate()
if value1 == 'change' then
makeLuaScript('tag1', 'value1', x, y);
setProperty('tag1.visbible', true/false) --true means it will show and false means it wont show
addLuaSprite('tag1', true/false) --this is diffrent but true means it will be infront of charactrers and false means it will not

makeLuaScript('tag2', 'value2', x, y);
setProperty('tag2.visbible', true/false) --true means it will show and false means it wont show
addLuaSprite('tag2', true/false) --this is diffrent but true means it will be infront of charactrers and false means it will not