include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()

end

function ENT:Think()
end

net.Receive('userQueryPrestige', function(len) 
	Derma_Query( "Do you want to prestige? THIS WILL RESET YOUR LEVEL!", "Are you sure?",
		"Yes.", 	function()
			net.Start("userAcceptPrestige")
			net.SendToServer()
		end, 
		"Nope!")
end)