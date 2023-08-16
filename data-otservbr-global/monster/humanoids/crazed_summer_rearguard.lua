local mType = Game.createMonsterType("Crazed Summer Rearguard")
local monster = {}

monster.description = "a Crazed Summer Rearguard"
monster.experience = 4700
monster.outfit = {
	lookType = 1136,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 3,
	lookFeet = 121,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1733
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 5,
	Occurrence = 0,
	Locations = "Court of Winter, Dream Labyrinth."
	}

monster.health = 5300
monster.maxHealth = 5300
monster.race = "blood"
monster.corpse = 30081
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
	{text = "Is this real life?", yell = false},
	{text = "Weeeuuu weeeuuu!!!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 85060, maxCount = 11 }, 
	{id = 5921, chance = 10500}, -- heaven blossom
	{name = "Dream Essence Egg", chance = 8230, maxCount = 1 }, 
	{name = "Elvish Talisman", chance = 7200, maxCount = 1 }, 
	{name = "Small Enchanted Ruby", chance = 5990, maxCount = 1 }, 
	{name = "Red Crystal Fragment", chance = 4520, maxCount = 1 }, 
	{name = "Violet Crystal Shard", chance = 4400, maxCount = 1 }, 
	{name = "Leaf Star", chance = 4100, maxCount = 8 }, 
	{id = 23529, chance = 2500}, -- ring of blue plasma
	{name = "Wood Cape", chance = 1260, maxCount = 1 }, 
	{name = "Yellow Gem", chance = 1050, maxCount = 1 }, 
	{id = 23542, chance = 900},-- collar of blue plasma
	{name = "Sun Fruit", chance = 890, maxCount = 1 }, 
	{name = "Small Enchanted Sapphire", chance = 780, maxCount = 2 }, 
	{name = "Small Diamond", chance = 580, maxCount = 1 }, 
	{name = "Crystal Crossbow", chance = 470, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -300, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -300, range = 5, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 70
}

monster.reflects = {
	{type = COMBAT_FIREDAMAGE, percent = 70}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
