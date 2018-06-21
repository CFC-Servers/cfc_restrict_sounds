local restrictedSounds = {}

-- Toolgun Sounds
restrictedSounds["weapons/airboat/airboat_gun_lastshot1.wav"] = true
restrictedSounds["weapons/airboat/airboat_gun_lastshot2.wav"] = true

-- Gross thruster sounds
restrictedSounds["ambient/gas/cannister_loop.wav"] = true

hook.Add("EntityEmitSound", "CFC_RestrictSounds", function(data)
	local soundName = data["SoundName"]
	if restrictedSounds[soundName] then return false end
end)
