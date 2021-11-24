if SystemInfo:distribution() == Idstring("STEAM") then
	local send_message_real = _send_message_real or ChatManager.send_message

	function ChatManager:send_message(channel_id, sender, message)
		if not string.is_nil_or_empty(message) then
			if string.sub(message, 1, 3) == "/pm" then
				local targetpeercolor = string.sub(message, 5, 5)
				local targetpeerid = nil
				if targetpeercolor == "g" then
					targetpeerid = 1
				elseif targetpeercolor == "b" then
					targetpeerid = 2
				elseif targetpeercolor == "r" then
					targetpeerid = 3
				elseif targetpeercolor == "o" then
					targetpeerid = 4
				end
				local targetpeer = managers.network:session():peer(targetpeerid)
				local sender = managers.network:session():local_peer()
				if targetpeer then
					if targetpeer ~= sender then
						local sendmessage = string.sub(message, 7, 9999)
						targetpeer:send("send_chat_message", ChatManager.GAME, "<<<Private Message>>>\n"..sendmessage)
						managers.chat:_receive_message(1, "[PM: "..sender:name().." -> "..targetpeer:name().. "]", sendmessage, Color.red)
					else
						managers.chat:_receive_message(1, "[PM: Error]", "Can not send to yourself", Color.red)
					end
				else
					managers.chat:_receive_message(1, "[PM: Error]", "Who are you sending the message to? Options: g = green, b = blue, r = red, o = orange/brown", Color.red)
					managers.chat:_receive_message(1, "[PM: Error]", "Format: /pm [color] [msg]", Color.red)
				end
				return
			end
		end
		send_message_real(self, channel_id, sender, message) --Original call
	end
end