local MaxPrestige = LevelSystemPrestigeConfiguration.MaxPresiges
util.AddNetworkString( "userQueryPrestige" )
util.AddNetworkString( "userAcceptPrestige" )
function DarkRPInitPrestige()	
		MySQLite.query([[CREATE TABLE IF NOT EXISTS darkrp_prestige(
				uid VARCHAR(32) NOT NULL,
				prestige int NOT NULL,
				UNIQUE(uid) 
			);
		]])
end
hook.Add("DarkRPDBInitialized", "drpinit222sexyprestigeedition", DarkRPInitPrestige)



function DarkRP.retrievePlayerPrestige(ply, callback)
	MySQLite.query("SELECT prestige FROM darkrp_prestige WHERE uid = ".. MySQLite.SQLStr(ply:UniqueID())..";", function(r)callback(r)end)
end

function DarkRP.createPlayerPrestigeData(ply)
	MySQLite.query([[REPLACE INTO darkrp_prestige VALUES(]]..MySQLite.SQLStr(ply:UniqueID()) .. [[,'0')]])
end

function DarkRP.retrievePlayerPrestigeData(ply)
	DarkRP.retrievePlayerPrestige(ply,function(data)
		if not IsValid(ply) then return end
		local info = data and data[1] or {}
		info.prestige = info.prestige or 0
		ply:setDarkRPVar('prestige', tonumber(info.prestige))
		if not data then DarkRP.createPlayerPrestigeData(ply) end
	end)
end


function DarkRP.storePrestigeData(ply, prestige)
	prestige = math.max(prestige,0)
	MySQLite.query("UPDATE darkrp_prestige SET prestige = " ..MySQLite.SQLStr(prestige) .." WHERE uid = "..MySQLite.SQLStr(ply:UniqueID()))
end

function DarkRP.resetPlayerLevel(ply)
	MySQLite.query("UPDATE darkrp_levels SET xp = '0', level = '1' WHERE uid = "..MySQLite.SQLStr(ply:UniqueID()))
end

function addPrestige(ply)
	if not IsValid(ply) then return end
	local PlayerPres = (ply:getDarkRPVar('prestige') or 0)
	if(!ply:getDarkRPVar('prestige')) then
		DarkRP.notify(ply,0,5,'XP not set. Err..')
		return ""
	end

	if(ply:getDarkRPVar('prestige') == MaxPrestige) then
		DarkRP.notify(ply,0,4,'You have already reached the max prestige!')
			return ""
	end

	DarkRP.notifyAll(0,3,ply:Nick() .. ' reached prestige '..(PlayerPres+1)..'!')
	hook.Call( "PlayerPrestigeChanged" )
	local CashReward = 0
	CashReward = LevelSystemPrestigeConfiguration.CashReward
	

	if(LevelSystemPrestigeConfiguration.CashMult) then
		CashReward = LevelSystemPrestigeConfiguration.CashReward * (PlayerPres+1)
	end

	if(CashReward > 0) then
		ply:addMoney(CashReward)
		DarkRP.notify(ply,0,4,'You got '..CashReward..'$ for prestiging.')
	end

	
	DarkRP.storePrestigeData(ply,PlayerPres+1)

	DarkRP.resetPlayerLevel(ply)
	ply:setDarkRPVar('prestige',PlayerPres+1)
	ply:setDarkRPVar('level', 1)
	ply:setDarkRPVar('xp',0)

end
net.Receive("userAcceptPrestige", function(length,client)
	if(client:getDarkRPVar('level')>=LevelSystemConfiguration.MaxLevel) then
		addPrestige(client)
	else
		DarkRP.notify(client,1,4,'You are not the right level to do this')
	end
end)
function PlayerInitialSpawnss(ply)
	if SERVER then
		DarkRP.retrievePlayerPrestigeData(ply)
	end
end

hook.Add('PlayerInitialSpawn', 'plyspwninadawdadawdadada',PlayerInitialSpawnss)

