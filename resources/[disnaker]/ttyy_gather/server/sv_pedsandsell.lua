RegisterServerEvent('ttyy_sales:Server')
AddEventHandler('ttyy_sales:Server', function(item, npcLoc)
    local xPlayer = ESX.GetPlayerFromId(source)

    local locationItem = Config.Locations[npcLoc].sellableitems[item]
    if (xPlayer.getInventoryItem(item).count < locationItem.reqamount) then
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You do not have enough ' .. locationItem.label .. ' in your inventory.', 5000, 'error')
    else
        TriggerClientEvent('ttyy_sales:Process', source, item, npcLoc)
    end
end)

RegisterServerEvent('ttyy_sales:Complete')
AddEventHandler('ttyy_sales:Complete', function(item, npcLoc, quantity)
    local xPlayer = ESX.GetPlayerFromId(source)
    local locationItem = Config.Locations[npcLoc].sellableitems[item]
    local inventoryCount = xPlayer.getInventoryItem(item).count
    if (inventoryCount < locationItem.reqamount or inventoryCount < quantity) then
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You do not have enough ' .. locationItem.label .. ' in your inventory.', 5000, 'error')
    else
        xPlayer.removeInventoryItem(item, quantity)
        xPlayer.addAccountMoney('money', locationItem.costeach * quantity)
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You have sold ' .. quantity .. 'x ' .. locationItem.label .. ' for $' .. locationItem.costeach * quantity, 5000, 'success')
    end
end)