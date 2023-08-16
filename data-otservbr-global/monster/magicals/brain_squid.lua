local mType = Game.createMonsterType("Brain Squid")
local monster = {}

monster.description = "a brain squid"
monster.experience = 17672
monster.outfit = {
	lookType = 1059,
	lookHead = 17,
	lookBody = 41,
	lookLegs = 77,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1653
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

monster.health = 18000
monster.maxHealth = 18000
monster.race = "undead"
monster.corpse = 28582
monster.speed = 215
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
	{name = "violet crystal shard", chance = 35000, maxCount = 4},
	{name = "platinum coin", chance = 75000, maxCount = 20},
	{name = "glowing rune", chance = 25000, maxCount = 4},
	{name = "instable proto matter", chance = 20000},
	{name = "energy ball", chance = 20000},
	{name = "energy bar", chance = 15000},
	{name = "energy drink", chance = 15000},
	{name = "odd organ", chance = 10000},
	{name = "frozen lightning", chance = 12000},
	{id = 28568, chance = 10000}, -- inkwell
	{name = "ultimate mana potion", chance = 12000},
	{name = "blue crystal splinter", chance = 7000},
	{name = "small ruby", chance = 7000, maxCount = 6},
	{name = "lightning headband", chance = 5000},
	{name = "violet gem", chance = 5000},
	{name = "cyan crystal fragment", chance = 4000},
	{name = "piece of dead brain", chance = 1000},
	{name = "wand of defiance", chance = 1000},
	{name = "lightning pendant", chance = 2000},
	{name = "might ring", chance = 2000},
	{name = "slime heart", chance = 2000},
	{id = 23544, chance = 1000}, -- collar of red plasma
	{id = 23542, chance = 1000}, -- collar of blue plasma
	{id = 23543, chance = 1000}, -- collar of green plasma
	{id = 23533, chance = 3000}, -- ring of red plasma
	{id = 23529, chance = 3000}, -- ring of blue plasma
	{id = 23531, chance = 3000} -- ring of green plasma
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1000, range = 5, radius = 3, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -900, radius = 3, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -600, length = 5, spread = 0, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 1500, chance = 12, type = COMBAT_HOLYDAMAGE, minDamage = -800, maxDamage = -1000, radius = 3, effect = CONST_ME_HOLYAREA, target = false}, --exori 
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
