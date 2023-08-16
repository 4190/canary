local mType = Game.createMonsterType("Crazed Winter Rearguard")
local monster = {}

monster.description = "a Crazed Winter Rearguard"
monster.experience = 4700
monster.outfit = {
	lookType = 1136,
	lookHead = 47,
	lookBody = 7,
	lookLegs = 0,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1731
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Court of Winter, Dream Labyrinth."
	}

monster.health = 5200
monster.maxHealth = 5200
monster.race = "blood"
monster.corpse = 30126
monster.speed = 200
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
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
	{name = "Platinum Coin", chance = 85940, maxCount = 5 }, 
	{name = "Ice Rapier", chance = 17230, maxCount = 1 }, 
	{name = "Ultimate Health Potion", chance = 16850, maxCount = 1 }, 
	{name = "Great Spirit Potion", chance = 15780, maxCount = 1 }, 
	{id = 30058, chance = 9000, maxCount = 2}, -- ice flower
	{name = "Dream Essence Egg", chance = 8760, maxCount = 1 }, 
	{name = "Life Crystal", chance = 7880, maxCount = 1 }, 
	{name = "Elven Astral Observer", chance = 7610, maxCount = 1 }, 
	{name = "Glacier Mask", chance = 5910, maxCount = 1 }, 
	{name = "Moonlight Rod", chance = 5400, maxCount = 1 }, 
	{name = "Small Enchanted Sapphire", chance = 4680, maxCount = 7 }, 
	{name = "Glacier Amulet", chance = 2930, maxCount = 1 }, 
	{name = "Hailstorm Rod", chance = 2660, maxCount = 1 }, 
	{name = "Northwind Rod", chance = 2360, maxCount = 1 }, 
	{name = "Cyan Crystal Fragment", chance = 2110, maxCount = 1 }, 
	{name = "Glacier Robe", chance = 1930, maxCount = 1 }, 
	{name = "Elven Amulet", chance = 1260, maxCount = 1 }, 
	{name = "Blue Gem", chance = 330, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -300, radius = 3, effect = CONST_ME_ICEAREA, target = false}, 
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -300, range = 5, radius = 3, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -300, length = 5, spread = 0, effect = CONST_ME_ICEAREA, target = false}, 
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -400, radius = 3, effect = CONST_ME_ICEAREA, target = false}, 
}

monster.defenses = {
	defense = 20,
	armor = 70
}

monster.reflects = {
	{type = COMBAT_ICEDAMAGE, percent = 70}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
