local mType = Game.createMonsterType("Falcon Paladin")
local monster = {}

monster.description = "a falcon paladin"
monster.experience = 6544
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 96,
	lookLegs = 38,
	lookFeet = 105,
	lookAddons = 2,
	lookMount = 0
}

monster.raceId = 1647
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

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 28861
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
	staticAttackChance = 70,
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
	{text = "Uuunngh!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 89990, maxCount = 6 }, 
	{name = "Great Spirit Potion", chance = 48400, maxCount = 2 }, 
	{name = "Small Diamond", chance = 47980, maxCount = 2 }, 
	{name = "Small Amethyst", chance = 47200, maxCount = 2 }, 
	{name = "Small Emerald", chance = 46660, maxCount = 2 }, 
	{name = "Assassin Star", chance = 30240, maxCount = 10 }, 
	{name = "Small Topaz", chance = 23480, maxCount = 2 }, 
	{name = "Small Ruby", chance = 23450, maxCount = 2 }, 
	{name = "Onyx Arrow", chance = 18320, maxCount = 15 }, 
	{id = 3039, chance = 8780, maxCount = 1 }, --red gem 
	{name = "Green Gem", chance = 5790, maxCount = 1 }, 
	{name = "Violet Gem", chance = 5270, maxCount = 1 }, 
	{id = 281, chance = 2050}, -- giant shimmering pearl (green)
	{name = "Damaged Armor Plates", chance = 1290, maxCount = 1 }, 
	{name = "Falcon Crest", chance = 1000, maxCount = 1 }, 
	{name = "Mastermind Shield", chance = 400, maxCount = 1 }, 
	{name = "Golden Armor", chance = 330, maxCount = 1 }, 	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -550, range = 5, shootEffect = CONST_ANI_ROYALSPEAR, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = 500, range = 5, shootEffect = CONST_ANI_BOLT, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -530, range = 7, radius = 3, shootEffect = CONST_ANI_POWERBOLT, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -350, length = 5, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
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
