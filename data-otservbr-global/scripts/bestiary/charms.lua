local charms = {
	-- Wound charm
	[1] = {
		name = "Wound",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as physical damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_PHYSICALDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You wounded the monster.",
		messageServerLog = "[Wound charm]",
		effect = CONST_ME_HITAREA,
		points = 300
	},
	-- Enflame charm
	[2] = {
		name = "Enflame",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as fire damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_FIREDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You enflamed the monster.",
		messageServerLog = "[Enflame charm]",
		effect = CONST_ME_HITBYFIRE,
		points = 500
	},
	-- Poison charm
	[3] = {
		name = "Poison",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as earth damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_EARTHDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You poisoned the monster.",
		messageServerLog = "[Poison charm]",
		effect = CONST_ME_GREEN_RINGS,
		points = 300
	},
	-- Freeze charm
	[4] = {
		name = "Freeze",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as ice damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_ICEDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You frozen the monster.",
		messageServerLog = "[Freeze charm]",
		effect = CONST_ME_ICEATTACK,
		points = 400
	},
	--Zap charm
	[5] = {
		name = "Zap",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as energy damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_ENERGYDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You eletrocuted the monster.",
		messageServerLog = "[Zap charm]",
		effect = CONST_ME_ENERGYHIT,
		points = 400
	},
	--Curse charm
	[6] = {
		name = "Curse",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as death damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_DEATHDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You curse the monster.",
		messageServerLog = "[Curse charm]",
		effect = CONST_ME_SMALLCLOUDS,
		points = 450
	},
	-- Cripple charm
	[7] = {
		name = "Cripple",
		description = "Cripples the creature with a certain chance and paralyzes it for 10 seconds.",
		type = CHARM_OFFENSIVE,
		chance = 10,
		messageCancel = "You cripple the monster.",
		points = 250
	},
	-- Parry charm
	[8] = {
		name = "Parry",
		description = "Any damage taken is reflected to the aggressor with a certain chance.",
		type = CHARM_DEFENSIVE,
		damageType = COMBAT_PHYSICALDAMAGE,
		chance = 10,
		messageCancel = "You parry the attack.",
		messageServerLog = "[Parry charm]",
		effect = CONST_ME_EXPLOSIONAREA,
		points = 500
	},
	-- Dodge charm
	[9] = {
		name = "Dodge",
		description = "Dodges an attack with a certain chance without taking any damage at all.",
		type = CHARM_DEFENSIVE,
		chance = 10,
		messageCancel = "You dodge the attack.",
		effect = CONST_ME_POFF,
		points = 300
	},
	-- Adrenaline burst charm
	[10] = {
		name = "Adrenaline Burst",
		description = "Bursts of adrenaline enhance your reflexes with a certain chance \z
                       after you get hit and let you move faster for 10 seconds.",
		type = CHARM_DEFENSIVE,
		chance = 10,
		messageCancel = "Your movements where bursted.",
		points = 250
	},
	-- Numb charm
	[11] = {
		name = "Numb",
		description = "Numbs the creature with a certain chance after its attack and paralyzes the creature for 10 seconds.",
		type = CHARM_DEFENSIVE,
		chance = 10,
		messageCancel = "You numb the monster.",
		points = 250
	},
	-- Cleanse charm
	[12] = {
		name = "Cleanse",
		description = "Cleanses you from within with a certain chance after you get hit and \z
                       removes one random active negative status effect and temporarily makes you immune against it.",
		type = CHARM_DEFENSIVE,
		chance = 10,
		messageCancel = "You purified the attack.",
		points = 350
	},
	-- Bless charm
	[13] = {
		name = "Bless",
		description = "Blesses you and reduces skill and xp loss by 10% when killed by the chosen creature.",
		type = CHARM_PASSIVE,
		percent = 10,
		chance = 100,
		points = 400
	},
	-- Scavenge charm
	[14] = {
		name = "Scavenge",
		description = "Enhances your chances to successfully skin/dust a skinnable/dustable creature.",
		type = CHARM_PASSIVE,
		percent = 25,
		chance = 100,
		points = 400
	},
	-- Gut charm
	[15] = {
		name = "Gut",
		description = "Gutting the creature yields 20% more creature products.",
		type = CHARM_PASSIVE,
		percent = 20,
		chance = 100,
		points = 400,
	},
	-- Low blow charm
	[16] = {
		name = "Low Blow",
		description = "Adds 8% critical hit chance to attacks with critical hit weapons.",
		type = CHARM_PASSIVE,
		percent = 8,
		chance = 100,
		points = 1000
	},
	-- Divine wrath charm
	[17] = {
		name = "Divine Wrath",
		description = "Triggers on a creature with a certain chance and deals 5% \z
                       of its initial hit points as holy damage once.",
		type = CHARM_OFFENSIVE,
		damageType = COMBAT_HOLYDAMAGE,
		percent = 5,
		chance = 10,
		messageCancel = "You divine the monster.",
		messageServerLog = "[Divine charm]",
		effect = CONST_ME_HOLYDAMAGE,
		points = 750
	},
	-- Vampiric embrace charm
	[18] = {
		name = "Vampiric Embrace",
		description = "Adds 4% Life Leech to attacks if wearing equipment that provides life leech.",
		type = CHARM_PASSIVE,
		percent = 400,
		chance = 100,
		points = 750
	},
	-- Void's call charm
	[19] = {
		name = "Void's Call",
		description = "Adds 2% Mana Leech to attacks if wearing equipment that provides mana leech.",
		type = CHARM_PASSIVE,
		percent = 200,
		chance = 100,
		points = 750
	}
}

for charmId, charmsTable in ipairs(charms) do
	local charm = Game.createBestiaryCharm(charmId - 1)
	local charmConfig = {}

	local bestiaryRateCharmShopPrice = (configManager.getFloat(configKeys.BESTIARY_RATE_CHARM_SHOP_PRICE) or 1.0)
	if charmsTable.name then
		charmConfig.name = charmsTable.name
	end
	if charmsTable.description then
		charmConfig.description = charmsTable.description
	end
	if charmsTable.type then
		charmConfig.type = charmsTable.type
	end
	if charmsTable.damageType then
		charmConfig.damageType = charmsTable.damageType
	end
	if charmsTable.percent then
		charmConfig.percent = charmsTable.percent
	end
	if charmsTable.chance then
		charmConfig.chance = charmsTable.chance
	end
	if charmsTable.messageCancel then
		charmConfig.messageCancel = charmsTable.messageCancel
	end
	if charmsTable.messageServerLog then
		charmConfig.messageServerLog = charmsTable.messageServerLog
	end
	if charmsTable.effect then
		charmConfig.effect = charmsTable.effect
	end
	if charmsTable.points then
		charmConfig.points = math.ceil(charmsTable.points * bestiaryRateCharmShopPrice)
	end

	-- Create charm and egister charmConfig table
	charm:register(charmConfig)
end
