local mType = Game.createMonsterType("Icecold Book")
local monster = {}

monster.description = "an icecold book"
monster.experience = 12750
monster.outfit = {
	lookType = 1061,
	lookHead = 87,
	lookBody = 85,
	lookLegs = 79,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1664
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

monster.health = 21000
monster.maxHealth = 21000
monster.race = "ink"
monster.corpse = 28774
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
	{name = "Platinum Coin", chance = 91090, maxCount = 5 }, 
	{name = "Book Page", chance = 62150, maxCount = 1 }, 
	{name = "Small Diamond", chance = 45850, maxCount = 1 }, 
	{name = "Small Sapphire", chance = 27230, maxCount = 9 }, 
	{name = "Ice Rapier", chance = 21100, maxCount = 1 }, 
	{name = "Ultimate Mana Potion", chance = 21100, maxCount = 1 }, 
	{name = "Ultimate Health Potion", chance = 18600, maxCount = 1 }, 
	{name = "Quill", chance = 18230, maxCount = 1 }, 
	{name = "Silken Bookmark", chance = 17220, maxCount = 1 }, 
	{name = "Glacier Mask", chance = 13520, maxCount = 1 }, 
	{name = "Frosty Heart", chance = 12750, maxCount = 1 }, 
	{name = "Diamond Sceptre", chance = 6380, maxCount = 1 }, 
	{name = "Glacier Kilt", chance = 4820, maxCount = 1 }, 
	{id = 7441, chance = 5000}, -- ice cube
	{name = "Glacier Shoes", chance = 3400, maxCount = 1 }, 
	{name = "Crystal Mace", chance = 2650, maxCount = 1 }, 
	{name = "Glacier Robe", chance = 1740, maxCount = 1 }, 
	{name = "Sapphire Hammer", chance = 1710, maxCount = 1 }, 
	{name = "Strange Helmet", chance = 1680, maxCount = 1 }, 
	{name = "Crystalline Armor", chance = 880, maxCount = 1 }, 
	{name = "Glacial Rod", chance = 560, maxCount = 1 }, 
	{name = "Leviathan's Amulet", chance = 130, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -850},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -800, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1300, length = 5, spread = 0, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -650, maxDamage = -950, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 82,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 350, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
