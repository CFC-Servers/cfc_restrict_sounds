
local restrictedSounds = {}
restrictedSounds["weapons/airboat/airboat_gun_lastshot1.wav"] = true
restrictedSounds["weapons/airboat/airboat_gun_lastshot2.wav"] = true
restrictedSounds["ambient/gas/cannister_loop.wav"]            = true

-- Helper functions
local uniqueHookPrefix = "CFC_SOUNDS_"
local function genHookName( str )
    return uniqueHookPrefix .. str
end

local function soundIsRestricted( snd )
    return restrictedSounds[snd]
end

-- Hook functions
local function muteSound( data )
    local path = data.SoundName

    if soundIsRestricted( path ) then
        return false 
    end
end

-- Hooks
hook.Remove( "EntityEmitSound", genHookName("MUTE") )
hook.Add( "EntityEmitSound", genHookName("MUTE"), muteSound )
