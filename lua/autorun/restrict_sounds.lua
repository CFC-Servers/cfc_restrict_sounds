local soundIsRestricted = {
    ["WeaponDissolve.Beam"]                       = true,
    ["ambient/gas/cannister_loop.wav"]            = true,
    ["weapons/airboat/airboat_gun_lastshot1.wav"] = true,
    ["weapons/airboat/airboat_gun_lastshot2.wav"] = true,
}

local function shouldPlaySound( data )
    local path = data.SoundName
    if soundIsRestricted[path] then return false end

    local original = data.OriginalSoundName
    if soundIsRestricted[original] then return false end
end

local hookName = "CFC_MuteRestrictedSounds"

hook.Remove( "EntityEmitSound", hookName )
hook.Add( "EntityEmitSound", hookName, shouldPlaySound )
