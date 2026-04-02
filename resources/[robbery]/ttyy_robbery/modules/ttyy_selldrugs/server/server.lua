ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('dealer', function(source, args, rawcommand)
    xPlayer = ESX.GetPlayerFromId(source)
    drugToSell = {
        type = '',
        label = '',
        count = 0,
        i = 0,
        price = 0,
    }
    for k, v in pairs(Config_Selldrugs.drugs) do
        item = xPlayer.getInventoryItem(k)
            
        if item == nil then
            return        
        end
            
        count = item.count
        drugToSell.i = drugToSell.i + 1
        drugToSell.type = k
        drugToSell.label = item.label
        
        if count >= 5 then
            drugToSell.count = math.random(1, 5)
        elseif count > 0 then
            drugToSell.count = math.random(1, count)
        end

        if drugToSell.count ~= 0 then
            drugToSell.price = drugToSell.count * v + math.random(1, 300)
            TriggerClientEvent('stasiek_selldrugsv2:findClient', source, drugToSell)
            break
        end
        
        if ESX.Table.SizeOf(Config_Selldrugs.drugs) == drugToSell.i and drugToSell.count == 0 then
            xPlayer.showNotification(Config_Selldrugs.notify.nodrugs, 6)
        end
    end
end, false)

RegisterServerEvent('stasiek_selldrugsv2:pay')
AddEventHandler('stasiek_selldrugsv2:pay', function(drugToSell)
    local random = math.random(3,5)
    local randomduit = math.random(1000,2000)
    xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('packagedweed').count >= 2 then
        xPlayer.addAccountMoney('black_money', randomduit)
        xPlayer.removeInventoryItem('packagedweed', random)
    end
end)


RegisterServerEvent('met')
AddEventHandler('met', function(drugToSell)
    local random = math.random(8,10)
    local randomduit = math.random(40000,50000)
    xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('methbag').count >= 2 then
        xPlayer.addAccountMoney('black_money', randomduit)
        xPlayer.removeInventoryItem('methbag', random)
    end
end)

RegisterServerEvent('stasiek_selldrugsv2:notifycops')
AddEventHandler('stasiek_selldrugsv2:notifycops', function(drugToSell)
    TriggerClientEvent('stasiek_selldrugsv2:notifyPolice', -1, drugToSell.coords)
end)

ESX.RegisterServerCallback('stasiek_selldrugsv2:getPoliceCount', function(source, cb)
    count = 0

    for _, playerId in pairs(ESX.GetPlayers()) do
        xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer.job.name == 'police' then
            count = count + 1
        end
    end

    cb(count)
end)
