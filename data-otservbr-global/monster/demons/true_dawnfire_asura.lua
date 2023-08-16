local mType = Game.createMonsterType("True Dawnfire Asura")
local monster = {}

monster.description = "a true dawnfire asura"
monster.experience = 7475
monster.outfit = {
	lookType = 1068,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 121,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1620
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace."
	}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 28664
monster.speed = 180
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
	staticAttackChance = 80,
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 100000, maxCount = 12 }, 
	{name = "Flask of Demonic Blood", chance = 30110, maxCount = 1 }, 
	{name = "Golden Lotus Brooch", chance = 22400, maxCount = 1 }, 
	{name = "Demonic Essence", chance = 22110, maxCount = 1 }, 
	{name = "Peacock Feather Fan", chance = 21460, maxCount = 1 }, 
	{name = "Soul Orb", chance = 20140, maxCount = 1 }, 
	{name = "Small Emerald", chance = 18010, maxCount = 5 }, 
	{name = "Great Mana Potion", chance = 16560, maxCount = 2 }, 
	{name = "Small Ruby", chance = 11890, maxCount = 3 }, 
	{name = "Small Enchanted Ruby", chance = 9440, maxCount = 3 }, 
	{name = "Small Topaz", chance = 8560, maxCount = 2 }, 
	{name = "Small Diamond", chance = 7500, maxCount = 2 }, 
	{name = "Small Amethyst", chance = 6810, maxCount = 2 }, 
	{name = "Crystal Coin", chance = 4670, maxCount = 1 }, 
	{name = "Ruby Necklace", chance = 4330, maxCount = 1 }, 
	{name = "Royal Star", chance = 4050, maxCount = 3 }, 
	{id = 3039, chance = 3800, maxCount = 1 }, --red gem
	{name = "Mystic Turban", chance = 3170, maxCount = 1 }, 
	{name = "Oriental Shoes", chance = 3110, maxCount = 1 }, 
	{name = "Red Piece of Cloth", chance = 3070, maxCount = 1 }, 
	{name = "Mysterious Fetish", chance = 2820, maxCount = 1 }, 
	{name = "Blue Gem", chance = 2600, maxCount = 1 }, 
	{name = "Focus Cape", chance = 2200, maxCount = 1 }, 
	{name = "Magma Coat", chance = 1980, maxCount = 1 }, 
	{name = "Wand of Inferno", chance = 1440, maxCount = 1 }, 
	{name = "Spellbook of Mind Control", chance = 1220, maxCount = 1 }, 
	{id = 6299, chance = 1100}, -- death ring	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -750, range = 5, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -830, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -300, length = 5, spread = 0, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 77,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
