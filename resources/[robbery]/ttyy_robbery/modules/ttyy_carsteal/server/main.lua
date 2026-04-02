ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local activity = 0
local activitySource = 0
local cooldown = 0

RegisterServerEvent('ttyycarthief:pay')
AddEventHandler('ttyycarthief:pay', function(payment, token)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
		xPlayer.addAccountMoney('black_money',tonumber(payment))
			--Add cooldown
		cooldown = CarSteal.CooldownMinutes * 60000
end)

ESX.RegisterServerCallback('ttyycarthief:anycops',function(source, cb)
  local anycops = 0
  local playerList = ESX.GetPlayers()
  for i=1, #playerList, 1 do
    local _source = playerList[i]
    local xPlayer = ESX.GetPlayerFromId(_source)
    local playerjob = xPlayer.job.name
    if playerjob == 'police' then
      anycops = anycops + 1
    end
  end
  cb(anycops)
end)


ESX.RegisterServerCallback('ttyycarthief:ambulance',function(source, cb)
	local anyems = 0
	local playerList = ESX.GetPlayers()
	for i=1, #playerList, 1 do
	  local _source = playerList[i]
	  local xPlayer = ESX.GetPlayerFromId(_source)
	  local playerjob = xPlayer.job.name
	  if playerjob == 'ambulance' then
		anyems = anyems + 1
	  end
	end
	cb(anyems)
  end)


ESX.RegisterServerCallback('ttyycarthief:isActive',function(source, cb)
  cb(activity, cooldown)
end)

RegisterServerEvent('ttyycarthief:registerActivity')
AddEventHandler('ttyycarthief:registerActivity', function(value)
	activity = value
	if value == 1 then
		activitySource = source
		--Send notification to cops
		local xPlayers = ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			if xPlayer.job.name == 'police' then
				TriggerClientEvent('ttyycarthief:setcopnotification', xPlayers[i])
			end
		end
	else
		activitySource = 0
	end
end)

RegisterServerEvent('ttyycarthief:alertcops')
AddEventHandler('ttyycarthief:alertcops', function(cx,cy,cz)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('ttyycarthief:setcopblip', xPlayers[i], cx,cy,cz)
		end
	end
end)

RegisterServerEvent('ttyycarthief:stopalertcops')
AddEventHandler('ttyycarthief:stopalertcops', function()
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('ttyycarthief:removecopblip', xPlayers[i])
		end
	end
end)

AddEventHandler('playerDropped', function ()
	local _source = source
	if _source == activitySource then
		--Remove blip for all cops
		local xPlayers = ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			if xPlayer.job.name == 'police' then
				TriggerClientEvent('ttyycarthief:removecopblip', xPlayers[i])
			end
		end
		--Set activity to 0
		activity = 0
		activitySource = 0
	end
end)

--Cooldown manager
AddEventHandler('onResourceStart', function(resource)
	while true do
		Wait(5000)
		if cooldown > 0 then
			cooldown = cooldown - 5000
		end
	end
end)
