ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

RegisterServerEvent('bixbi_gather:Collect')
AddEventHandler('bixbi_gather:Collect', function(pos, itemZone)
    local zone = Config.CircleZones[itemZone]
    local distance = #(pos - zone.coords)
    if (distance < zone.radius) then
        TriggerClientEvent('bixbi_gather:StartCollect', source, pos, itemZone)
    end
end)

RegisterServerEvent('bixbi_gather:SetupTargets')
AddEventHandler('bixbi_gather:SetupTargets', function()
    local zones = Config.CircleZones
    TriggerClientEvent('bixbi_gather:SetupTargetsClient', source, zones)
end)

RegisterServerEvent('bixbi_gather:Success')
AddEventHandler('bixbi_gather:Success', function(pos, field, item)
    local field = Config.CircleZones[field]
    if (#(pos - field.coords) < field.radius ) then
        local count = 1
        for _, v in pairs(field.info) do
            if (v.item == item) then count = math.random(v.minQty, v.maxQty) end
        end
        exports['ttyy_smallsource']:addItem(source, item, count)
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You have collected ' .. count .. 'x ' .. item, 5000, 'success')
    else
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You were too far away from the item zone', 5000, 'error')
    end
end)

ESX.RegisterServerCallback('bixbi_gather:LegalJobs', function(source, cb)
    local zones = {}
    for k, v in pairs(Config.CircleZones) do
        if (v.blipInfo ~= nil) then table.insert(zones, {label = v.blipInfo.label, location = v.coords, tool = v.tool, locname = k}) end
    end
	cb(zones)
end)

ESX.RegisterServerCallback('bixbi_core:illegalTaskBlacklist', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    -- var = check (and) true (or) false
    local result = Config.IllegalTaskBlacklist[xPlayer.job.name] == true and true or false
    cb(result)
end)