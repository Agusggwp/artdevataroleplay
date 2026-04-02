ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('ramen:ambilsusu') 
AddEventHandler('ramen:ambilsusu', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local patah = xPlayer.getInventoryItem('sususapi').count
    if patah < 100 then

        TriggerClientEvent('ramen:animperassusu', _source)

        Citizen.Wait(1000)

       local kuantitas = math.random(1,5)
        xPlayer.addInventoryItem('sususapi', kuantitas)
        TriggerClientEvent('ramen:animselesai', _source)

        TriggerClientEvent('esx:showNotification', _source, 'telah mendapatkan ~y~'.. kuantitas .. ' ~w~susu sapi segar')
    end
end)
