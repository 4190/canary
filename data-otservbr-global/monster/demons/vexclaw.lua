local mType = Game.createMonsterType("Vexclaw")
local monster = {}

monster.description = "a vexclaw"
monster.experience = 6248
monster.outfit = {
	lookType = 854,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1197
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Dungeons of The Ruthless Seven."
	}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "fire"
monster.corpse = 22776
monster.speed = 135
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	staticAttackChance = 70,
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
	{text = "Weakness must be culled!", yell = false},
	{text = "Power is miiiiine!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 87640, maxCount = 9 }, 
	{name = "Gold Coin", chance = 87400, maxCount = 198 }, 
	{name = "Great Mana Potion", chance = 16160, maxCount = 5 }, 
	{name = "Great Spirit Potion", chance = 15940, maxCount = 5 }, 
	{name = "Vexclaw Talon", chance = 13320, maxCount = 1 }, 
	{name = "Ultimate Health Potion", chance = 12940, maxCount = 5 }, 
	{name = "Demonic Essence", chance = 12900, maxCount = 1 }, 
	{name = "Fire Mushroom", chance = 12660, maxCount = 6 }, 
	{name = "Small Emerald", chance = 6700, maxCount = 5 }, 
	{name = "Small Ruby", chance = 6620, maxCount = 5 }, 
	{name = "Small Amethyst", chance = 6450, maxCount = 5 }, 
	{name = "Small Topaz", chance = 6050, maxCount = 5 }, 
	{name = "Yellow Gem", chance = 3240, maxCount = 1 }, 
	{name = "Ice Rapier", chance = 3210, maxCount = 1 }, 
	{id = 3039, chance = 3000, maxCount = 1 }, --red gem
	{name = "Fire Axe", chance = 2560, maxCount = 1 }, 
	{name = "Might Ring", chance = 1840, maxCount = 1 }, 
	{id = 3051, chance = 1790}, -- energy ring
	{name = "Giant Sword", chance = 1360, maxCount = 1 }, 
	{id = 3098, chance = 1320}, -- ring of healing
	{name = "Devil Helmet", chance = 820, maxCount = 1 }, 
	{name = "Demon Shield", chance = 550, maxCount = 1 }, 
	{name = "Platinum Amulet", chance = 520, maxCount = 1 }, 
	{name = "Rift Lance", chance = 470, maxCount = 1 }, 
	{name = "Golden Legs", chance = 310, maxCount = 1 }, 
	{name = "Mastermind Shield", chance = 290, maxCount = 1 }, 
	{name = "Rift Shield", chance = 290, maxCount = 1 }, 
	{name = "Rift Crossbow", chance = 280, maxCount = 1 }, 
	{name = "Rift Bow", chance = 220, maxCount = 1 }, 
	{name = "Magic Plate Armor", chance = 90, maxCount = 1 }, 
	{name = "Demonrage Sword", chance = 80, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -500, radius = 4, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -450, range = 5, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -350, range = 5, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -0, maxDamage = -150, length = 5, spread = 0, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -400, maxDamage = -550, length = 5, spread = 0, effect = CONST_ME_ICEATTACK, target = false}, 

}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 75},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
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
