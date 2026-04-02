ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_plasticsurgery:pay')
AddEventHandler('esx_plasticsurgery:pay', function()

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeMoney(Cfg_Oplas.RegulasiOplas)
	suksess(_U('you_paid') .. Cfg_Oplas.RegulasiOplas)

end)

ESX.RegisterServerCallback('esx_plasticsurgery:checkMoney', function(source, cb)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.get('money') >= Cfg_Oplas.RegulasiOplas then
		cb(true)
	else
		cb(false)
	end

end)

RegisterServerEvent('ttyy_oplas:hapustiket')
AddEventHandler('ttyy_oplas:hapustiket', function(tiket)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local drill = xPlayer.getInventoryItem('tiketoplas')
	local xPlayers = ESX.GetPlayers()
	if xPlayer.getInventoryItem('tiketoplas').count >= 1 then
		xPlayer.removeInventoryItem('tiketoplas', 1)
	else
	end
end)

ESX.RegisterServerCallback('ttyy_oplas:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(item).count

	cb(quantity)
end)