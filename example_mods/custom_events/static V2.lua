function onCreate()
    makeLuaSprite('TrickyStatic', 'TrickyStatic', -580, -90);
    scaleLuaSprite('TrickyStatic', 10, 10);
    addLuaSprite('TrickyStatic', true)
    setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
end

function onEvent()
    runTimer('static', 0, 1)
    runTimer('TrickyAlpha', 0.1, 1)
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    runTimer('TrickyAlpha', 0.05, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'TrickyAlpha' then
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0)
    end

    if tag == 'static' then
        playSound('staticSound')
        setPropertyLuaSprite('TrickyStatic', 'alpha', 0.2)
    end

    if tag == 'startCount' then
        --removeLuaSprite('Black')
        --setProperty('dad.alpha', 1)
        startCountdown()
    end

end