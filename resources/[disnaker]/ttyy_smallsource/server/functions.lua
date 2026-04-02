-- check money

ESX.RegisterServerCallback('ttyy_core:checkMoney', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
	local have = xPlayer.getMoney()

	if money ~= nil then  
		if have >= money then
            xPlayer.removeAccountMoney('money', money)
			cb(true)
		else
			print('no')
			cb(false)
		end
	end
end)


ESX.RegisterServerCallback('ttyy_core:HasItem', function(source, cb, item)
    local ply = ESX.GetPlayerFromId(source)
    itemcount = ply.getInventoryItem(item).count
    if itemcount > 0 then
        cb(true)
    else
        cb(false)
    end
end)

--[[---------------------------------------------------
Remove Item
--]]---------------------------------------------------

function removeItem(item, count)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    xPlayer.removeInventoryItem(item, count)
end
exports('removeItem', removeItem)

RegisterServerEvent('ttyy_core:removeItem')
AddEventHandler('ttyy_core:removeItem', function(item, count)
    removeItem(item, count)
end)

--[[---------------------------------------------------
Add Item
--]]---------------------------------------------------

function addItem(source, item, count, metadata)
    local Inventory = exports.ox_inventory:Inventory()

    if (Inventory.CanCarryItem(source, item, count)) then
        Inventory.AddItem(source, item, count, metadata)
    else
        TriggerClientEvent('notify:Alert', source, 'SYSTEM', 'You cannot carry this item', 5000, 'error')
    end
end
exports('addItem', addItem)

RegisterServerEvent('ttyy_core:addItem')
AddEventHandler('ttyy_core:addItem', function(item, count)
    addItem(source, item, count)
end)

--[[---------------------------------------------------
Item Count
--]]--

function itemCount(source, item, metadata)
    if (source == nil) then return end

    local itemCount = exports.ox_inventory:Search(source, 'count', item, metadata)
    if (itemCount == nil) then itemCount = 0 end
    return itemCount
end
exports('itemCount', itemCount)
ESX.RegisterServerCallback('ttyy_core:itemCount', function(source, cb, item)
    cb(itemCount(source, item))
end)

--[[---------------------------------------------------
Can Hold Item
--]]---------------------------------------------------
function canHoldItem(source, item, count)
    if (source == nil) then return end
    if (Config.OxInventory) then
		return exports.ox_inventory:CanCarryItem(source, item, count)
	else
		local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.canCarryItem(item, count)
	end
end
exports('canHoldItem', canHoldItem)

ESX.RegisterServerCallback('ttyy_core:canHoldItem', function(source, cb, item, count)
    cb(canHoldItem(source, item, count))
end)

ESX.RegisterServerCallback('ttyy_core:jobCount', function(source, cb, job)
    cb(#ESX.GetExtendedPlayers('job', job))
end)