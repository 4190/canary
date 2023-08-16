local mType = Game.createMonsterType("Cursed Book")
local monster = {}

monster.description = "a cursed book"
monster.experience = 13345
monster.outfit = {
	lookType = 1061,
	lookHead = 79,
	lookBody = 81,
	lookLegs = 93,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1655
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Secret Library."
	}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "ink"
monster.corpse = 28590
monster.speed = 220
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
	canWalkOnEnergy = false,
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
	{name = "Platinum Coin", chance = 75560, maxCount = 15 },
	{name = "Book Page", chance = 64910, maxCount = 4 },
	{name = "Small Diamond", chance = 48570, maxCount = 6 },
	{name = "Silken Bookmark", chance = 37300, maxCount = 1 },
	{name = "Small Topaz", chance = 26860, maxCount = 5 },
	{name = "Small Stone", chance = 19070, maxCount = 10 },
	{name = "Protection Amulet", chance = 9250, maxCount = 1 },
	{name = "Diamond Sceptre", chance = 6080, maxCount = 1 },
	{name = "Terra Boots", chance = 5460, maxCount = 1 },
	{name = "Terra Hood", chance = 4180, maxCount = 1 },
	{name = "Terra Amulet", chance = 3960, maxCount = 1 },
	{name = "Sacred Tree Amulet", chance = 1810, maxCount = 1 },
	{name = "Stone Skin Amulet", chance = 1810, maxCount = 1 },
	{name = "Terra Legs", chance = 1190, maxCount = 1 },
	{name = "Terra Mantle", chance = 700, maxCount = 1 },
	{name = "Springsprout Rod", chance = 660, maxCount = 1 },
	{name = "Swamplair Armor", chance = 220, maxCount = 1 },
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -600},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -800, range = 7, shootEffect = CONST_ANI_EARTHARROW, effect = CONST_ME_POISONAREA,  target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -650, maxDamage = -850, length = 5, spread = 0, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -1100, radius = 4, shootEffect = CONST_ANI_EARTHARROW, effect = CONST_ME_POISONAREA, target = true},
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
