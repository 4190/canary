local mType = Game.createMonsterType("Lamassu")
local monster = {}

monster.description = "a lamassu"
monster.experience = 9000
monster.outfit = {
	lookType = 1190,
	lookHead = 50,
	lookBody = 2,
	lookLegs = 0,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1806
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh."
}

monster.health = 8700
monster.maxHealth = 8700
monster.race = "blood"
monster.corpse = 31394
monster.speed = 160
monster.manaCost = 0

monster.faction = FACTION_ANUMA
monster.enemyFactions = {FACTION_FAFNAR, FACTION_PLAYER}

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "Platinum Coin", chance = 100000, maxCount = 1 }, 
	{id= 3039, chance = 6200}, -- red gem 
	{name = "Lamassu Horn", chance = 13650, maxCount = 1 }, 
	{name = "Violet Crystal Shard", chance = 11020, maxCount = 2 }, 
	{name = "Red Crystal Fragment", chance = 10920, maxCount = 1 }, 
	{name = "Blue Crystal Shard", chance = 10430, maxCount = 2 }, 
	{name = "Terra Amulet", chance = 8119, maxCount = 1 }, 
	{name = "Lamassu Hoof", chance = 8080, maxCount = 1 }, 
	{name = "Terra Hood", chance = 6720, maxCount = 1 }, 
	{name = "Opal", chance = 6160, maxCount = 1 }, 
	{name = "Small Emerald", chance = 5280, maxCount = 1 }, 
	{name = "Onyx Chip", chance = 4019, maxCount = 1 }, 
	{name = "Green Crystal Fragment", chance = 3570, maxCount = 1 }, 
	{name = "Rainbow Quartz", chance = 3500, maxCount = 2 }, 
	{name = "Green Crystal Splinter", chance = 3150, maxCount = 1 }, 
	{name = "Elven Amulet", chance = 1920, maxCount = 1 }, 
	{name = "Sacred Tree Amulet", chance = 1920, maxCount = 1 }, 
	{name = "Violet Gem", chance = 1890, maxCount = 1 }, 
	{name = "Blue Gem", chance = 1750, maxCount = 1 }, 
	{name = "Green Crystal Shard", chance = 1050, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -485, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -405, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_SMALLPLANTS, target = true}
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
