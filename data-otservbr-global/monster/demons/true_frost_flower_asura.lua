local mType = Game.createMonsterType("True Frost Flower Asura")
local monster = {}

monster.description = "a true frost flower asura"
monster.experience = 7069
monster.outfit = {
	lookType = 1068,
	lookHead = 9,
	lookBody = 0,
	lookLegs = 86,
	lookFeet = 9,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1622
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace's secret basement."
	}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 28668
monster.speed = 150
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
	targetDistance = 3,
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
	{name = "Platinum Coin", chance = 100000, maxCount = 8 }, 
	{name = "Golden Lotus Brooch", chance = 23080, maxCount = 1 }, 
	{name = "Great Health Potion", chance = 21030, maxCount = 2 }, 
	{name = "Peacock Feather Fan", chance = 20510, maxCount = 1 }, 
	{name = "Flask of Demonic Blood", chance = 19790, maxCount = 1 }, 
	{name = "Soul Orb", chance = 18670, maxCount = 1 }, 
	{name = "Small Emerald", chance = 16000, maxCount = 5 }, 
	{name = "Demonic Essence", chance = 15280, maxCount = 1 }, 
	{name = "Small Diamond", chance = 11900, maxCount = 3 }, 
	{name = "Small Enchanted Sapphire", chance = 11590, maxCount = 3 }, 
	{name = "Small Sapphire", chance = 10970, maxCount = 3 }, 
	{name = "Black Pearl", chance = 10360, maxCount = 2 }, 
	{name = "Assassin Star", chance = 9640, maxCount = 5 }, 
	{name = "Silver Brooch", chance = 9230, maxCount = 1 }, 
	{name = "White Pearl", chance = 8620, maxCount = 2 }, 
	{name = "Small Topaz", chance = 8510, maxCount = 2 }, 
	{name = "Small Ruby", chance = 8000, maxCount = 2 }, 
	{name = "Crystal Coin", chance = 7380, maxCount = 1 }, 
	{name = "Yellow Gem", chance = 4510, maxCount = 1 }, 
	{name = "Royal Star", chance = 4000, maxCount = 3 }, 
	{name = "Tribal Mask", chance = 3590, maxCount = 1 }, 
	{name = "Gold Ingot", chance = 3380, maxCount = 1 }, 
	{name = "Northwind Rod", chance = 3180, maxCount = 1 }, 
	{name = "Blue Gem", chance = 2260, maxCount = 1 }, 
	{name = "Silver Amulet", chance = 2260, maxCount = 1 }, 
	{name = "Spellbook of Mind Control", chance = 1740, maxCount = 1 }, 
	{name = "Blue Robe", chance = 1540, maxCount = 1 }, 
	{name = "Assassin Dagger", chance = 1330, maxCount = 1 }, 
	{name = "Skullcracker Armor", chance = 1330, maxCount = 1 }, 
	{name = "Hailstorm Rod", chance = 1230, maxCount = 1 }, 
	{name = "Oriental Shoes", chance = 920, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -780, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -0, maxDamage = -250, length = 5, spread = 0, effect = CONST_ME_MAGIC_RED, target = false},
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
