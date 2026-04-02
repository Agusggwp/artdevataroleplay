ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('armor', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ttyy-item:bulletproof', source)
    xPlayer.removeInventoryItem('armor', 1)
end)

RegisterServerEvent('deleteitem')
AddEventHandler('deleteitem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, count)
end)