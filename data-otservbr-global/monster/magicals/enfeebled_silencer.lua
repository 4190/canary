local mType = Game.createMonsterType("Enfeebled Silencer")
local monster = {}

monster.description = "an enfeebled silencer"
monster.experience = 1100
monster.outfit = {
	lookType = 585,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1443
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

monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 20155
monster.speed = 165
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
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
	{text = "Prrrroooaaaah!!! PRROAAAH!!", yell = false},
	{text = "PRRRROOOOOAAAAAHHHH!!!", yell = false},
	{text = "HUUUSSSSSSSSH!!", yell = false},
	{text = "Hussssssh!!", yell = false}
}

monster.loot = {
	{name = "Gold Coin", chance = 100000, maxCount = 100 }, 
	{name = "Platinum Coin", chance = 39950, maxCount = 1 }, 
	{name = "Fairy Wings", chance = 11770, maxCount = 1 }, 
	{name = "Assassin Star", chance = 7040, maxCount = 10 }, 
	{name = "Silencer Claws", chance = 3880, maxCount = 1 }, 
	{name = "Haunted Blade", chance = 1550, maxCount = 1 }, 
	{id = 3049, chance = 1320, maxCount = 1 }, --stealth ring
	{name = "Shadow Sceptre", chance = 940, maxCount = 1 }, 
	{name = "Glorious Axe", chance = 930, maxCount = 1 }, 
	{name = "Terra Boots", chance = 880, maxCount = 1 }, 
	{name = "Terra Legs", chance = 830, maxCount = 1 }, 
	{name = "Diamond Sceptre", chance = 740, maxCount = 1 }, 
	{name = "Boots of Haste", chance = 490, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 70, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
	{name ="silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -40, maxDamage = -90, radius = 4, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="speed", interval = 2000, chance = 15, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 225, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 65}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
