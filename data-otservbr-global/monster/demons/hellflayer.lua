local mType = Game.createMonsterType("Hellflayer")
local monster = {}

monster.description = "a hellflayer"
monster.experience = 11000
monster.outfit = {
	lookType = 856,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1198
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

monster.health = 14000
monster.maxHealth = 14000
monster.race = "blood"
monster.corpse = 22784
monster.speed = 165
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	staticAttackChance = 90,
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
	{text = "You should consider bargaining for your life!", yell = false},
	{text = "Your tainted soul belongs to us anyway!", yell = false}
}

monster.loot = {
	{name = "Gold Coin", chance = 90700, maxCount = 198 }, 
	{name = "Platinum Coin", chance = 89010, maxCount = 12 }, 
	{name = "Flask of Demonic Blood", chance = 21010, maxCount = 1 }, 
	{name = "Demonic Essence", chance = 17110, maxCount = 1 }, 
	{name = "Great Mana Potion", chance = 14540, maxCount = 5 }, 
	{name = "Pair of Hellflayer Horns", chance = 14260, maxCount = 1 }, 
	{name = "Great Spirit Potion", chance = 13550, maxCount = 5 }, 
	{name = "Ultimate Health Potion", chance = 11990, maxCount = 5 }, 
	{name = "Small Ruby", chance = 7360, maxCount = 5 }, 
	{name = "Small Topaz", chance = 7150, maxCount = 5 }, 
	{name = "Small Diamond", chance = 7040, maxCount = 5 }, 
	{name = "Small Emerald", chance = 6910, maxCount = 5 }, 
	{name = "Small Amethyst", chance = 6830, maxCount = 5 }, 
	{name = "Gold Ingot", chance = 5840, maxCount = 2 }, 
	{id = 281, chance = 4000}, -- giant shimmering pearl (green)
	{id = 3039, chance = 2000, maxCount = 1 }, --red gem
	{name = "Violet Gem", chance = 960, maxCount = 1 }, 
	{name = "Magma Boots", chance = 920, maxCount = 1 }, 
	{name = "Rift Lance", chance = 850, maxCount = 1 }, 
	{name = "Green Gem", chance = 800, maxCount = 1 }, 
	{name = "Titan Axe", chance = 790, maxCount = 1 }, 
	{name = "Magma Legs", chance = 720, maxCount = 1 }, 
	{name = "Golden Armor", chance = 470, maxCount = 1 }, 
	{name = "Mastermind Shield", chance = 410, maxCount = 1 }, 
	{name = "Rift Bow", chance = 410, maxCount = 1 }, 
	{name = "Rift Crossbow", chance = 380, maxCount = 1 }, 
	{name = "Rift Shield", chance = 360, maxCount = 1 }, 
	{name = "Skull Helmet", chance = 250, maxCount = 1 }, 
	{name = "Magic Plate Armor", chance = 190, maxCount = 1 }, 
	{name = "Demonbone Amulet", chance = 180, maxCount = 1 }, 
	{name = "Spellbook of Mind Control", chance = 90, maxCount = 1 }, 
	{name = "Heavy Mace", chance = 40, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -650, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -850, maxDamage = -1250, length = 5, spread = 0, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -550, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -500, range = 5, radius = 4, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -500, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false},
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
