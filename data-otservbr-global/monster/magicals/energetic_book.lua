local mType = Game.createMonsterType("Energetic Book")
local monster = {}

monster.description = "an energetic book"
monster.experience = 12034
monster.outfit = {
	lookType = 1061,
	lookHead = 15,
	lookBody = 91,
	lookLegs = 85,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1665
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
	}

monster.health = 18500
monster.maxHealth = 18500
monster.race = "ink"
monster.corpse = 28778
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false
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
	{name = "Platinum Coin", chance = 75430, maxCount = 35 },
	{name = "Glowing Rune", chance = 60390, maxCount = 6 },
	{name = "Book Page", chance = 45420, maxCount = 8 },
	{name = "Ultimate Mana Potion", chance = 15360, maxCount = 1 },
	{name = "Silken Bookmark", chance = 12700, maxCount = 1 },
	{name = "Energy Ball", chance = 11230, maxCount = 1 },
	{name = "Ultimate Health Potion", chance = 11220, maxCount = 1 },
	{name = "Lightning Headband", chance = 3090, maxCount = 1 },
	{name = "Lightning Pendant", chance = 2610, maxCount = 1 },
	{name = "Wand of Defiance", chance = 1790, maxCount = 1 },
	{name = "Lightning Legs", chance = 1730, maxCount = 1 },
	{name = "Might Ring", chance = 1710, maxCount = 1 },
	{name = "Lightning Boots", chance = 1540, maxCount = 1 },
	{name = "Spellweaver's Robe", chance = 850, maxCount = 1 },
	{name = "Haunted Blade", chance = 620, maxCount = 1 },
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -750, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1000, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -800, length = 6, spread = 0, effect = CONST_ME_STUN, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
