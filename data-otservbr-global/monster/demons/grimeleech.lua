local mType = Game.createMonsterType("Grimeleech")
local monster = {}

monster.description = "a grimeleech"
monster.experience = 7216
monster.outfit = {
	lookType = 855,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1196
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

monster.health = 9500
monster.maxHealth = 9500
monster.race = "undead"
monster.corpse = 22780
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 3000,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "Death... Taste!", yell = true}
}

monster.loot = {
	{name = "Gold Coin", chance = 93690, maxCount = 199 }, 
	{name = "Platinum Coin", chance = 90310, maxCount = 8 }, 
	{name = "Great Health Potion", chance = 24670, maxCount = 3 }, 
	{name = "Great Mana Potion", chance = 24630, maxCount = 3 }, 
	{name = "Great Spirit Potion", chance = 24300, maxCount = 3 }, 
	{name = "Flask of Demonic Blood", chance = 18670, maxCount = 1 }, 
	{name = "Demonic Essence", chance = 14820, maxCount = 1 }, 
	{name = "Some Grimeleech Wings", chance = 13810, maxCount = 1 }, 
	{name = "Fire Mushroom", chance = 11590, maxCount = 5 }, 
	{name = "Green Mushroom", chance = 11100, maxCount = 5 }, 
	{name = "Small Ruby", chance = 7640, maxCount = 5 }, 
	{name = "Small Amethyst", chance = 7590, maxCount = 5 }, 
	{name = "Small Topaz", chance = 7470, maxCount = 5 }, 
	{name = "Small Diamond", chance = 7120, maxCount = 5 }, 
	{name = "Underworld Rod", chance = 5650, maxCount = 1 }, 
	{name = "Wand of Voodoo", chance = 3760, maxCount = 1 }, 
	{name = "Yellow Gem", chance = 2590, maxCount = 1 }, 
	{id = 3039, chance = 2500, maxCount = 1 }, --red gem
	{name = "Magma Legs", chance = 910, maxCount = 1 }, 
	{name = "Devil Helmet", chance = 700, maxCount = 1 }, 
	{name = "Demon Shield", chance = 690, maxCount = 1 }, 
	{name = "Blue Gem", chance = 670, maxCount = 1 }, 
	{name = "Rift Lance", chance = 630, maxCount = 1 }, 
	{name = "Nightmare Blade", chance = 570, maxCount = 1 }, 
	{name = "Rift Shield", chance = 360, maxCount = 1 }, 
	{name = "Rift Bow", chance = 330, maxCount = 1 }, 
	{name = "Rift Crossbow", chance = 330, maxCount = 1 }, 
	{name = "Steel Boots", chance = 230, maxCount = 1 }, 
	{name = "Abyss Hammer", chance = 160, maxCount = 1 }, 
	{name = "Vile Axe", chance = 140, maxCount = 1 }, 
	{name = "Magic Plate Armor", chance = 90, maxCount = 1 }, 
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -550, maxDamage = -950, length = 5, spread = 0, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -400, range = 5, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, length = 5, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="drunk", interval = 2000, chance = 10, range = 5, radius = 3, shootEffect = CONST_ANI_GLOOTHSPEAR, effect = CONST_ME_STUN, target = true, duration = 5000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 16, type = COMBAT_HEALING, minDamage = 200, maxDamage = 300, effect = CONST_ME_MAGIC_RED, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
