-- CONFIG --

-- Ping Limit
pingLimit = 2000

-- CODE --

RegisterServerEvent("checkMyPingBro")
AddEventHandler("checkMyPingBro", function()
	ping = GetPlayerPing(source)
	if ping >= pingLimit then
		DropPlayer(source, "Ping kamu terlalu tinggi (Limit: " .. pingLimit .. " Ping mu: " .. ping .. ")")
	end
end)