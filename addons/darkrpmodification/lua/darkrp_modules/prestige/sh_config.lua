// PRESSTTIGEEE!
// This configures the prestige system that you definately bought. You did buy it right? Right? pls :'( i cri :('
// Firstly, to add required prestiges to items, you do it exactly the same way as you would levels, but instead of level = 10, you add prestige=10.

LevelSystemPrestigeConfiguration = {} // DO NOT TOUCH THIS LINE OR YOU WILL DIE!
LevelSystemPrestigeConfiguration.EnableHUD = true // Is the HUD enabled?
LevelSystemPrestigeConfiguration.MaxPresiges = 10 // Max amount of prestiges
LevelSystemPrestigeConfiguration.CashReward = 100000 // Cash reward for prestiging
LevelSystemPrestigeConfiguration.CashMult = true // Times the cash reward by the prestige level for dynamic prestige rewards?
LevelSystemPrestigeConfiguration.LevelBarPrestige = true // Is the level bar color the same one as the prestige color?
LevelSystemPrestigeConfiguration.XPColors = { // Colors of the prestiges. The first one is prestige 1, the second is prestige 2, ect. You can add more.
	Color(192, 57, 43),
	Color(41, 128, 185),
	Color(211, 84, 0),
	Color(44, 62, 80),
	Color(142, 68, 173),
	Color(39, 174, 96),
	Color(39, 174, 96)
}

LevelSystemPrestigeConfiguration.DefaultColor = Color(100,100,255) // The color to use when their isn't a prestige to use. (If you're prestige 300 and their is no color on the 300th prestige, leave this if you do not get it)


// Health module: (It does not increase health, it just gives the player less damage when shot. This is to support custom HUDs)
LevelSystemPrestigeConfiguration.HealthModule = true // Enable/Disable the health module
LevelSystemPrestigeConfiguration.HealthModuleScale = 1 // What to scale the damage reduction by. Increasing this to 2 makes it twice as hard to die and making it 0.5 makes it twice as easy to die
//By the way, the damage is calculated dynamically based on prestige.
	
// Damage module: (It increases the damage done by people who have prestiged dynamically.)
LevelSystemPrestigeConfiguration.DamageModule = true // Enable/Disable the damage module
LevelSystemPrestigeConfiguration.DamageModuleScale = 1


LevelSystemPrestigeConfiguration.GravityModule = false


//Configure the totem here!
DarkRP.createEntity('Prestige Totem',{
	ent="vrondakis_totem",
	model="models/balloons/balloon_star.mdl",
	price=1,
	level=99, // Put your servers max level here!
	cmd='buysexytotem',
	max = 999,
})


