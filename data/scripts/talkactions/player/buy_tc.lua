local buytc = TalkAction("!buytc")

local tcPrice = 8000

function buytc.onSay(player, words, param)

	local w = param

	if param == "" then
	    if player:removeMoneyBank(tcPrice) then
			player:addCoinsBalance(1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You bought Tibia Coin for " .. tcPrice .. " gold.")
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have enough money. Each TC costs " .. tcPrice .. "gp")
		end
	elseif param == "?" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Current TC price for each: " .. tcPrice .. "gp")
	else
		if player:removeMoneyBank(tcPrice * w) then
			player:addCoinsBalance(1 * w)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You bought " .. w .. " Tibia Coins for " .. tcPrice * w  .. " gold.")
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have enough money. Each TC costs " .. tcPrice .. "gp")
		end
	end

end

buytc:separator(" ")
buytc:groupType("normal")
buytc:register()
