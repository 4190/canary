local mType = Game.createMonsterType("Rage Squid")
local monster = {}

monster.description = "a rage squid"
monster.experience = 14820
monster.outfit = {
	lookType = 1059,
	lookHead = 94,
	lookBody = 78,
	lookLegs = 79,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1668
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
	}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "undead"
monster.corpse = 28782
monster.speed = 215
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{name = "Platinum Coin", chance = 74850, maxCount = 29 }, 
	{name = "Ultimate Health Potion", chance = 29790, maxCount = 5 }, 
	{name = "Great Mana Potion", chance = 19330, maxCount = 3 }, 
	{name = "Great Spirit Potion", chance = 18720, maxCount = 3 }, 
	{name = "Glowing Rune", chance = 18430, maxCount = 3 }, 
	{name = "Fire Mushroom", chance = 14940, maxCount = 6 }, 
	{id = 28568, chance = 11350}, -- inkwell 
	{name = "Small Topaz", chance = 7670, maxCount = 5 }, 
	{name = "Small Emerald", chance = 7610, maxCount = 5 }, 
	{name = "Small Ruby", chance = 7400, maxCount = 5 }, 
	{name = "Small Amethyst", chance = 7310, maxCount = 5 }, 
	{name = "Demonic Essence", chance = 7020, maxCount = 1 }, 
	{name = "Fire Axe", chance = 5830, maxCount = 1 }, 
	{name = "Slime Heart", chance = 2870, maxCount = 1 }, 
	{name = "Talon", chance = 2540, maxCount = 1 }, 
	{name = "Giant Sword", chance = 2280, maxCount = 1 }, 
	{name = "Orb", chance = 2190, maxCount = 1 }, 
	{id = 3039, chance = 2160, maxCount = 1 }, --red gem
	{name = "Demon Shield", chance = 2010, maxCount = 1 }, 
	{name = "Platinum Amulet", chance = 1990, maxCount = 1 }, 
	{name = "Might Ring", chance = 1700, maxCount = 1 }, 
	{name = "Demonrage Sword", chance = 1520, maxCount = 1 }, 
	{name = "Piece of Dead Brain", chance = 1040, maxCount = 1 }, 
	{name = "Purple Tome", chance = 920, maxCount = 1 }, 
	{name = "Devil Helmet", chance = 800, maxCount = 1 }, 
	{name = "Magic Plate Armor", chance = 320, maxCount = 1 }, 
	{name = "Wand of Everblazing", chance = 210, maxCount = 1 }, 
	{id = 7393, chance = 40}, -- demon trophy
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -700, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1000, range = 5, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -700, range = 5, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONHIT, target = true},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -700, radius = 3, effect = CONST_ME_HITBYFIRE, target = false},
}

monster.defenses = {
	defense = 78,
	armor = 78
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
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
