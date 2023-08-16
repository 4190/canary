local mType = Game.createMonsterType("True Midnight Asura")
local monster = {}

monster.description = "a true midnight asura"
monster.experience = 7313
monster.outfit = {
	lookType = 1068,
	lookHead = 0,
	lookBody = 76,
	lookLegs = 53,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1621
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

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 28617
monster.speed = 170
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
	{name = "Platinum Coin", chance = 100000, maxCount = 8 }, 
	{name = "Peacock Feather Fan", chance = 21790, maxCount = 1 }, 
	{name = "Golden Lotus Brooch", chance = 21440, maxCount = 1 }, 
	{name = "Soul Orb", chance = 20890, maxCount = 1 }, 
	{name = "Flask of Demonic Blood", chance = 20540, maxCount = 1 }, 
	{name = "Great Health Potion", chance = 19960, maxCount = 2 }, 
	{name = "Small Diamond", chance = 15630, maxCount = 3 }, 
	{name = "Demonic Essence", chance = 14730, maxCount = 1 }, 
	{name = "Small Enchanted Amethyst", chance = 14410, maxCount = 3 }, 
	{name = "Small Sapphire", chance = 12690, maxCount = 3 }, 
	{name = "Silver Brooch", chance = 10060, maxCount = 1 }, 
	{name = "Black Pearl", chance = 9870, maxCount = 2 }, 
	{name = "Assassin Star", chance = 9210, maxCount = 5 }, 
	{name = "White Pearl", chance = 8170, maxCount = 2 }, 
	{name = "Small Topaz", chance = 8119,999999999999, maxCount = 2 }, 
	{name = "Small Ruby", chance = 7830, maxCount = 2 }, 
	{name = "Small Emerald", chance = 7750, maxCount = 2 }, 
	{name = "Crystal Coin", chance = 5760, maxCount = 1 }, 
	{name = "Royal Star", chance = 4090, maxCount = 3 }, 
	{name = "Necrotic Rod", chance = 3610, maxCount = 1 }, 
	{name = "Tribal Mask", chance = 3290, maxCount = 1 }, 
	{name = "Violet Gem", chance = 2390, maxCount = 1 }, 
	{name = "Assassin Dagger", chance = 2180, maxCount = 1 }, 
	{name = "Blue Gem", chance = 2020, maxCount = 1 }, 
	{name = "Oriental Shoes", chance = 2020, maxCount = 1 }, 
	{name = "Silver Amulet", chance = 2020, maxCount = 1 }, 
	{name = "Gold Ingot", chance = 1800, maxCount = 1 }, 
	{name = "Underworld Rod", chance = 1190, maxCount = 1 }, 
	{name = "Skullcracker Armor", chance = 930, maxCount = 1 }, 
	{name = "Blue Robe", chance = 900, maxCount = 1 }, 
	{name = "Spellbook of Mind Control", chance = 900, maxCount = 1 }, 
	{name = "Yellow Gem", chance = 900, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -700, length = 5, spread = 0, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -650, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -240, length = 6, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -280, length = 5, spread = 0, effect = CONST_ME_MAGIC_RED, target = false},
}

monster.defenses = {
	defense = 55,
	armor = 75,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
