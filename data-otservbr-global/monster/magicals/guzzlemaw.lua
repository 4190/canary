local mType = Game.createMonsterType("Guzzlemaw")
local monster = {}

monster.description = "a guzzlemaw"
monster.experience = 6050
monster.outfit = {
	lookType = 584,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1013
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Guzzlemaw Valley, and a single spawn in a tower in Upper Roshamuul \z
		(south of the Depot and west of the entrance to Roshamuul Prison)."
	}

monster.health = 6400
monster.maxHealth = 6400
monster.race = "blood"
monster.corpse = 20151
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
	staticAttackChance = 80,
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
	{name = "Platinum Coin", chance = 88420, maxCount = 7 }, 
	{name = "Gold Coin", chance = 75240, maxCount = 100 }, 
	{name = "Great Mana Potion", chance = 14550, maxCount = 3 }, 
	{name = "Great Health Potion", chance = 12660, maxCount = 2 }, 
	{name = "Frazzle Tongue", chance = 10500, maxCount = 1 }, 
	{id = 3114, chance = 10400}, -- skull
	{name = "Frazzle Skin", chance = 9360, maxCount = 1 }, 
	{name = "Fishbone", chance = 8440, maxCount = 1 }, 
	{id = 3115, chance = 9200}, -- bone
	{id = 5951, chance = 9400}, -- fish tail
	{name = "Brown Crystal Splinter", chance = 7590, maxCount = 2 }, 
	{name = "Piece of Iron", chance = 7590, maxCount = 1 }, 
	{name = "Banana Skin", chance = 7530, maxCount = 1 }, 
	{name = "Remains of a Fish", chance = 7470, maxCount = 1 }, 
	{name = "Crystal Rubbish", chance = 7360, maxCount = 1 }, 
	{name = "Ham", chance = 6960, maxCount = 1 }, 
	{name = "Red Crystal Fragment", chance = 5480, maxCount = 1 }, 
	{id = 3578, chance = 7000, maxCount = 3}, -- fish
	{name = "Big Bone", chance = 4220, maxCount = 1 }, 
	{name = "Fish Fin", chance = 3370, maxCount = 1 }, 
	{name = "Hardened Bone", chance = 2800, maxCount = 1 }, 
	{name = "Violet Crystal Shard", chance = 2450, maxCount = 1 }, 
	{name = "Two Handed Sword", chance = 2340, maxCount = 1 }, 
	{name = "Iron Ore", chance = 2110, maxCount = 1 }, 
	{name = "Sai", chance = 1310, maxCount = 1 }, 
	{name = "Haunted Blade", chance = 1250, maxCount = 1 }, 
	{name = "Cluster of Solace", chance = 1200, maxCount = 1 }, 
	{name = "Assassin Dagger", chance = 630, maxCount = 1 }, 
	{name = "Nightmare Blade", chance = 630, maxCount = 1 }, 
}


monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
	-- bleed
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, radius = 3, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 6, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -650, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -500, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -600, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false},
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 250, maxDamage = 425, effect = CONST_ME_HITBYPOISON, target = false}
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
