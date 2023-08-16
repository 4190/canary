local mType = Game.createMonsterType("Guardian of Tales")
local monster = {}

monster.description = "a guardian of tales"
monster.experience = 9204
monster.outfit = {
	lookType = 1063,
	lookHead = 92,
	lookBody = 52,
	lookLegs = 0,
	lookFeet = 79,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1659
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

monster.health = 15000
monster.maxHealth = 15000
monster.race = "ink"
monster.corpse = 28770
monster.speed = 210
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
	{name = "Platinum Coin", chance = 84840, maxCount = 32 }, 
	{name = "Small Diamond", chance = 57870, maxCount = 5 }, 
	{name = "Book Page", chance = 44330, maxCount = 4 }, 
	{name = "Glowing Rune", chance = 38570, maxCount = 8 }, 
	{name = "Burnt Scroll", chance = 37720, maxCount = 1 }, 
	{name = "Soul Orb", chance = 9610, maxCount = 1 }, 
	{name = "Wand of Inferno", chance = 9540, maxCount = 1 }, 
	{name = "Spellbook of Warding", chance = 5540, maxCount = 1 }, 
	{name = "Piece of Hellfire Armor", chance = 5210, maxCount = 1 }, 
	{name = "Fire Axe", chance = 4220, maxCount = 1 }, 
	{name = "Fire Sword", chance = 1210, maxCount = 1 }, 
	{name = "Magma Legs", chance = 920, maxCount = 1 }, 
	{name = "Magma Coat", chance = 880, maxCount = 1 }, 
	{id = 12600, chance = 260, maxCount = 1 }, --coal
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -1600, range = 5, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -800, radius = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -650, range = 5, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -750, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -12},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
