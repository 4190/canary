local bestiaryOnKill = CreatureEvent("BestiaryOnKill")
function bestiaryOnKill.onKill(player, creature, lastHit)
	if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
		return true
	end

	local bestiaryMultiplier = (configManager.getNumber(configKeys.BESTIARY_KILL_MULTIPLIER) or 1)
	for cid, damage in pairs(creature:getDamageMap()) do
		local participant = Player(cid)
		if participant and participant:isPlayer() then
			participant:addBestiaryKill(creature:getName())
			participant:addBestiaryKill(creature:getName())
			participant:addBestiaryKill(creature:getName())
		end
	end

	return true
end
bestiaryOnKill:register()
