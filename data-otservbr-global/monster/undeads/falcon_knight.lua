local mType = Game.createMonsterType("Falcon Knight")
local monster = {}

monster.description = "a falcon knight"
monster.experience = 5985
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 96,
	lookLegs = 38,
	lookFeet = 105,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1646
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Falcon Bastion."
	}

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 28621
monster.speed = 110
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
	{text = "Mmmhaarrrgh!", yell = false}
}

monster.loot = {
	{name = "Ham", chance = 83790, maxCount = 8 }, 
	{name = "Soul Orb", chance = 41210, maxCount = 1 }, 
	{name = "Great Health Potion", chance = 39220, maxCount = 3 }, 
	{name = "Flask of Demonic Blood", chance = 36310, maxCount = 4 }, 
	{name = "Small Amethyst", chance = 30300, maxCount = 3 }, 
	{name = "Assassin Star", chance = 29750, maxCount = 10 }, 
	{name = "Great Mana Potion", chance = 24470, maxCount = 3 }, 
	{name = "Small Ruby", chance = 19100, maxCount = 3 }, 
	{name = "Onyx Arrow", chance = 18180, maxCount = 15 }, 
	{name = "Small Diamond", chance = 18050, maxCount = 3 }, 
	{name = "Small Emerald", chance = 17600, maxCount = 3 }, 
	{name = "Small Topaz", chance = 5770, maxCount = 3 }, 
	{name = "Titan Axe", chance = 3780, maxCount = 1 }, 
	{id = 281, chance = 3530}, -- giant shimmering pearl (green)
	{name = "Spiked Squelcher", chance = 2610, maxCount = 1 }, 
	{name = "Knight Armor", chance = 2150, maxCount = 1 }, 
	{name = "Falcon Crest", chance = 1470, maxCount = 1 }, 
	{name = "Damaged Armor Plates", chance = 1310, maxCount = 1 }, 
	{name = "Violet Gem", chance = 1270, maxCount = 1 }, 
	{name = "Golden Armor", chance = 1200, maxCount = 1 }, 
	{name = "Green Gem", chance = 1150, maxCount = 1 }, 
	{name = "War Axe", chance = 1120, maxCount = 1 }, 
	{name = "Mastermind Shield", chance = 890, maxCount = 1 }, 
	{id = 3481, chance = 520}, -- closed trap
	{name = "Heavy Mace", chance = 310, maxCount = 1 }, 
	{name = "Demonbone Amulet", chance = 280, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -500, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -290, maxDamage = -360, length = 5, spread = 0, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.defenses = {
	defense = 86,
	armor = 86
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
