local function afterGamemodeLoaded()
    GAMEMODE.OnDamagedByExplosion = function()
        -- no ringing
    end
end
hook.Remove( "PostGamemodeLoaded", "CFC_RestrictExplosionRinging" )
hook.Add( "PostGamemodeLoaded", "CFC_RestrictExplosionRinging", afterGamemodeLoaded )
