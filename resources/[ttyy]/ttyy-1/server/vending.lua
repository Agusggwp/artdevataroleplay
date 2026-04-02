ESX.RegisterServerCallback('vending_machines:canAfford', function(source, cb, price)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= price then
        cb(true)
    else
		xPlayer.showNotification('You do not have enough money')
        cb(false)
    end
end)

RegisterNetEvent('OT_vending:buy')
AddEventHandler('OT_vending:buy', function(item, price)
	local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
		local max = 0
		if xPlayer.getAccount('money').money >= price then
			if xPlayer.canCarryItem(item, 1) then
				xPlayer.addInventoryItem(item, 1)
				xPlayer.removeAccountMoney('money', price)
				xPlayer.showNotification('You purchased 1x '..ESX.GetItemLabel(item))
			else xPlayer.showNotification('You\'re unable to carry any more') end
		else xPlayer.showNotification('You do not have enough money') end
	 end
end)