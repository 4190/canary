local internalNpcName = "Dallheim"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 268,
	lookHead = 76,
	lookBody = 38,
	lookLegs = 76,
	lookFeet = 95,
	lookAddons = 2
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = 'I will hold this gate until my last breath' },	
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


-- Greeting and Farewell
keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text =  'Hello, |PLAYERNAME|! Unfortunately I cannot let you open the gate until the priest will let me unseal it.'},
	function(player) return player:getHealth() < 65 or player:getCondition(CONDITION_POISON) ~= nil end,
	function(player)
		local health = player:getHealth()
		if health < 65 then player:addHealth(65 - health) end
		player:removeCondition(CONDITION_POISON)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	end
)
keywordHandler:addAliasKeyword({'hello'})

keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text = 'Hello, |PLAYERNAME|! Unfortunately I cannot let you open the gate.'}, function(player) return player:getSex() == PLAYERSEX_FEMALE end)
keywordHandler:addAliasKeyword({'hello'})

keywordHandler:addFarewellKeyword({'bye'}, {npcHandler = npcHandler, text = 'Bye, |PLAYERNAME|.'})
keywordHandler:addAliasKeyword({'farewell'})

local function addMonsterKeyword(level, text, marks)
	local keyword = keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, text = text},
		function(player) return player:getLevel() >= level end,
		function(player)
			if marks then
				for i = 1, #marks do
					player:addMapMark(marks[i].position, marks[i].type, marks[i].description)
				end
			end
		end
	)
end

-- Basic keywords

keywordHandler:addKeyword({'gate'}, StdModule.say, {npcHandler = npcHandler, text = 'Sorry, it cannot be opened until our priest says otherwise.'})




-- Healing
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Hm.')

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
