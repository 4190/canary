local internalNpcName = "Imbu"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 143,
	lookHead = 79,
	lookBody = 94,
	lookLegs = 126,
	lookFeet = 126,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.shop = {
	{ itemName = "fiery heart", clientId = 9636, buy = 2000 },
	{ itemName = "green dragon scale", clientId = 5920, buy = 4000 },
	{ itemName = "demon horn", clientId = 5954, buy = 8000 },
	{ itemName = "swamp grass", clientId = 9686, buy = 2000 },
	{ itemName = "poisonous slime", clientId = 9640, buy = 4000 },
	{ itemName = "slime heart", clientId = 21194, buy = 8000 },
	{ itemName = "frosty heart", clientId = 9661, buy = 2000 },
	{ itemName = "seacrest hair", clientId = 21801, buy = 4000 },
	{ itemName = "polar bear paw", clientId = 9650, buy = 8000 },
	{ itemName = "rorc feather", clientId = 18993, buy = 2000 },
	{ itemName = "peacock feather fan", clientId = 21975, buy = 4000 },
	{ itemName = "energy vein", clientId = 23508, buy = 8000 },
	{ itemName = "pile of grave earth", clientId = 11484, buy = 2000 },
	{ itemName = "demonic skeletal hand", clientId = 9647, buy = 4000 },
	{ itemName = "petrified scream", clientId = 10420, buy = 8000 },
	{ itemName = "vampire teeth", clientId = 9685, buy = 2000 },
	{ itemName = "bloody pincers", clientId = 9633, buy = 4000 },
	{ itemName = "piece of dead brain", clientId = 9663, buy = 8000 },
	{ itemName = "rope belt", clientId = 11492, buy = 2000 },
	{ itemName = "silencer claws", clientId = 20200, buy = 4000 },
	{ itemName = "some grimeleech wings", clientId = 22730, buy = 8000 },
	{ itemName = "protective charm", clientId = 11444, buy = 2000 },
	{ itemName = "sabretooth", clientId = 10311, buy = 4000 },
	{ itemName = "vexclaw talon", clientId = 22728, buy = 8000 },
	{ itemName = "flask of embalming fluid", clientId = 11466, buy = 2000 },
	{ itemName = "gloom wolf fur", clientId = 22007, buy = 4000 },
	{ itemName = "mystical hourglass", clientId = 9660, buy = 8000 },
	{ itemName = "piece of swampling wood", clientId = 17823, buy = 2000 },
	{ itemName = "snake skin", clientId = 9694, buy = 4000 },
	{ itemName = "brimstone fangs", clientId = 11702, buy = 8000 },
	{ itemName = "green dragon leather", clientId = 5877, buy = 2000 },
	{ itemName = "blazing bone", clientId = 16131, buy = 4000 },
	{ itemName = "draken sulphur", clientId = 11658, buy = 8000 },
	{ itemName = "winter wolf fur", clientId = 10295, buy = 2000 },
	{ itemName = "thick fur", clientId = 10307, buy = 4000 },
	{ itemName = "deepling warts", clientId = 14012, buy = 8000 },
	{ itemName = "wyvern talisman", clientId = 9644, buy = 2000 },
	{ itemName = "crawler head plating", clientId = 14079, buy = 4000 },
	{ itemName = "wyrm scale", clientId = 9665, buy = 8000 },
	{ itemName = "cultish robe", clientId = 9639, buy = 2000 },
	{ itemName = "cultish mask", clientId = 9638, buy = 4000 },
	{ itemName = "hellspawn tail", clientId = 10304, buy = 8000 },
	{ itemName = "wereboar hooves", clientId = 22053, buy = 2000 },
	{ itemName = "crystallized anger", clientId = 23507, buy = 4000 },
	{ itemName = "quill", clientId = 28567, buy = 8000 },
	{ itemName = "damselfly wing", clientId = 17458, buy = 2000 },
	{ itemName = "compass", clientId = 10302, buy = 4000 },
	{ itemName = "waspoid wing", clientId = 14081, buy = 8000 },
	{ itemName = "fairy wings", clientId = 25694, buy = 2000 },
	{ itemName = "little bowl of myrrh", clientId = 25697, buy = 4000 },
	{ itemName = "goosebump leather", clientId = 20205, buy = 8000 },
	{ itemName = "orc tooth", clientId = 10196, buy = 2000 },
	{ itemName = "battle stone", clientId = 11447, buy = 4000 },
	{ itemName = "moohtant horn", clientId = 21200, buy = 8000 },
	{ itemName = "lion's mane", clientId = 9691, buy = 2000 },
	{ itemName = "mooh'tah shell", clientId = 21202, buy = 4000 },
	{ itemName = "war crystal", clientId = 9654, buy = 8000 },
	{ itemName = "cyclops toe", clientId = 9657, buy = 2000 },
	{ itemName = "ogre nose ring", clientId = 22189, buy = 4000 },
	{ itemName = "warmaster's wristguards", clientId = 10405, buy = 8000 },
	{ itemName = "elven scouting glass", clientId = 11464, buy = 2000 },
	{ itemName = "elven hoof", clientId = 18994, buy = 4000 },
	{ itemName = "metal spike", clientId = 10298, buy = 8000 },
	{ itemName = "piece of scarab shell", clientId = 9641, buy = 2000 },
	{ itemName = "brimstone shell", clientId = 11703, buy = 4000 },
	{ itemName = "frazzle skin", clientId = 20199, buy = 8000 },
	{ itemName = "elvish talisman", clientId = 9635, buy = 2000 },
	{ itemName = "broken shamanic staff", clientId = 11452, buy = 4000 },
	{ itemName = "strand of medusa hair", clientId = 10309, buy = 8000 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, "name") then
		return npcHandler:say("Imbu", npc, creature)
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell. <waves>")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcType:register(npcConfig)
