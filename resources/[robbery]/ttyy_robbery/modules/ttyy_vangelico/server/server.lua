ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local doorState = Config_Vangelico.Doors

RegisterCommand('vdoors', function(source, args, rawCommand)
    local doorId = tonumber(args[1])
    if not doorId or not doorState[doorId] then
        return
    end
    doorState[doorId].Locked = not doorState[doorId].Locked
    TriggerClientEvent('ttyy_vdoors:set', -1, doorId, doorState[doorId].Locked)
end)

AddEventHandler('playerJoining', function()
    TriggerClientEvent('ttyy_vdoors:initialize', source, doorState)
end)

ESX.RegisterUsableItem('thermite', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ttyy_vangelico:thermite', source)
end)

RegisterNetEvent('ttyy_vangelico:thermitedelete')
AddEventHandler('ttyy_vangelico:thermitedelete', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("thermite", 1)
end)

RegisterNetEvent('ttyy_vangelico:rewards')
AddEventHandler('ttyy_vangelico:rewards', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local randomitem = math.random(1,100)
    for i, v in pairs(Config_Vangelico.ItemDrops) do 
        if randomitem <= v.chance then
            randomamount = math.random(1, v.max)
            sourceItem = xPlayer.getInventoryItem(v.name)
            if sourceItem.limit ~= nil then
                if sourceItem.limit ~= -1 and (sourceItem.count + randomamount) > sourceItem.limit then
                    if sourceItem.count < sourceItem.limit then
                        randomamount = sourceItem.limit - sourceItem.count
                        xPlayer.addInventoryItem(v.name, randomamount)
                    else
                        TriggerClientEvent('ox_inventory:notify', _source, {type = 'error', text = 'Not enough room in your inventory to carry more '.. sourceItem.label})
                    end
                else
                    xPlayer.addInventoryItem(v.name, randomamount)
                end
                break
            else
                xPlayer.addInventoryItem(v.name, randomamount)
                break
            end
        end
    end
end)
    

RegisterServerEvent('ttyy_vangelico:particleserver')
AddEventHandler('ttyy_vangelico:particleserver', function(method)
    TriggerClientEvent('ttyy_vangelico:ptfxparticle', -1, method)
end)

RegisterServerEvent('ttyy_vangelico:allnotify')
AddEventHandler('ttyy_vangelico:allnotify', function(players)
    TriggerClientEvent('ox_inventory:notify', players, {type = 'success', text = 'Security systems will be online in 10 minutes!'})
end)

RegisterServerEvent('ttyy_vangelico:policenotify')
AddEventHandler('ttyy_vangelico:policenotify', function()
    TriggerClientEvent('ttyy_vangelico:policenotify', -1)    
end)