local help = TalkAction("!help")

function help.onSay(player, words, param)

	if param == "" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Get help for given command e.g. !help buytc  - will display help for !buytc command \n Command list: \n buytc \n aol \n bless \n buyhouse \n emote \n leavehouse \n online \n sellhouse \n time \n serverinfo ")
	elseif param == "buytc" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Buys tc for a set price of gp. Parameters: \n !buytc 5 - will buy 5 TC \n !buytc ? - will display current TC price \n !buytc - defaults to buying 1 TC")
	elseif param == "aol" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Buys aol for 50k gp. !aol")
	elseif param == "bless" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Buys blessings. !bless")
	elseif param == "buyhouse" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Buys house. You have to be facing the entrance door when using this command. !buyhouse")
	elseif param == "emote" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Switches emote spells. !emote on  / !emote off")
	elseif param == "leavehouse" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Leaves currently owned house. You have to be inside the house. !leavehouse")
	elseif param == "online" then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Displays currently online players. !online")
	elseif param == "sellhouse" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Initiates trade with other online player to sell house. !sellhouse <nick>  e.g. !sellhouse Saea")
	elseif param == "time" then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Displays time. !time")
	elseif param == "serverinfo" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Displays serverinfo. !serverinfo")
	end
end

help:separator(" ")
help:groupType("normal")
help:register()
