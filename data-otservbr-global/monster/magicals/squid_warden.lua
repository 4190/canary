local mType = Game.createMonsterType("Squid Warden")
local monster = {}

monster.description = "a squid warden"
monster.experience = 15300
monster.outfit = {
	lookType = 1059,
	lookHead = 9,
	lookBody = 21,
	lookLegs = 3,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1669
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

monster.health = 16500
monster.maxHealth = 16500
monster.race = "undead"
monster.corpse = 28786
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
	{name = "Small Sapphire", chance = 68040, maxCount = 3 }, 
	{name = "Platinum Coin", chance = 50440, maxCount = 50 }, 
	{name = "Glowing Rune", chance = 35460, maxCount = 6 }, 
	{name = "Frosty Heart", chance = 22710, maxCount = 1 }, 
	{name = "Ultimate Mana Potion", chance = 17410, maxCount = 1 }, 
	{id = 28568, chance = 15000}, -- inkwell, 
	{name = "Ultimate Health Potion", chance = 15540, maxCount = 1 }, 
	{id = 7441, chance = 15000}, -- ice cube
	{name = "Glacier Mask", chance = 7930, maxCount = 1 }, 
	{name = "Ice Rapier", chance = 5210, maxCount = 1 }, 
	{name = "Crystal Mace", chance = 5020, maxCount = 1 }, 
	{name = "Crystal Sword", chance = 4520, maxCount = 1 }, 
	{name = "Slime Heart", chance = 4310, maxCount = 1 }, 
	{name = "Diamond Sceptre", chance = 4050, maxCount = 1 }, 
	{name = "Piece of Dead Brain", chance = 4030, maxCount = 1 }, 
	{name = "Glacier Kilt", chance = 2720, maxCount = 1 }, 
	{name = "Glacier Robe", chance = 2350, maxCount = 1 }, 
	{name = "Sapphire Hammer", chance = 940, maxCount = 1 }, 
	{name = "Glacial Rod", chance = 770, maxCount = 1 }, 
	{name = "Crystalline Armor", chance = 660, maxCount = 1 }, 
	{name = "Leviathan's Amulet", chance = 280, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -900, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = false}, 
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -900, radius = 3, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -700, range = 5, radius = 3, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_SMOKE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -700, length = 5, spread = 0, effect = CONST_ME_SOUND_BLUE, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 78
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -15},
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
