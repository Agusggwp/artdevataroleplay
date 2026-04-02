ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('qb-carwash:server:washCar', function(source)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local mymoney = Player.getMoney()

    if mymoney >= VehWash.DefaultPrice then
        TriggerClientEvent('qb-carwash:client:washCar', src)
        Player.removeMoney(VehWash.DefaultPrice)
    else
        TriggerClientEvent('ttyy_nuipack:client:SendAlert', src, { type = 'error', text = 'Paranız Yetersiz!'})
    end
end)