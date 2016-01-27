timer.Simple(0.1,function() 
	if(LevelSystemConfiguration) then
		LevelSystemConfiguration.EnableHUD = false 
	else
		DarkRP.notifyAll(1,4,'PRESTIGE: Level system not found?')
	end
end) // Disable the default HUD


surface.CreateFont( "HeadBar", { // XP Bar font
	 font = "Tahoma",
	 size = 13,
	 weight = 500,
	 blursize = 0,
	 scanlines = 0,
} )


surface.CreateFont("Boobs", { // Level prompt font
	font = "Francois One",
	size = 70,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
}) 



local function DrawDisplay()
local shouldDraw, players = hook.Call("HUDShouldDraw", GAMEMODE, "DarkRP_EntityDisplay")
	if shouldDraw == false then return end
	local shootPos = LocalPlayer():GetShootPos()
	local aimVec = LocalPlayer():GetAimVector()
	for k, ply in pairs(players or player.GetAll()) do
		if not ply:Alive() then continue end
		local hisPos = ply:GetShootPos()
		if GAMEMODE.Config.globalshow and ply ~= localplayer then
				local pos = ply:EyePos()
				pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
				pos = pos:ToScreen()
				pos.y = pos.y-20
				draw.DrawText('Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x+1, pos.y -56, Color(0,0,0,255), 1)
				draw.DrawText('Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x, pos.y -55, Color(255,255,255,200), 1)
		elseif not GAMEMODE.Config.globalshow and hisPos:Distance(shootPos) < 250 then
			local pos = hisPos - shootPos
			local unitPos = pos:GetNormalized()

				local trace = util.QuickTrace(shootPos, pos, localplayer)
				if trace.Hit and trace.Entity ~= ply then return end
					local pos = ply:EyePos()
					pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
					pos = pos:ToScreen()
					pos.y = pos.y-20



					local XPColor = LevelSystemConfiguration.LevelColor or Color(255,255,255,255)

					if((ply:getDarkRPVar('prestige') or 0)>0) then
						XPColor = (LevelSystemPrestigeConfiguration.XPColors[(ply:getDarkRPVar('prestige') or 0)] or LevelSystemConfiguration.DefaultColor)
						draw.DrawText('P'..(ply:getDarkRPVar('prestige') or 0)..' - '..'Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x, pos.y-58, Color(0,0,0,255), 1)
						draw.DrawText('P'..(ply:getDarkRPVar('prestige') or 0)..' - '..'Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x+1, pos.y-57, XPColor, 1)
					else
						draw.DrawText('Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x, pos.y -58, Color(0,0,0,255), 1)
						draw.DrawText('Level: '..(ply:getDarkRPVar('level') or 0), "DarkRPHUD2", pos.x+1, pos.y -57, XPColor, 1)
					end


		end
	end
 
	local tr = LocalPlayer():GetEyeTrace()

end
local OldXP = 0
local function HUDPaint()
	if(LevelSystemPrestigeConfiguration) then
	local PlayerLevel = (LocalPlayer():getDarkRPVar('level') or 0)
	local PlayerXP = (LocalPlayer():getDarkRPVar('xp') or 0)
	
	// Draw the XP Bar
	local percent = ((PlayerXP or 0)/(((10+(((PlayerLevel or 1)*((PlayerLevel or 1)+1)*90))))*LevelSystemConfiguration.XPMult))
	local drawXP = Lerp(8*FrameTime(),OldXP,percent)
	OldXP = drawXP

	local XPColor = LevelSystemConfiguration.LevelColor or Color(255,255,255,255)

	if((LocalPlayer():getDarkRPVar('prestige') or 0)>0) then
		XPColor = (LevelSystemPrestigeConfiguration.XPColors[(LocalPlayer():getDarkRPVar('prestige') or 0)] or LevelSystemPrestigeConfiguration.DefaultColor)
		draw.SimpleText('P'..LocalPlayer():getDarkRPVar('prestige')..' - '..'Level: ' ..(LocalPlayer():getDarkRPVar('level') or 0), "Boobs", LevelSystemConfiguration.LevelTextPos[1]-2,ScrH()-LevelSystemConfiguration.LevelTextPos[2]-2,(Color(0,0,0,255)), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
		draw.SimpleText('P'..LocalPlayer():getDarkRPVar('prestige')..' - '..'Level: ' ..(LocalPlayer():getDarkRPVar('level') or 0), "Boobs", LevelSystemConfiguration.LevelTextPos[1],ScrH()-LevelSystemConfiguration.LevelTextPos[2],(XPColor), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	else
		draw.SimpleText('Level: ' ..(LocalPlayer():getDarkRPVar('level') or 0), "Boobs", LevelSystemConfiguration.LevelTextPos[1]-2,ScrH()-LevelSystemConfiguration.LevelTextPos[2]-2,(Color(0,0,0,255)), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
		draw.SimpleText('Level: ' ..(LocalPlayer():getDarkRPVar('level') or 0), "Boobs", LevelSystemConfiguration.LevelTextPos[1],ScrH()-LevelSystemConfiguration.LevelTextPos[2],(LevelSystemConfiguration.LevelColor or (Color(0,0,0,255))), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	end

	local percent2 = percent*100
	percent2 = math.Round(percent2)
	percent2 = math.Clamp(percent2, 0, 99) //Make sure it doesn not round past 100%

	surface.SetDrawColor(0,0,0,200)
	surface.DrawRect(ScrW()/2-300,0,580,25)
	// Draw the XP Bar before the texture
	if not (LevelSystemPrestigeConfiguration.LevelBarPrestige) then
		surface.SetDrawColor(LevelSystemConfiguration.LevelBarColor[1],LevelSystemConfiguration.LevelBarColor[2],LevelSystemConfiguration.LevelBarColor[3],255)
	else
		if((LocalPlayer():getDarkRPVar('prestige') or 0)>0) then
			surface.SetDrawColor(XPColor)
		else
			surface.SetDrawColor(LevelSystemConfiguration.LevelBarColor[1],LevelSystemConfiguration.LevelBarColor[2],LevelSystemConfiguration.LevelBarColor[3],255)
		end
	end
	surface.DrawRect(ScrW()/2-300,0,580*drawXP,25)

	//Render the texture
	local t = Material("vrondakis/xp_bar.png"); 
	surface.SetMaterial( t );
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect( ScrW()/2-371, 0,  742,46);




	draw.DrawText(percent2 ..'%', "HeadBar", ScrW()/2,7,(LevelSystemConfiguration.XPTextColor or Color(255,255,255,255)), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	//DrawEntityDisplay()
	DrawDisplay()
end
end
hook.Add("HUDPaint", "DarkRP_Mod_HU1312313awdadadada123131DPaint", HUDPaint) // IS THAT UNIQUE ENOUGH FOR YOU, FUCKING GMOD HOOKING BULLSHIT.


