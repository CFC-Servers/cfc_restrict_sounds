local soundIsRestricted = {}
soundIsRestricted["weapons/airboat/airboat_gun_lastshot1.wav"] = true
soundIsRestricted["weapons/airboat/airboat_gun_lastshot2.wav"] = true
soundIsRestricted["ambient/gas/cannister_loop.wav"]            = true

local function restrictSound( data )
    local path = data.SoundName
    if soundIsRestricted[path] then return false end
end

local hookName = "CFC_MuteRestrictedSounds"

hook.Remove( "EntityEmitSound", hookName )
hook.Add( "EntityEmitSound", hookName, restrictSound )
