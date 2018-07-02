local soundIsRestricted = {}

-- Toolgun Sounds
soundIsRestricted["weapons/airboat/airboat_gun_lastshot1.wav"] = true
soundIsRestricted["weapons/airboat/airboat_gun_lastshot2.wav"] = true

-- Gross thruster sounds
soundIsRestricted["ambient/gas/cannister_loop.wav"] = true

hook.Add("EntityEmitSound", "CFC_RestrictSounds", function(data)
    local soundName = data["SoundName"]
    if soundIsRestricted[soundName] then return false end
end)
