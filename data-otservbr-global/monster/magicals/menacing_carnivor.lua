local mType = Game.createMonsterType("Menacing Carnivor")
local monster = {}

monster.description = "a Menacing Carnivor"
monster.experience = 2112
monster.outfit = {
	lookType = 1138,
	lookHead = 86,
	lookBody = 51,
	lookLegs = 83,
	lookFeet = 91,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1723
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

monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 30103
monster.speed = 170
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 64480, maxCount = 8 }, 
	{name = "Morning Star", chance = 17220, maxCount = 1 }, 
	{name = "Ultimate Mana Potion", chance = 9890, maxCount = 1 }, 
	{name = "Violet Glass Plate", chance = 7120, maxCount = 1 }, 
	{name = "Crystal Sword", chance = 4840, maxCount = 1 }, 
	{name = "Terra Rod", chance = 4700, maxCount = 1 }, 
	{name = "Small Ruby", chance = 4270, maxCount = 1 }, 
	{name = "Green Crystal Fragment", chance = 3350, maxCount = 1 }, 
	{name = "Onyx Chip", chance = 3060, maxCount = 1 }, 
	{name = "Small Enchanted Ruby", chance = 2210, maxCount = 1 }, 
	{name = "Terra Legs", chance = 2140, maxCount = 1 }, 
	{name = "Knight Legs", chance = 1780, maxCount = 1 }, 
	{name = "Wand of Voodoo", chance = 1710, maxCount = 1 }, 
	{name = "Machete", chance = 1640, maxCount = 1 }, 
	{name = "Heavy Machete", chance = 1280, maxCount = 1 }, 
	{name = "Wand of Dragonbreath", chance = 1140, maxCount = 1 }, 
	{name = "Wand of Starstorm", chance = 1070, maxCount = 1 }, 
	{name = "Tiger Eye", chance = 1000, maxCount = 1 }, 
	{name = "Iron Helmet", chance = 780, maxCount = 1 }, 
	{name = "Serpent Sword", chance = 780, maxCount = 1 }, 
	{name = "Opal", chance = 500, maxCount = 1 }, 
	{name = "Wand of Decay", chance = 500, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -370},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -280, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -110, maxDamage = -180, length = 5, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -160, maxDamage = -230, length = 7, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -170, maxDamage = -250, length = 5, spread = 0, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -140, maxDamage = -200, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_SMALLPLANTS, target = true},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -170, maxDamage = -230, radius = 3, effect = CONST_ME_POISONAREA, target = false},
}

monster.defenses = {
	defense = 0,
	armor = 68,
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
