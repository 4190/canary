local mType = Game.createMonsterType("Feral Sphinx")
local monster = {}

monster.description = "a feral sphinx"
monster.experience = 8800
monster.outfit = {
	lookType = 1188,
	lookHead = 76,
	lookBody = 75,
	lookLegs = 57,
	lookFeet = 0,
	lookAddons = 2,
	lookMount = 0
}

monster.raceId = 1807
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh, south of Issavi."
	}

monster.health = 9800
monster.maxHealth = 9800
monster.race = "blood"
monster.corpse = 31658
monster.speed = 160
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{name = "Platinum Coin", chance = 100000, maxCount = 3 }, 
	{name = "Cyan Crystal Fragment", chance = 9020, maxCount = 1 }, 
	{id = 3039, chance = 8270, maxCount = 1 }, --red gem
	{name = "Green Crystal Shard", chance = 7190, maxCount = 1 }, 
	{name = "Dragon Necklace", chance = 7170, maxCount = 1 }, 
	{name = "Magma Amulet", chance = 6510, maxCount = 1 }, 
	{name = "Sphinx Feather", chance = 5970, maxCount = 1 }, 
	{name = "Wand of Inferno", chance = 5860, maxCount = 1 }, 
	{name = "Small Sapphire", chance = 5310, maxCount = 2 }, 
	{name = "Sphinx Tiara", chance = 4520, maxCount = 1 }, 
	{name = "Wand of Draconia", chance = 4380, maxCount = 1 }, 
	{name = "Blue Gem", chance = 4270, maxCount = 1 }, 
	{name = "Fire Axe", chance = 3550, maxCount = 1 }, 
	{name = "Magma Boots", chance = 1790, maxCount = 1 }, 
	{name = "Magma Monocle", chance = 1560, maxCount = 1 }, 
	{name = "Green Gem", chance = 1540, maxCount = 1 }, 
	{name = "Magma Legs", chance = 1400, maxCount = 1 }, 
	{name = "Small Enchanted Emerald", chance = 1240, maxCount = 2 },
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="fire wave", interval = 2000, chance = 15, minDamage = -350, maxDamage = -500, length = 1, spread = 0, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -500, radius = 4, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -550, range = 1, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -580, length = 6, spread = 3, effect = CONST_ME_HOLYAREA, target = false}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
