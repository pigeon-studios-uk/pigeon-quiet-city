--[[
    Pigeon Quiet City: client.

    Turns off GTA sounds that don't fit a roleplay server:
    - the fake sirens GTA plays in the distance when no emergency vehicle is anywhere near;
    - the police scanner voice that reads out crimes and suspect descriptions;
    - the music that starts when a player gets a wanted level;
    - the music that plays while flying; and
    - any of GTA's fixed sound sources (static emitters), such as music in clubs, that you list.

    These are audio settings in each player's own game. GTA can turn some back on, so they're applied
    again every Config.ReapplySeconds. Stopping the resource puts them back.
]]

local RESOURCE = GetCurrentResourceName()

local function apply(restore)
    if Config.DistantSirens ~= nil then DistantCopCarSirens(restore or Config.DistantSirens == true) end
    if Config.PoliceScanner ~= nil then SetAudioFlag('PoliceScannerDisabled', not restore and Config.PoliceScanner == false) end
    if Config.WantedMusic ~= nil then SetAudioFlag('WantedMusicDisabled', not restore and Config.WantedMusic == false) end
    if Config.FlightMusic ~= nil then SetAudioFlag('DisableFlightMusic', not restore and Config.FlightMusic == false) end
    for _, name in ipairs(Config.StaticEmitters or {}) do
        SetStaticEmitterEnabled(name, restore == true)
    end
end

CreateThread(function()
    while true do
        apply(false)
        Wait(math.floor((Config.ReapplySeconds or 1.0) * 1000))
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then apply(true) end
end)
