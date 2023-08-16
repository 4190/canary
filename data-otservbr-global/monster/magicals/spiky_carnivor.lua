local mType = Game.createMonsterType("Spiky Carnivor")
local monster = {}

monster.description = "a Spiky Carnivor"
monster.experience = 1650
monster.outfit = {
	lookType = 1139,
	lookHead = 79,
	lookBody = 121,
	lookLegs = 23,
	lookFeet = 86,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1722
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Carnivora's Rocks."
	}

monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 30099
monster.speed = 160
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnFire = false,
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
	{name = "Platinum Coin", chance = 66230, maxCount = 6 }, 
	{name = "Dark Armor", chance = 13650, maxCount = 1 }, 
	{name = "Green Glass Plate", chance = 10710, maxCount = 2 }, 
	{name = "Blue Crystal Splinter", chance = 8780, maxCount = 1 }, 
	{name = "Brown Crystal Splinter", chance = 7030, maxCount = 1 }, 
	{name = "Guardian Shield", chance = 4590, maxCount = 1 }, 
	{name = "Warrior Helmet", chance = 2830, maxCount = 1 }, 
	{name = "Rainbow Quartz", chance = 2210, maxCount = 2 }, 
	{name = "Talon", chance = 2100, maxCount = 1 }, 
	{name = "Glacier Amulet", chance = 1760, maxCount = 1 }, 
	{name = "Terra Amulet", chance = 1640, maxCount = 1 }, 
	{name = "Blue Robe", chance = 1590, maxCount = 1 }, 
	{name = "Prismatic Quartz", chance = 1190, maxCount = 1 }, 
	{name = "Lightning Pendant", chance = 960, maxCount = 1 }, 
	{name = "Doublet", chance = 280, maxCount = 1 }, 
	{name = "Terra Mantle", chance = 280, maxCount = 1 }, 
	{name = "Buckle", chance = 170, maxCount = 1 }, 
	{name = "Shockwave Amulet", chance = 110, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -310},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -230, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -110, maxDamage = -170, length = 5, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -190, maxDamage = -230, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -170, length = 5, spread = 0, effect = CONST_ME_POISONAREA, target = false},
}

monster.defenses = {
	defense = 20,
	armor = 71,
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
