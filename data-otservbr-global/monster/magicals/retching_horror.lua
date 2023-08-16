local mType = Game.createMonsterType("Retching Horror")
local monster = {}

monster.description = "a retching horror"
monster.experience = 4100
monster.outfit = {
	lookType = 588,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1018
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "All over the surface of Upper Roshamuul and Nightmare Isles."
	}

monster.health = 5300
monster.maxHealth = 5300
monster.race = "fire"
monster.corpse = 20174
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
	canWalkOnEnergy = false,
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
	{text = "Wait for us, little maggot...", yell = false},
	{text = "We will devour you...", yell = false},
	{text = "My little beetles, go forth, eat, feast!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 83340, maxCount = 9 }, 
	{name = "Gold Coin", chance = 80270, maxCount = 100 }, 
	{name = "Goosebump Leather", chance = 13110, maxCount = 1 }, 
	{name = "Great Mana Potion", chance = 11770, maxCount = 1 }, 
	{name = "Great Health Potion", chance = 11640, maxCount = 1 }, 
	{name = "Pool of Chitinous Glue", chance = 11510, maxCount = 1 }, 
	{name = "Brown Mushroom", chance = 10900, maxCount = 2 }, 
	{id = 20029, chance = 3700}, -- broken dream 
	{name = "Beastslayer Axe", chance = 3880, maxCount = 1 }, 
	{name = "Mercenary Sword", chance = 1940, maxCount = 1 }, 
	{name = "Fire Sword", chance = 1810, maxCount = 1 }, 
	{name = "Spiked Squelcher", chance = 1540, maxCount = 1 }, 
	{name = "Underworld Rod", chance = 1340, maxCount = 1 }, 
	{name = "Wand of Starstorm", chance = 1200, maxCount = 1 }, 
	{name = "Crown Shield", chance = 940, maxCount = 1 }, 
	{name = "Onyx Flail", chance = 940, maxCount = 1 }, 
	{name = "Tower Shield", chance = 940, maxCount = 1 }, 
	{name = "Butcher's Axe", chance = 470, maxCount = 1 }, 
	{name = "Cluster of Solace", chance = 400, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 4, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_STUN, target = true, duration = 15000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -450, length = 5, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -300, range = 7, shootEffect = CONST_ANI_ARROW, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -50, maxDamage = -350, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false},
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 85},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
