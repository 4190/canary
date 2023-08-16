local mType = Game.createMonsterType("Girtablilu Warrior")
local monster = {}

monster.description = "a girtablilu warrior"
monster.experience = 5800
monster.outfit = {
	lookType = 1407,
	lookHead = 114,
	lookBody = 39,
	lookLegs = 113,
	lookFeet = 114,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 2099
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Ruins of Nuur"
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 36800
monster.speed = 180
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
	{text = "Tip tap tip tap!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 76760, maxCount = 16 }, 
	{name = "Ultimate Health Potion", chance = 15610, maxCount = 4 }, 
	{name = "Gold Ingot", chance = 13810, maxCount = 1 }, 
	{name = "Green Crystal Shard", chance = 6060, maxCount = 1 }, 
	{name = "Red Crystal Fragment", chance = 5500, maxCount = 1 }, 
	{name = "Cyan Crystal Fragment", chance = 4490, maxCount = 1 }, 
	{name = "Girtablilu Warrior Carapace", chance = 4410, maxCount = 1 }, 
	{name = "Scorpion Charm", chance = 4290, maxCount = 1 }, 
	{name = "Green Gem", chance = 3810, maxCount = 1 }, 
	{name = "Violet Gem", chance = 3310, maxCount = 1 }, 
	{name = "Blue Crystal Shard", chance = 3190, maxCount = 1 }, 
	{name = "Violet Crystal Shard", chance = 2930, maxCount = 1 }, 
	{name = "Crowbar", chance = 2870, maxCount = 1 }, 
	{name = "Ice Rapier", chance = 2570, maxCount = 1 }, 
	{name = "Dragonbone Staff", chance = 2400, maxCount = 1 }, 
	{name = "Diamond Sceptre", chance = 2340, maxCount = 1 }, 
	{name = "Yellow Gem", chance = 2160, maxCount = 1 }, 
	{name = "Magma Coat", chance = 2130, maxCount = 1 }, 
	{name = "Knight Axe", chance = 2100, maxCount = 1 }, 
	{name = "Epee", chance = 2070, maxCount = 1 }, 
	{name = "Green Crystal Fragment", chance = 1660, maxCount = 1 }, 
	{id = 3039, chance = 1630, maxCount = 1 }, --red gem
	{name = "Blue Gem", chance = 1360, maxCount = 1 }, 
	{name = "Beastslayer Axe", chance = 1300, maxCount = 1 }, 
	{name = "Blue Robe", chance = 1180, maxCount = 1 }, 
	{name = "Fur Armor", chance = 1060, maxCount = 1 }, 
	{name = "Glacier Robe", chance = 920, maxCount = 1 }, 
	{name = "Focus Cape", chance = 830, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -650, radius = 4, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -400, length = 3, spread = 2, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
	defense = 76,
	armor = 76,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
