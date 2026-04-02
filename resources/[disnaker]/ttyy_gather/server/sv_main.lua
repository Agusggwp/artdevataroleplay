RegisterServerEvent('ttyy_jobs:checkCanCraft')
AddEventHandler('ttyy_jobs:checkCanCraft',function(item)
   	local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local craft = true
    local count = Config.Recipes[item].Amount
    local stack = 1
    local ox_inventory = exports.ox_inventory

    for k, v in pairs(Config.Recipes[item].Required) do
        if xPlayer.getInventoryItem(k).count < v then
            craft = false
            TriggerClientEvent('ttyy_jobs:exploit', _source)
            TriggerClientEvent('notify:Alert', _source, 'SYSTEM', 'Missing Required ' .. k, 10000, 'error')
        end
    end

    if craft then
        TriggerClientEvent('ttyy_jobs:jobAnimation',source, Config.Recipes[item].Dict, Config.Recipes[item].Anim)
        Wait(10000)

        if xPlayer.canCarryItem(item, count) then
            for k, v in pairs(Config.Recipes[item].Required) do
                xPlayer.removeInventoryItem(k, v)
            end
            xPlayer.addInventoryItem(item, count)
        else
            TriggerClientEvent('notify:Alert', _source, 'SYSTEM', 'Inventory full loaded', 10000, 'error')
        end
    end
end)

RegisterServerEvent('ttyy_jobs:miner:lastProsess')
AddEventHandler('ttyy_jobs:miner:lastProsess',function(item)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local craft = true
    local count = xPlayer.getInventoryItem(item).count
    local randomChance = math.random(1, 100)
    local limitdiamond =  xPlayer.getInventoryItem('diamond').count 
    local limitgold =       xPlayer.getInventoryItem('gold').count 
    local limitiron =    xPlayer.getInventoryItem('iron').count 
    local limitcopper =     xPlayer.getInventoryItem('copper').count 

    local diamond = 'diamond'
    local copper = 'copper'
    local iron = 'iron'
    local gold = 'gold'

    if count < 1 then
        craft = false
        TriggerClientEvent('ttyy_jobs:exploit', _source)
        TriggerClientEvent('notify:Alert', _source, 'SYSTEM', 'Missing Required ' ..item, 10000, 'error')
    end

    if craft then
        TriggerClientEvent('ttyy_jobs:jobAnimation',source, Config.Recipes[item].Dict, Config.Recipes[item].Anim)
        Wait(10000)
        xPlayer.removeInventoryItem(item, 1)

        if randomChance < 10 then
            xPlayer.addInventoryItem(diamond, math.random(5, 9))
            xPlayer.addInventoryItem(gold, math.random(2, 2))
            xPlayer.addInventoryItem(iron, math.random(3, 3))
            xPlayer.addInventoryItem(copper, math.random(4, 4))
        elseif randomChance > 9 and randomChance < 25 then
            xPlayer.addInventoryItem(gold, math.random(2, 2))
            xPlayer.addInventoryItem(iron, math.random(3, 3))
            xPlayer.addInventoryItem(copper, math.random(4, 4))
        elseif randomChance > 24 and randomChance < 60 then
            xPlayer.addInventoryItem(gold, math.random(2, 2))
            xPlayer.addInventoryItem(iron, math.random(3, 3))
            xPlayer.addInventoryItem(copper, math.random(4, 4))
        elseif randomChance > 59 then
            xPlayer.addInventoryItem(copper, math.random(2, 2))
            xPlayer.addInventoryItem(iron, math.random(3, 3))
            xPlayer.addInventoryItem(gold, math.random(4, 4))
        end
    end
end)