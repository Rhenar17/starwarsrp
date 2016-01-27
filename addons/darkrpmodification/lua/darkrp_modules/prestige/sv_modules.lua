// old code from 2012 - modified
local meta = FindMetaTable("Player")
function EntityDamage(entity, dmginfo)
	if(dmginfo) then
		local scale = 1

		if(LevelSystemPrestigeConfiguration.HealthModule) then
			if(entity:IsPlayer()) then
				if(entity:getDarkRPVar('prestige') > 0) then
					scale = (scale-(entity:getDarkRPVar('prestige')/LevelSystemPrestigeConfiguration.MaxPresiges)+0.1)*LevelSystemPrestigeConfiguration.HealthModuleScale
				end
			end
		end
		if(LevelSystemPrestigeConfiguration.DamageModule) then
			if(dmginfo:GetAttacker():IsPlayer()) then
				if(dmginfo:GetAttacker():getDarkRPVar('prestige') > 0) then
					scale = (scale+(dmginfo:GetAttacker():getDarkRPVar('prestige')/LevelSystemPrestigeConfiguration.MaxPresiges))*LevelSystemPrestigeConfiguration.DamageModuleScale
				end
			end
		end

		dmginfo:ScaleDamage(scale)
	end
end

hook.Add('EntityTakeDamage', "plsdontleakthis", EntityDamage)



function PlayerHasSpawned(ply)
	timer.Simple(1, function()
		if(LevelSystemPrestigeConfiguration.GravityModule) then
			if(ply:getDarkRPVar('prestige') > 0) then
				ply:SetGravity(1/ply:getDarkRPVar('prestige'))
			end
		end
	end)	
end
hook.Add("PlayerSpawn", "PlayerSpwadwadaadwaawnHook", PlayerHasSpawned)
hook.Add("PlayerInitialSpawn", "PlayerSpawnawdawdawdHook", PlayerHasSpawned)
