
if SERVER then 
hook.Add('canBuyPistol', 'cnbyadwapistl', function(ply, entity) 

	if (entity.prestige) then
			if not ((ply:getDarkRPVar('prestige') or 0) >= (entity.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to buy this!')
				return false, true
			end
	end

	if (entity.level) then
			if not ((ply:getDarkRPVar('level') or 0) >= (entity.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to buy this!')
				return false, true
			end
	end
end)


hook.Add('canBuyAmmo', 'cnbyddam0l', function(ply, entity) 

	if (entity.prestige) then
			if not ((ply:getDarkRPVar('prestige') or 0) >= (entity.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to buy this!')
				return false, true
			end
	end

	if (entity.level) then
			if not ((ply:getDarkRPVar('level') or 0) >= (entity.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to buy this!')
				return false, true
			end
	end

end)

hook.Add('canBuyShipment', 'cnbyshipmaaaentalsomanolisissexy', function(ply, entity) 

	if (entity.prestige) then
			if not ((ply:getDarkRPVar('prestige') or 0) >= (entity.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to buy this!')
				return false, true
			end
	end

	if (entity.level) then
			if not ((ply:getDarkRPVar('level') or 0) >= (entity.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to buy this!')
				return false, true
			end
	end
end)

hook.Add('canBuyVehicle', 'cnbyshipxxxmentalsomanolisissex2y', function(ply, entity) 

	if (entity.prestige) then
			if not ((ply:getDarkRPVar('prestige') or 0) >= (entity.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to buy this!')
				return false, true
			end
	end

	if (entity.level) then
			if not ((ply:getDarkRPVar('level') or 0) >= (entity.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to buy this!')
				return false, true
			end
	end
end)

hook.Add('canBuyCustomEntity', 'cnbycsnemtdawdadwity2', function(ply, entity) 

	if (entity.prestige) then
			if not ((ply:getDarkRPVar('prestige') or 0) >= (entity.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to buy this!')
				return false, true
			end
	end

	if (entity.level) then
			if not ((ply:getDarkRPVar('level') or 0) >= (entity.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to buy this!')
				return false, true
			end
	end
end)




hook.Add('playerCanChangeTeam', 'cnchandadwwadsejob12313', function(ply, jobno) 
	// This one requires a little extra work
	job = RPExtraTeams[jobno]
	if (job.prestige) then
		if not ((ply:getDarkRPVar('prestige') or 0) >= (job.prestige)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right prestige to become this!')
				return false, true
		end
	end
	if (job.level) then
			
			if not ((ply:getDarkRPVar('level') or 0) >= (job.level)) then
				DarkRP.notify(ply, 1, 4, 'You\'re not the right level to become this!')
				return false, true
			end
	end

end)

end


if CLIENT then
function LevelPrompts2()

	timer.Simple(3,function()
		for k,v in pairs(DarkRPEntities) do
			v.label = v.name
			if v.prestige and (v.prestige > 0) then
				v.label = (v.label .. ' - Prestige '..v.prestige)
			end
			if v.level then
				v.label = (v.label .. ' - Level '..v.level)
			end
		end

		for k,v in pairs(RPExtraTeams) do
			v.label = v.name
			if v.prestige and (v.prestige > 0) then
				v.label = (v.label .. ' - Prestige '..v.prestige)
			end

			if v.level then
				v.label = (v.label .. ' - Level '..v.level)
			end
		end

		for k,v in pairs(CustomVehicles) do
			v.label = v.name

			if v.prestige and (v.prestige > 0) then
				v.label = (v.label .. ' - Prestige '..v.prestige)
			end

			if v.level then
				v.label = (v.label .. ' - Level '..v.level)
			end
		end

		for k,v in pairs(CustomShipments) do
			v.label = v.name

			if v.prestige and (v.prestige > 0) then
				v.label = (v.label .. ' - Prestige '..v.prestige)
			end

			if v.level then
				v.label = (v.label .. ' - Level '..v.level)
			end
		end

		for k,v in pairs(GAMEMODE.AmmoTypes) do
			v.label = v.name
			if v.prestige and (v.prestige > 0) then
				v.label = (v.label .. ' - Prestige '..v.prestige)
			end

			if v.level then
				v.label = (v.label .. ' - Level '..v.level)
			end
		end
	end)

end

hook.Add( "InitPostEntity", "initd3131ffrpa", function()
	LevelPrompts2()
end) 

hook.Add("OnReloaded", "alalaldoadoaoawddsddafadadoaga", function()
	LevelPrompts2()
end)

end



if CLIENT then

function ButtonColorss()
	timer.Simple(3, function()

		if(LevelSystemConfiguration.GreenAllBars) then
			for k,v in pairs(DarkRPEntities) do 
				local AllowedTo = true
				if v.level then
					if not((LocalPlayer():getDarkRPVar('level') or 0) >= v.level) then
						AllowedTo = false
					end
				end

				if(v.prestige) then
					if not((LocalPlayer():getDarkRPVar('prestige') or 0) >= v.prestige) then
						AllowedTo = false
					end
				end

				if(AllowedTo) then
					v.buttonColor = Color(0,100,0)
				else
					v.buttonColor = Color(100,0,0)
				end

			end
		end

		if(LevelSystemConfiguration.GreenJobBars) then
			for k,v in pairs(RPExtraTeams) do 
				local AllowedTo = true
				if v.level then
					if not((LocalPlayer():getDarkRPVar('level') or 0) >= v.level) then
						AllowedTo = false
					end
					
				end


				if(v.prestige) then
					if not((LocalPlayer():getDarkRPVar('prestige') or 0) >= v.prestige) then
						AllowedTo = false
					end
				end

				if(AllowedTo) then
					v.buttonColor = Color(0,100,0)
				else
					v.buttonColor = Color(100,0,0)
				end

			end
		end

		if(LevelSystemConfiguration.GreenAllBars) then
			for k,v in pairs(CustomVehicles) do 
				local AllowedTo = true
				if v.level then
					if not((LocalPlayer():getDarkRPVar('level') or 0) >= v.level) then
						AllowedTo = false
					else
						v.buttonColor = Color(0,100,0)
					end
				
				end


				if(v.prestige) then
					if not((LocalPlayer():getDarkRPVar('prestige') or 0) >= v.prestige) then
						AllowedTo = false
					end
				end

				if(AllowedTo) then
					v.buttonColor = Color(0,100,0)
				else
					v.buttonColor = Color(100,0,0)
				end
			end

			for k,v in pairs(CustomShipments) do 
				local AllowedTo = true
				if v.level then
					if not((LocalPlayer():getDarkRPVar('level') or 0) >= v.level) then
						AllowedTo = false
					else
						v.buttonColor = Color(0,100,0)
					end
				end


				if(v.prestige) then
					if not((LocalPlayer():getDarkRPVar('prestige') or 0) >= v.prestige) then
						AllowedTo = false
					end
				end

				if(AllowedTo) then
					v.buttonColor = Color(0,100,0)
				else
					v.buttonColor = Color(100,0,0)
				end
			end

			for k,v in pairs(GAMEMODE.AmmoTypes) do 
				local AllowedTo = true
				if v.level then
					if not((LocalPlayer():getDarkRPVar('level') or 0) >= v.level) then
						AllowedTo = false
				end


				if(v.prestige) then
					if not((LocalPlayer():getDarkRPVar('prestige') or 0) >= v.prestige) then
						AllowedTo = false
					end
				end

				if(AllowedTo) then
					v.buttonColor = Color(0,100,0)
				else
					v.buttonColor = Color(100,0,0)
				end
			end
		end
	end
end)
end
hook.Add('F4MenuTabs', 'sssawdwadwadwadawdadabdlawldaasdada', ButtonColorss)
hook.Add('PlayerLevelChanged', 'okguysupdateibrokeupwithsophiesoicouldpartyandshitohwellshithappensrightihatescottishgirlssophieisntscottish', ButtonColorss)
hook.Add('PlayerPrestigeChanged', 'iamnakedrightnow26052014guysplsdonatetome', ButtonColorss)

end