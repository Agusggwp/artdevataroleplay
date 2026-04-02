RegisterServerEvent("dlt:kasihuangbersih")
AddEventHandler("dlt:kasihuangbersih", function(target, amount, token)
    local _source = source
    if not exports['salty_tokenizer']:secureServerEvent(GetCurrentResourceName(), _source, token) then
        return false
    end
    local xPlayer = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromId(tonumber(target))
    if target ~= nil then
        local amount = tonumber(amount)
        if amount ~= nil then 
            -- print(amount)
            local playerMoney = xPlayer.getMoney()
            if playerMoney >= amount then
                    xPlayer.removeMoney(amount)
                    TriggerClientEvent('esx:showNotification', source, 'You gave $' .. amount)
                    target.addMoney(amount)
                    TriggerClientEvent('esx:showNotification', target.source, 'You received $' .. amount)
            else
                TriggerClientEvent('esx:showNotification', source, 'You do not have enough money')
            end
        else
            TriggerClientEvent('esx:showNotification', source, 'Invalid amount')
        end
    else
        TriggerClientEvent('esx:showNotification', source, 'Invalid player id')
    end
end)