ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('zipties', function(source)
    TriggerClientEvent('ttyy_robbery:startZiptie', source)
end)

for k,v in pairs(Ziptiess.ZiptieRemovers) do
	ESX.RegisterUsableItem(k, function(source)
		local tool = Ziptiess.ZiptieRemovers[k]
		TriggerClientEvent('ttyy_robbery:startziptieremove', source, tool)

		if tool.OneTimeUse == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			xPlayer.removeInventoryItem(k, 1)
		end
	end)
end

RegisterServerEvent('ttyy_robbery:ApplyZipties')
AddEventHandler('ttyy_robbery:ApplyZipties', function(targetId)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem('zipties')

	if sourceItem.count >= 1 then
		xPlayer.removeInventoryItem('zipties', 1)
		TriggerClientEvent('ttyy_robbery:ziptie', targetId)
	else
		TriggerClientEvent('ttyy-core:Notify', xPlayer.source, 'error', 'You do not have zipties.')
	end
end)

RegisterServerEvent('ttyy_robbery:RemoveZipties')
AddEventHandler('ttyy_robbery:RemoveZipties', function(targetId)
	TriggerClientEvent('ttyy_robbery:removeziptie', targetId)
end)