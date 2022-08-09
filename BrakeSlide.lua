function onScriptStart()
    startFrame = GetFrameCount()
end

function onScriptCancel()
end

function onScriptUpdate()
    currentFrame = GetFrameCount()
    frameDifference = currentFrame - startFrame

    if frameDifference < 10 then
        SetMainStickY(255)
    elseif frameDifference < 15 then
        SetMainStickY(255)
        PressButton("A")
    elseif frameDifference < 27 then
        SetCStickY(0)
    elseif frameDifference < 28 then
        SetMainStickY(255)
        ReleaseButton("A")
    elseif frameDifference < 29 then
        PressButton("L")
        SetMainStickY(0)
    elseif frameDifference < 30 then
        SetMainStickY(110)
        ReleaseButton("L")
    else
        SetMainStickY(110)
    end
end