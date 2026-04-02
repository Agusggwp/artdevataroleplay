ESX.RegisterUsableItem('campkit', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('campkit', 1)
    TriggerClientEvent('cyber:camping', source)    
end)

RegisterServerEvent('cyber:campingcontrol')AddEventHandler('cyber:campingcontrol',function()TriggerClientEvent("cyber-campingcreateobject",source,'prop_beach_fire','prop_skid_tent_01','prop_skid_chair_02')end)
