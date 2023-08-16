local mType = Game.createMonsterType("Frazzlemaw")
local monster = {}

monster.description = "a frazzlemaw"
monster.experience = 3740
monster.outfit = {
	lookType = 594,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1022
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Lower Roshamuul, Guzzlemaw Valley, the entrance to Upper Roshamuul."
	}

monster.health = 4100
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 20233
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
	{text = "Mwaaaahnducate youuuuuu *gurgle*, mwaaah!", yell = false},
	{text = "Mwaaahgod! Overmwaaaaah! *gurgle*", yell = false},
	{text = "MMMWAHMWAHMWAHMWAAAAH!", yell = false},
	{text = "Mmmwhamwhamwhah, mwaaah!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 90460, maxCount = 7 }, 
	{name = "Gold Coin", chance = 78500, maxCount = 100 }, 
	{name = "Frazzle Tongue", chance = 14760, maxCount = 1 }, 
	{name = "Frazzle Skin", chance = 12340, maxCount = 1 }, 
	{name = "Great Mana Potion", chance = 11990, maxCount = 3 }, 
	{name = "Great Health Potion", chance = 11960, maxCount = 2 }, 
	{name = "Brown Crystal Splinter", chance = 11880, maxCount = 1 }, 
	{id = 3114, chance = 10400}, -- skull
	{name = "Fishbone", chance = 9460, maxCount = 1 },
	{id = 5951, chance = 9400}, -- fish tail
	{id = 3115, chance = 9200}, -- bone
	{name = "Piece of Iron", chance = 7980, maxCount = 1 }, 
	{name = "Crystal Rubbish", chance = 7930, maxCount = 1 }, 
	{name = "Remains of a Fish", chance = 7710, maxCount = 1 }, 
	{name = "Banana Skin", chance = 7240, maxCount = 1 }, 
	{id = 3578, chance = 5000, maxCount = 3}, -- fish
	{name = "Fish Fin", chance = 4610, maxCount = 1 }, 
	{name = "Ham", chance = 4580, maxCount = 1 }, 
	{name = "Red Crystal Fragment", chance = 4470, maxCount = 1 }, 
	{name = "Hardened Bone", chance = 4170, maxCount = 1 }, 
	{name = "Big Bone", chance = 3480, maxCount = 1 }, 
	{name = "Iron Ore", chance = 2660, maxCount = 1 }, 
	{name = "Violet Crystal Shard", chance = 2470, maxCount = 1 }, 
	{name = "Two Handed Sword", chance = 2190, maxCount = 1 }, 
	{name = "Gold Ingot", chance = 1920, maxCount = 1 }, 
	{name = "Haunted Blade", chance = 1540, maxCount = 1 }, 
	{name = "Sai", chance = 1070, maxCount = 1 }, 
	{name = "Nightmare Blade", chance = 600, maxCount = 1 }, 
	{name = "Assassin Dagger", chance = 410, maxCount = 1 }, 
	{name = "Cluster of Solace", chance = 410, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	-- bleed
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -35, maxDamage = -35, radius = 3, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -600, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -500, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 425, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
