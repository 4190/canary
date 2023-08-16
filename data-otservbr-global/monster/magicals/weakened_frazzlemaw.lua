local mType = Game.createMonsterType("Weakened Frazzlemaw")
local monster = {}

monster.description = "a weakened frazzlemaw"
monster.experience = 1000
monster.outfit = {
	lookType = 594,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1442
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist."
	}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 20233
monster.speed = 150
monster.manaCost = 450

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
	{name = "Gold Coin", chance = 100000, maxCount = 100 }, 
	{name = "Platinum Coin", chance = 60510, maxCount = 1 }, 
	{name = "Fairy Wings", chance = 15080, maxCount = 1 }, 
	{id = 3114, chance = 10400}, -- skull
	{name = "Frazzle Tongue", chance = 11720, maxCount = 1 }, 
	{name = "Frazzle Skin", chance = 10220, maxCount = 1 }, 
	{id = 3115, chance = 9200}, -- bone
	{name = "Great Mana Potion", chance = 9940, maxCount = 3 }, 
	{name = "Great Health Potion", chance = 9910, maxCount = 2 }, 
	{name = "Remains of a Fish", chance = 9850, maxCount = 1 }, 
	{id = 3578, chance = 7000, maxCount = 3}, -- fish
	{name = "Ham", chance = 6070, maxCount = 1 }, 
	{name = "Big Bone", chance = 5270, maxCount = 1 }, 
	{name = "Fish Fin", chance = 5050, maxCount = 1 }, 
	{name = "Piece of Iron", chance = 4900, maxCount = 1 }, 
	{name = "Iron Ore", chance = 2760, maxCount = 1 }, 
	{name = "Nightmare Blade", chance = 340, maxCount = 1 }, 
	{name = "Sai", chance = 300, maxCount = 1 }, 
	{name = "Cluster of Solace", chance = 190, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	-- bleed
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -35, maxDamage = -35, radius = 3, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -0, maxDamage = -500, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -300, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 0, maxDamage = 50, effect = CONST_ME_HITBYPOISON, target = false}
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
