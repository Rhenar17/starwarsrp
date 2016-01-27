--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_CLONECADET = DarkRP.createJob("Clone Cadet", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/testc/cgi cadet.mdl"},
   description = [[Vous êtes un Clone Cadet, Soldat de la Republique]],
   weapons = {},
   command = "clonecadet",
   max = 0,
   salary = 15,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(100) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
   PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
})

TEAM_CLONETROOPER = DarkRP.createJob("Clone Trooper", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/trooper/cctrooper.mdl"},
   description = [[Vous êtes un Clone Trooper, Soldat de la Republique]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17"},
   command = "clonetrooper",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("clonetrooper") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Clone Trooper!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_501STSOLDAT = DarkRP.createJob("Soldat de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/501st/c501st.mdl"},
   description = [[Vous êtes un Clone Trooper de la 501st, Commandez par le Général Skywalker, le Commandant Appo et le Commandant Tano ainsi que le Capitaine Rex]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17"},
   command = "clonetrooper501",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("clonetrooper501") ==  or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Soldat de la 501st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_501STSERGENT = DarkRP.createJob("Sergent de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/dent/cgident.mdl"},
   description = [[Vous êtes un Sergent de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a"},
   command = "sergent501",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("sergent501") ==  or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent de la 501st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_501STLIEUTENANT = DarkRP.createJob("Lieutenant de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/501stlt/c501stlt.mdl"},
   description = [[Vous êtes un Lieutenant de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_frag"},
   command = "501lieutenant",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(2000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("501lieutenant") ==  or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant de la 501st" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_501STCAPITAINE = DarkRP.createJob("Capitaine de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/501stlt/c501stlt.mdl"},
   description = [[Vous êtes un Capitaine de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag"},
   command = "501capitaine",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(2500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("501capitaine") ==  or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Capitaine de la 501st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_501STVICECMD = DarkRP.createJob("Vice Commandant de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/501stlt/c501stlt.mdl"},
   description = [[Vous êtes le Vice Commandant  de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "501vicecmd",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(3000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("501vicecmd") ==  or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Vice Commandant de la 501st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_CMDAPPO = DarkRP.createJob("Commandant Appo", {
   color = Color(0, 25, 255, 255),
   model = {"models/clones/clonedavis.mdl"},
   description = [[Vous êtes le Commandnt  de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "501cmd",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("501cmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant Appo!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_CPTREX = DarkRP.createJob("Capitaine Rex", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/test/rex.mdl"},
   description = [[Vous êtes le Capitaine de la 501st, Commandez par le Général Skywalker et le Commandant Appo ainsi que le Capitaine Rex et le Commandant Tano]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "501cptrex",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("501cptrex") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine Rex!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212STSOLDAT = DarkRP.createJob("Soldat de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/212th/c212th trooper.mdl"},
   description = [[Vous êtes un Soldat de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17"},
   command = "212st",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212st") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Soldat de la 212st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212SGT = DarkRP.createJob("Sergent de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/mex/cgimex.mdl"},
   description = [[Vous êtes un Sergent de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a"},
   command = "212stsgt",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212stsgt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent de la 212st" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212LIEUTENANT = DarkRP.createJob("Lieutenant de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/212thlt/c212thlt.mdl"},
   description = [[Vous êtes un Lieutenant de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_frag"},
   command = "212lt",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212lt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant de la 212st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212CPT = DarkRP.createJob("Capitaine de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/212thlt/c212thlt.mdl"},
   description = [[Vous êtes un Capitaine de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag"},
   command = "212cpt",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(2500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212cpt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Capitaine de la 212st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212VICECMD = DarkRP.createJob("Vice Commandant de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/212thlt/c212thlt.mdl"},
   description = [[Vous êtes le Vice Commandant de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "212vicecmd",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212vicecmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant de la 212st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_212CODY = DarkRP.createJob("Commandant Cody", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/testccc/ccody.mdl"},
   description = [[Vous êtes le Commandant Cody de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "212cody",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212cody") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "vous n'etes pas le Commandant Cody!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_CHEFEEAGLE = DarkRP.createJob("Chef d'Escadron Eagle", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/testctp/clonepilot.mdl"},
   description = [[Vous êtes le Chef d'Escadron Eagle de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "212chefeagle",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212chefeagle") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Chef d'Escadron Eagle!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_CHEFEEAGLE = DarkRP.createJob("Escadron Eagle", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/testctp/clonepilot.mdl"},
   description = [[Vous êtes Pilote de l'Escadron Eagle de la 212st, Commandez par le Commandant Cody et le Général Kenobi.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "212eagle",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(2000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("212eagle") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous ne faites pas partit de l'Escadron Eagle!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STSOLDAT = DarkRP.createJob("Soldat de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41st/c41st.mdl"},
   description = [[Vous êtes un Soldat de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "41stsoldat",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stsoldat") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Soldat de la 41st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STSGT = DarkRP.createJob("Sergent de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41st/c41st.mdl"},
   description = [[Vous êtes un Sergent de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_rpg", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a"},
   command = "41stsgt",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stsgt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent de la 41st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STLIEUTENANT = DarkRP.createJob("Lieutenant de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41stlt/c41stlt.mdl"},
   description = [[Vous êtes un Lieutenant de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_rpg", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_frag"},
   command = "41stlt",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stlt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant de la 41st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STCAPITAINE = DarkRP.createJob("Capitaine de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41stlt/c41stlt.mdl"},
   description = [[Vous êtes un Capitaine de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_rpg", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag"},
   command = "41stcpt",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(2000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stcpt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine de la 41st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STVICECMD = DarkRP.createJob("Vice Commandant de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41stlt/c41stlt.mdl"},
   description = [[Vous êtes un Vice Commandant de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_rpg", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "41stvicecmd",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stvicecmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant de la 41st!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_41STGREE = DarkRP.createJob("Commandant Gree", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/testg/cgi gree.mdl"},
   description = [[Vous êtes le Vice Commandant  de la 41st, Commandez par le Commandant Gree et les Généraux Luminara Unduli, Maitre Yoda]],
   weapons = {"weapon_rpg", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "41stgree",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("41stgree") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant Gree!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFSOLDAT = DarkRP.createJob("Soldat ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/player/carf/ccarf.mdl"},
   description = [[Vous êtes un Soldat ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "halo2_sniper","weapon_752_dc15s", "weapon_752_dc17"},
   command = "arfsoldat",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arfsoldat") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Soldat ARF!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFSERGENT = DarkRP.createJob("Sergent ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/player/carf/ccarf.mdl"},
   description = [[Vous êtes un Sergent ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "halo2_sniper", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a"},
   command = "arfsergent",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arfsergent") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent ARF!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFLIEUTENANT = DarkRP.createJob("Lieutenant ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/player/arflt/carflttest.mdl"},
   description = [[Vous êtes un Lieutenant ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "sanctum2_sr", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_frag", "halo2_sniper"},
   command = "arflieutenant",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arflieutenant") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant ARF!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFCAPITAINE = DarkRP.createJob("Capitaine ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/player/arflt/carflttest.mdl"},
   description = [[Vous êtes un Capitaine ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "sanctum2_sr", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "halo2_sniper"},
   command = "arfcapitaine",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arfcapitaine") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine ARF!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFVICECMD = DarkRP.createJob("Vice Commandant ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/funky/starwars/player/arf.mdl"},
   description = [[Vous êtes le Vice Commandant de la ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "sanctum2_sr", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun", "halo2_sniper"},
   command = "arfvicecmd",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arfvicecmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant ARF!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_ARFTRAUMA = DarkRP.createJob("Commandant Trauma", {
   color = Color(0, 224, 255, 255),
   model = {"models/player/trauma/cctrauma.mdl"},
   description = [[Vous êtes le Commandant Trauma de la ARF, Commandez par le Commandant Trauma.]],
   weapons = {"grapplehook", "sanctum2_sr", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun", "halo2_sniper"},
   command = "arfcmd",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("arfcmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant Trauma!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_GC = DarkRP.createJob("Garde de Coruscant", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/cguard/cgi cguard.mdl"},
   description = [[Vous êtes un Garde de Coruscant, Commandez par le Commandant Fox.]],
   weapons = {"swep_smokenade", "taser", "stunstick"},
   command = "gc",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("gc") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Garde de Coruscant!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_GCSGT = DarkRP.createJob("Sergent Garde de Coruscant", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/testks/cgi keeli soldier.mdl"},
   description = [[Vous êtes un Sergent Garde de Coruscant, Commandez par le Commandant Fox.]],
   weapons = {"riot_shield", "swep_smokenade", "taser", "stunstick", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a"},
   command = "gcsgt",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
  customCheck = function(ply) return ply:IsUserGroup("gcsgt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent de la Garde de Coruscant!" -- Allows you to tell the user what went wrong when attempting to
})

TEAM_GCLT = DarkRP.createJob("Lieutenant Garde de Coruscant", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/cguardlt/ccguardlt.mdl"},
   description = [[Vous êtes un Lieutenant Garde de Coruscant, Commandez par le Commandant Fox.]],
   weapons = {"riot_shield", "swep_smokenade", "taser", "stunstick", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_frag"},
   command = "gclt",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("gclt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant de la Garde de Coruscant!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_GCCPT = DarkRP.createJob("Capitaine Garde de Coruscant", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/cguardlt/ccguardlt.mdl"},
   description = [[Vous êtes un Capitaine Garde de Coruscant, Commandez par le Commandant Fox.]],
   weapons = {"riot_shield", "swep_smokenade", "taser", "stunstick", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag"},
   command = "gccpt",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("gccpt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine de la Garde de Coruscant!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_GCVICECMD = DarkRP.createJob("Vice Commandant Garde de Coruscant", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/cguardlt/ccguardlt.mdl"},
   description = [[Vous êtes le Vice Commandant Garde de Coruscant, Commandez par le Commandant Fox.]],
   weapons = {"riot_shield", "swep_smokenade", "taser", "stunstick", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "gcvicecmd",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("gcvicecmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant de la Garde de Coruscant!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_GCFOX = DarkRP.createJob("Commandant Fox", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/fox/ccfox.mdl"},
   description = [[Vous êtes le Commandant Fox.]],
   weapons = {"riot_shield", "swep_smokenade", "taser", "stunstick", "weapon_752_dc15s", "weapon_752_dc17", "weapon_752_dc15a", "weapon_752_dc17dual", "weapon_frag", "stunstick", "weapon_lasermgun"},
   command = "gcfox",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("gcfox") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant Fox!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_RCBOSS = DarkRP.createJob("Commando Boss", {
   color = Color(147, 147, 147, 255),
   model = {"models/player/sgg/starwars/clone_commando_07.mdl"},
   description = [[Vous êtes le Commando Boss, des Republique Commando]],
   weapons = {"grapplehook", "sanctum2_sr", "swep_smokenade", "weapon_752_dc17m_br", "weapon_frag", "weapon_rpg"},
   command = "rcboss",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("rcboss") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commando Boss!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_RCSCORCH = DarkRP.createJob("RC Scorch Spécialiste en Explosif ", {
   color = Color(147, 147, 147, 255),
   model = {"models/player/sgg/starwars/clone_commando_62.mdl"},
   description = [[Vous êtes le Commando Scorch, des Republique Commando]],
   weapons = {"grapplehook",  "swep_smokenade", "weapon_752_dc17m_br", "weapon_frag", "weapon_rpg", "weapon_swrc_det", "weapon_slam"},
   command = "rcscorch",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("rcscorch") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le RC Scorch!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_RCFIXER = DarkRP.createJob("RC Fixer Spécialiste en Technologie", {
   color = Color(147, 147, 147, 255),
   model = {"models/player/sgg/starwars/clone_commando_40.mdl"},
   description = [[Vous êtes le Commando Fixer, des Republique Commando]],
   weapons = {"grapplehook",  "swep_smokenade", "weapon_752_dc17m_br", "weapon_frag"},
   command = "rcfixer",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("rcfixer") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le RC Fixer!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_RCSEV = DarkRP.createJob("RC Sev Spésialiste en Reconnaissance", {
   color = Color(147, 147, 147, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_a.mdl"},
   description = [[Vous êtes le Commando Sev, des Republique Commando]],
   weapons = {"grapplehook",  "swep_smokenade", "weapon_752_dc17m_br", "weapon_frag", "sanctum2_sr"},
   command = "rcsev",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("rcsev") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le RC Sev!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_CADETMAJOR = DarkRP.createJob("Major Cadet", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/bridgestaff/cgibridgestaff.mdl"},
   description = [[Vous êtes un Cadet Major, Commandez par l'Amiral ]],
   weapons = {"weapon_752_dc17"},
   command = "cadetmajor",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("cadetmajor") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Major Cadet!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MAJOR = DarkRP.createJob("Major", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/bridgestaff/cgibridgestaff.mdl"},
   description = [[Vous êtes un Major, Commandez par l'Amiral ]],
   weapons = {"weapon_752_dc17"},
   command = "major",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("major") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'ete pas un Major!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_ENSEIGNE = DarkRP.createJob("Enseigne", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/bridgestaff/cgibridgestaff.mdl"},
   description = [[Vous êtes une Enseigne, Commandez par l'Amiral ]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "enseigne",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(2500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("enseigne") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Enseigne!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_Officier = DarkRP.createJob("Officier", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/bridgestaff/cgibridgestaff.mdl"},
   description = [[Vous êtes un Officier, Commandez par l'Amiral ]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "officier",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("officier") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Officier!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VICEAMIRAL = DarkRP.createJob("Vice Amiral", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/wullf/wullf.mdl"},
   description = [[Vous êtes le Vice Amiral, Commandez par l'Amiral ]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "viceamiral",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("viceamiral") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Amiral!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_AMIRAL = DarkRP.createJob("Amiral", {
   color = Color(153, 0, 0, 255),
   model = {"models/player/wullf/wullf.mdl"},
   description = [[Vous êtes l'Amiral, Commandez les troupes et la flotte]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "amiral",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("amiral") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas l'Amiral!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_ING38 = DarkRP.createJob("Ingénieur de la 38st", {
   color = Color(127, 0, 255, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[Corps d'Ingenieurie de la 38st, Division Blindée.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "ing38",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("ing28") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Ingenieur de la 38st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_INGlt38 = DarkRP.createJob("Lieutenant de la 38st", {
   color = Color(127, 0, 255, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[Corps d'Ingenieurie de la 38st, Division Blindée.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s"},
   command = "inglt38",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("inglt38") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant de la 38st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_INGCPT38 = DarkRP.createJob("Capitaine de la 38st", {
   color = Color(127, 0, 255, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[Corps d'Ingenieurie de la 38st, Division Blindée.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s", "weapon_752_dc15a"},
   command = "ingcpt38",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("ingcpt38") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine de la 38st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_INGVICECMD38 = DarkRP.createJob("Vice Commandant de la 38st", {
   color = Color(127, 0, 255, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[Corps d'Ingenieurie de la 38st, Division Blindée.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s", "weapon_752_dc15a"},
   command = "ingvicecmd38",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("ingvicecmd38") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant de la 38st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_INGCMD38 = DarkRP.createJob("Commandant de la 38st", {
   color = Color(127, 0, 255, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[Corps d'Ingenieurie de la 38st, Division Blindée.]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15s", "weapon_752_dc15a"},
   command = "ingcmd38",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("ingcmd38") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant de la 38st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94ST = DarkRP.createJob("Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/testm/cmedic.mdl"},
   description = [[Vous êtes un Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit"},
   command = "medic",
   max = 0,
   salary = 20,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("medic") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94SGT = DarkRP.createJob("Sergent Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/testm/cmedic.mdl"},
   description = [[Vous êtes un Sergent Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit"},
   command = "medicsgt",
   max = 0,
   salary = 25,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("medicsgt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Sergent Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94LT = DarkRP.createJob("Lieutenant Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/mediclt/cmedic lt.mdl"},
   description = [[Vous êtes un Lieutenant Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit", "weapon_752_dc15a"},
   command = "mediclt",
   max = 0,
   salary = 30,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(1500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("mediclt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un Lieutenant Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94CPT = DarkRP.createJob("Capitaine Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/mediclt/cmedic lt.mdl"},
   description = [[Vous êtes un Capitaine Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit", "weapon_752_dc15a", "weapon_752_dc17dual"},
   command = "mediccpt",
   max = 0,
   salary = 35,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("mediccpt") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Capitaine Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94VICECMD = DarkRP.createJob("Vice Commandant Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/mediclt/cmedic lt.mdl"},
   description = [[Vous êtes le Vice Commandant Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit", "weapon_752_dc15a", "weapon_752_dc17dual"},
   command = "medicvicecmd",
   max = 0,
   salary = 40,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("medicvicecmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Vice Commandant Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MEDIC94CMD = DarkRP.createJob("Commandant Médecin de la 94st", {
   color = Color(197, 247, 0, 255),
   model = {"models/player/medicc/cmedic c.mdl"},
   description = [[Vous êtes le Commandant Médecin  de la 94st, Commandez par le Général Kit Fisto]],
   weapons = {"weapon_752_dc15s", "weapon_752_dc17", "med_kit", "weapon_752_dc15a", "weapon_752_dc17dual"},
   command = "mediccmd",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(5000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("mediccmd") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas le Commandant Medecin de la 94st!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIP41ST = DarkRP.createJob("[VIP] Spécialiste en Explosif de la 41st", {
   color = Color(44, 137, 0, 255),
   model = {"models/player/41st/c41st.mdl"},
   description = [[Vous êtes un Spécialiste en Explosif de la 41st]],
   weapons = {"weapon_752_dc15a", "weapon_752_dc15s", "weapon_752_dc17", "weapon_rpg", "weapon_slam", "weapon_frag"},
   command = "vip41st",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vip41st") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIP212ST = DarkRP.createJob("[VIP] Soldat Assaut Lourd de la 212st", {
   color = Color(255, 183, 0, 255),
   model = {"models/player/mex/cgimex.mdl"},
   description = [[Vous êtes un Soldat Assaut Lourd de la 212st]],
   weapons = {"weapon_752_dc15a", "weapon_752_dc15s", "weapon_752_dc17", "weapon_frag", "weapon_lasermgun"},
   command = "vip212st",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vip212st") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIP501ST = DarkRP.createJob("[VIP] Soldat Assaut Lourd de la 501st", {
   color = Color(0, 25, 255, 255),
   model = {"models/player/danse/cgidanse.mdl"},
   description = [[Vous êtes un Soldat Assaut Lourd de la 501st]],
   weapons = {"weapon_752_dc15a", "weapon_752_dc15s", "weapon_752_dc17", "weapon_frag", "weapon_lasermgun"},
   command = "vip501st",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(3500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vip501st") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIPGC = DarkRP.createJob("[VIP] Garde Anti Émeute", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/cguard/cgi cguard.mdl"},
   description = [[Vous êtes un Garde Anti Emeute]],
   weapons = {"weapon_752_dc17", "weapon_frag", "riot_shield", "swep_smokenade", "taser", "stunstick"},
   command = "vipgc",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(4000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vipgc") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIPARF = DarkRP.createJob("[VIP] Tireur d'Elite ARF", {
   color = Color(0, 224, 255, 255),
   model = {"models/swamp/swamptrooper.mdl"},
   description = [[Vous êtes un Tireur D’élite ARF]],
   weapons = {"weapon_752_dc17", "weapon_752_dc15a", "sanctum2_sr", "halo2_sniper", "grapplehook"},
   command = "viparf",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(2500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("viparf") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIPCHEVALIERJEDI = DarkRP.createJob("[VIP] Chevalier Jedi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/light_revan.mdl"},
   description = [[Vous êtes un Chevalier Jedi !]],
   weapons = {"weapon_lightsaber"},
   command = "vipchevalierjedi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
PlayerSpawn = function(ply) ply:SetHealth(35000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
customCheck = function(ply) return ply:IsUserGroup("vipchevalierjedi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to  
})

TEAM_VIPMAITREJEDI = DarkRP.createJob("[VIP] Maitre Jedi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/light_revan.mdl"},
   description = [[Vous êtes un Maitre Jedi !]],
   weapons = {"weapon_lightsaber"},
   command = "vipmaitrejedi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(45000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vipmaitrejedi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIPGENERALJEDI = DarkRP.createJob("[VIP] Général Jedi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/light_revan.mdl"},
   description = [[Vous êtes un Général Jedi !]],
   weapons = {"weapon_lightsaber"},
   command = "vipgeneraljedi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("vipgeneraljedi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_VIPPADAWAN = DarkRP.createJob("[VIP] Padawan Jedi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/light_revan.mdl"},
   description = [[Vous êtes un Padawan Jedi !]],
   weapons = {"weapon_lightsaber"},
   command = "vippadawanjedi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(25000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
   PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
   customCheck = function(ply) return ply:IsUserGroup("vippadawanjedi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas un VIP!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_ANGEL = DarkRP.createJob("Angel", {
   color = Color(0, 84, 247, 255),
   model = {"models/kriegsyntax/sw_752/meleetrooper_est.mdl"},
   description = [[Vous êtes Angel]],
   weapons = {"weapon_lightsaber"},
   command = "angel",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("angel") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Angel!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_ANAKIN = DarkRP.createJob("Anakin Skywalker", {
   color = Color(0, 84, 247, 255),
   model = {"models/kriegsyntax/sw_752/anakin_est.mdl"},
   description = [[Vous êtes Anakin Skywalker]],
   weapons = {"weapon_lightsaber"},
   command = "anakin",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("anakin") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Anakin Skywalker!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_KENOBI = DarkRP.createJob("Obi-Wan Kenobi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/generalkenobi/cgikenobi.mdl"},
   description = [[Vous êtes Kenobi]],
   weapons = {"weapon_lightsaber"},
   command = "kenobi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("kenobi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Obi-Wan Kenobi!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_PLOKOON = DarkRP.createJob("Plo Koon", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/plokoon/plokoon.mdl"},
   description = [[Vous êtes Plo Koon]],
   weapons = {"weapon_lightsaber"},
   command = "plokoon",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("plokoon") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Plo Koon!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_SECURA = DarkRP.createJob("Aayla Secura", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/nav/aayla.mdl"},
   description = [[Vous êtes Aayla Secura]],
   weapons = {"weapon_lightsaber"},
   command = "secura",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("secura") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Aayla Secura!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_AKIMUNDI = DarkRP.createJob("Ki-Adi-Mundi", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/nav/mundi.mdl"},
   description = [[Vous êtes Ki-Adi-Mundi]],
   weapons = {"weapon_lightsaber"},
   command = "mundi",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("mundi") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Ki-Adi-Mundi!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_SHAAKTI = DarkRP.createJob("Shaak Ti", {
   color = Color(0, 84, 247, 255),
   model = {"models/grealms/players/tfu_shaakti_pm/shaak_ti.mdl"},
   description = [[Vous êtes Shaak Ti]],
   weapons = {"weapon_lightsaber"},
   command = "shaakti",
   max = 0,
   salary = 500,
   admin = 2,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
 PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
 customCheck = function(ply) return ply:IsUserGroup("shaakti") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Shaak Ti!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_FISTO = DarkRP.createJob("Kit Fisto", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/nav/kitfisto.mdl"},
   description = [[Vous êtes Kit Fisto]],
   weapons = {"weapon_lightsaber"},
   command = "fisto",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(50000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
   PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
   customCheck = function(ply) return ply:IsUserGroup("fisto") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Kit Fisto!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_AHSOKATANO = DarkRP.createJob("Ahsoka Tano", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/b4p/b4p_ahsoka/ahsoka.mdl"},
   description = [[Vous êtes Ahsoka Tano ! Padawan de Anakin]],
   weapons = {"weapon_lightsaber"},
   command = "ahsoka",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   PlayerSpawn = function(ply) ply:SetHealth(45000) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
   PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
   customCheck = function(ply) return ply:IsUserGroup("ahsoka") or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Ahsoka Tolga!" -- Allows you to tell the user what went wrong when attempting to 
})

TEAM_MAITREYODA = DarkRP.createJob("Maitre Yoda", {
   color = Color(0, 84, 247, 255),
   model = {"models/player/b4p/b4p_yoda.mdl"},
   description = [[Vous êtes Maitre Yoda!]],
   weapons = {"weapon_lightsaber"},
   command = "yoda",
   max = 0,
   salary = 50,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = true,
   modelScale = 0.6,
   PlayerSpawn = function(ply) ply:SetHealth(4500) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75, GAMEMODE.Config.runspeed * 1.5) end,
   PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed, GAMEMODE.Config.runspeed) end,
   customCheck = function(ply) return ply:IsUserGroup("yoda") or ply:IsAdmin() end,  -- The extra check function. Enter nil or nothing to not have a restriction
    CustomCheckFailMsg = "Vous n'etes pas Maitre Yoda!" -- Allows you to tell the user what went wrong when attempting to 
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CLONECADET

--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_GC] = true,
    [TEAM_GCSGT] = true,
    [TEAM_GCLT] = true,
    [TEAM_GCCPT] = true,
    [TEAM_GCVICECMD] = true,
    [TEAM_GCFOX] = true,	
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
