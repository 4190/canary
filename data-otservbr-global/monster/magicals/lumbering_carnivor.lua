local mType = Game.createMonsterType("Lumbering Carnivor")
local monster = {}

monster.description = "a Lumbering Carnivor"
monster.experience = 1452
monster.outfit = {
	lookType = 1133,
	lookHead = 0,
	lookBody = 59,
	lookLegs = 67,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1721
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Carnivora's Rocks."
	}

monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 30065
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 65129, maxCount = 3 }, 
	{name = "Blue Glass Plate", chance = 20670, maxCount = 3 }, 
	{name = "Axe", chance = 14940, maxCount = 1 }, 
	{name = "Ice Rapier", chance = 7440, maxCount = 1 }, 
	{id = 3264, chance = 5000}, -- sword
	{id = 281, chance = 2000}, -- giant shimmering pearl (green)
	{name = "Green Gem", chance = 1860, maxCount = 1 }, 
	{name = "Two Handed Sword", chance = 1670, maxCount = 1 }, 
	{name = "Violet Gem", chance = 1570, maxCount = 1 }, 
	{name = "Glorious Axe", chance = 1470, maxCount = 1 }, 
	{name = "Fur Armor", chance = 1030, maxCount = 1 }, 
	{name = "Blue Gem", chance = 980, maxCount = 1 }, 
	{name = "Green Crystal Shard", chance = 930, maxCount = 1 }, 
	{name = "Blue Robe", chance = 780, maxCount = 1 }, 
	{name = "Focus Cape", chance = 50, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -300},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_CRYSTALLINEARROW, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -240, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -210, length = 5, spread = 0, effect = CONST_ME_SMOKE, target = false}, --beam
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -160, maxDamage = -190, length = 5, spread = 0, effect = CONST_ME_SMOKE, target = false}, --beam
}

monster.defenses = {
	defense = 20,
	armor = 71
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
