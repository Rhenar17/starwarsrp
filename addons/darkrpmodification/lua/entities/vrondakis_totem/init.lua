AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local PrintMore
function ENT:Initialize()
	net.Start('userQueryPrestige')
	net.Send(self:Getowning_ent())
end

