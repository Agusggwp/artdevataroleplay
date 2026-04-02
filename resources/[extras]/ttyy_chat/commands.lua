ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local canAdvertise = true

if Config.AllowPlayersToClearTheirChat then
	RegisterCommand(Config.ClearChatCommand, function(source, args, rawCommand)
		TriggerClientEvent('chat:client:ClearChat', source)
	end)
end

if Config.AllowStaffsToClearEveryonesChat then
	RegisterCommand(Config.ClearEveryonesChatCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local time = os.date(Config.DateFormat)

		if isAdmin(xPlayer) then
			TriggerClientEvent('chat:client:ClearChat', -1)
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message system"><i class="fas fa-cog"></i> <b><span style="color: #df7b00">SYSTEM</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{0}</span></b><div style="margin-top: 5px; font-weight: 300;">The chat has been cleared!</div></div>',
				args = { time }
			})
		end
	end)
end

if Config.EnableStaffCommand then
	RegisterCommand(Config.StaffCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.StaffCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()

		if isAdmin(xPlayer) then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message staff"><i class="fas fa-bullhorn"></i> <b><span style="color: #1ebc62">[STAFF] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableStaffOnlyCommand then
	RegisterCommand(Config.StaffOnlyCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.StaffOnlyCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		playerName = xPlayer.getName()

		if isAdmin(xPlayer) then
			showOnlyForAdmins(function(admins)
				TriggerClientEvent('chat:addMessage', admins, {
					template = '<div class="chat-message staffonly"><i class="fas fa-eye-slash"></i> <b><span style="color: #1ebc62">[STAFF ONLY] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
					args = { playerName, message, time }
				})
			end)
		end
	end)
end

if Config.EnableAdvertisementCommand then
	RegisterCommand(Config.AdvertisementCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.AdvertisementCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local bankMoney = xPlayer.getAccount('bank').money

		if canAdvertise then
			if bankMoney >= Config.AdvertisementPrice then
				xPlayer.removeAccountMoney('bank', Config.AdvertisementPrice)
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message advertisement"><i class="fas fa-ad"></i> <b><span style="color: #81db44">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
					args = { playerName, message, time }
				})

				TriggerClientEvent('okokNotify:Alert', source, "ADVERTISEMENT", "Advertisement successfully made for "..Config.AdvertisementPrice..'�', 10000, 'success')

				local time = Config.AdvertisementCooldown * 60
				local pastTime = 0
				canAdvertise = false

				while (time > pastTime) do
					Citizen.Wait(1000)
					pastTime = pastTime + 1
					timeLeft = time - pastTime
				end
				canAdvertise = true
			else
				TriggerClientEvent('okokNotify:Alert', source, "ADVERTISEMENT", "You don't have enough money to make an advertisement", 10000, 'error')
			end
		else
			TriggerClientEvent('okokNotify:Alert', source, "ADVERTISEMENT", "You can't advertise so quickly", 10000, 'error')
		end
	end)
end

if Config.EnableTwitchCommand then
	RegisterCommand(Config.TwitchCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.TwitchCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local twitch = twitchPermission(source)

		if twitch then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message twitch"><i class="fab fa-twitch"></i> <b><span style="color: #9c70de">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

function twitchPermission(id)
	for i, a in ipairs(Config.TwitchList) do
		for x, b in ipairs(GetPlayerIdentifiers(id)) do
			if string.lower(b) == string.lower(a) then
				return true
			end
		end
	end
end

if Config.EnableYoutubeCommand then
	RegisterCommand(Config.YoutubeCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.YoutubeCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local youtube = youtubePermission(source)

		if youtube then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message youtube"><i class="fab fa-youtube"></i> <b><span style="color: #ff0000">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

function youtubePermission(id)
	for i, a in ipairs(Config.YoutubeList) do
		for x, b in ipairs(GetPlayerIdentifiers(id)) do
			if string.lower(b) == string.lower(a) then
				return true
			end
		end
	end
end

if Config.EnableTwitterCommand then
	RegisterCommand(Config.TwitterCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.TwitterCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()

		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div class="chat-message twitter"><i class="fab fa-twitter"></i> <b><span style="color: #2aa9e0">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { playerName, message, time }
		})
	end)
end

if Config.EnablePoliceCommand then
	RegisterCommand(Config.PoliceCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.PoliceCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.PoliceJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message police"><i class="fas fa-shield-alt"></i> [POLICE] <b><span style="color: #0030ff">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableDealerCommand then
	RegisterCommand(Config.DealerCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.DealerCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.DealerJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message dealer"><i class="fas fa-car-side"></i> [SUPERNDUT DEALERSHIP] <b><span style="color: #0076ed">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableAmbulanceCommand then
	RegisterCommand(Config.AmbulanceCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.AmbulanceCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.AmbulanceJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message ambulance"><i class="fas fa-ambulance"></i> [EMS] <b><span style="color: #E80F0F">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableMechanicCommand then
	RegisterCommand(Config.MechanicCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.MechanicCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.MechanicJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message mechanic"><i class="fas fa-wrench"></i> [MEKANIK] <b><span style="color: #E9A96F">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableMontirCommand then
	RegisterCommand(Config.MontirCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.MontirCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.MontirJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message montir"><i class="fas fa-wrench"></i> [MONTIR] <b><span style="color: #956C47">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableReaCommand then
	RegisterCommand(Config.ReaCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.ReaCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.ReaJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message rea"><i class="fas fa-home"></i> [AGEN RUMAH] <b><span style="color: #e3a71b">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnablePedagangCommand then
	RegisterCommand(Config.PedagangCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.PedagangCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.PedagangJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message pdg"><i class="fas fa-hamburger"></i> [PEDAGANG] <b><span style="color: #FFCC14">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableGojekCommand then
	RegisterCommand(Config.GojekCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.GojekCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		local job = xPlayer.job.name

		if job == Config.GojekJobName then
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message gojek"><i class="fas fa-taxi"></i> [SUPERNDUT TRANS] <b><span style="color: #17B15D">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
				args = { playerName, message, time }
			})
		end
	end)
end

if Config.EnableOOCCommand then
	RegisterCommand(Config.OOCCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.OOCCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		TriggerClientEvent('chat:ooc', -1, source, playerName, message, time)
	end)
end

if Config.EnableDoCommand then
	RegisterCommand(Config.DoCommand, function(source, args, rawCommand)
		local xPlayer = ESX.GetPlayerFromId(source)
		local length = string.len(Config.DoCommand)
		local message = rawCommand:sub(length + 1)
		local time = os.date(Config.DateFormat)
		local playerName = xPlayer.getName()
		TriggerClientEvent('chat:do', -1, source, playerName, message, time)
	end)
end

function isAdmin(xPlayer)
	for k,v in ipairs(Config.StaffGroups) do
		if xPlayer and xPlayer.getGroup() == v then 
			return true 
		end
	end
	return false
end

function showOnlyForAdmins(admins)
	for k,v in ipairs(ESX.GetPlayers()) do
		if isAdmin(ESX.GetPlayerFromId(v)) then
			admins(v)
		end
	end
end