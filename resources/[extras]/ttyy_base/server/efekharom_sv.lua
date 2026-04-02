ESX = nil


TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

-- Item use
ESX.RegisterUsableItem('coke', function(source)
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('coke', 1)

	TriggerClientEvent('kypo-drug-effect:onCoke', source)
end)

-- Item use
ESX.RegisterUsableItem('marijuana', function(source)
        
    local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.removeInventoryItem('marijuana', 1)

TriggerClientEvent('kypo-drug-effect:onWeed', source)
end)

ESX.RegisterUsableItem('heroin', function(source)
        
    local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.removeInventoryItem('heroin', 1)

TriggerClientEvent('kypo-drug-effect:onKaret', source)
end)

--[[ESX.RegisterUsableItem('heroin', function(source)
        
    local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.removeInventoryItem('heroin', 1)

TriggerClientEvent('kypo-drug-effect:onHeroin', source)
end)]]--