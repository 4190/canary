local mType = Game.createMonsterType("Burster Spectre")
local monster = {}

monster.description = "a Burster Spectre"
monster.experience = 6000
monster.outfit = {
	lookType = 1122,
	lookHead = 9,
	lookBody = 10,
	lookLegs = 86,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1726
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Haunted Tomb west of Darashia, Buried Cathedral."
	}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 30163
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
	{text = "We came tooo thiiiiss wooorld to... get youuu!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 75170, maxCount = 7 }, 
	{name = "Great Spirit Potion", chance = 22620, maxCount = 3 }, 
	{name = "Protection Amulet", chance = 7410, maxCount = 1 }, 
	{name = "Life Crystal", chance = 7160, maxCount = 1 }, 
	{name = "Wand of Voodoo", chance = 3290, maxCount = 1 }, 
	{name = "Wand of Cosmic Energy", chance = 3070, maxCount = 1 }, 
	{name = "Stone Skin Amulet", chance = 2190, maxCount = 1 }, 
	{name = "Glacier Amulet", chance = 2160, maxCount = 1 }, 
	{id = 30082, chance = 1960}, -- blue ectoplasm
	{name = "Dragon Necklace", chance = 1710, maxCount = 1 }, 
	{name = "Platinum Amulet", chance = 1420, maxCount = 1 }, 
	{name = "Orb", chance = 1320, maxCount = 1 }, 
	{name = "Hailstorm Rod", chance = 940, maxCount = 1 }, 
	{name = "Hexagonal Ruby", chance = 670, maxCount = 1 }, 
	{name = "Glacial Rod", chance = 570, maxCount = 1 }, 
	{name = "Elven Amulet", chance = 510, maxCount = 1 }, 
	{name = "Garlic Necklace", chance = 380, maxCount = 1 }, 
	{name = "Shockwave Amulet", chance = 370, maxCount = 1 }, 
	{name = "Mind Stone", chance = 170, maxCount = 1 }, 
	{name = "Strange Symbol", chance = 100, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -370, maxDamage = -380, length = 5, spread = 3, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -400, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -400, radius = 4, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -400, radius = 4, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 150, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.reflects = {
	{type = COMBAT_ICEDAMAGE, percent = 133}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 70},
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
