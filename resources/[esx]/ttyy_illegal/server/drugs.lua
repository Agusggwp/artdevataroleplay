local SellLocation = math.random(#Config.SellLocation)

ESX.RegisterServerCallback('bluecity_drugs:GetSellLocation', function(source, cb)
	cb(SellLocation)
end)

ESX.RegisterServerCallback('bluecity_illegal:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)

	if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob[item].police and #ESX.GetExtendedPlayers('job', 'ambulance') == Config.MinJob[item].ambulance then
		cb(false)
	else
		cb(true)
	end
end)

RegisterServerEvent('bluecity_drugs:pickedUp')
AddEventHandler('bluecity_drugs:pickedUp', function(item, type)
	local xPlayer = ESX.GetPlayerFromId(source)

	if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob[type].police and #ESX.GetExtendedPlayers('job', 'ambulance') < Config.MinJob[type].ambulance then
		item = nil
	end

	if xPlayer and item then
		if xPlayer.canCarryItem(item, count) then
		--ESX.SendDiscord(GetPlayerName(source), 'Telah melakukan pengambilan '.. item, 'takingdrug')
		xPlayer.addInventoryItem(item, 1)
		end
	end
end)

RegisterServerEvent('bluecity_drugs:SellDrugs')
AddEventHandler('bluecity_drugs:SellDrugs', function(type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item, count = nil, 1

	if type == 'meth' and xPlayer.getInventoryItem('meth_pooch').count > 0 then
		item = 'meth_pooch'
		if xPlayer.getInventoryItem('meth_pooch').count > 0 then
			count = 10
		end
	elseif type == 'weed' and xPlayer.getInventoryItem('weed').count > 0 then
		item = 'weed'
		if xPlayer.getInventoryItem('weed').count > 0 then
			count = 10
		end
	end

	if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob['sell'].police and #ESX.GetExtendedPlayers('job', 'ambulance') == Config.MinJob['sell'].ambulance then
		item = nil
		xPlayer.showNotification('Tindakan Tidak Bisa dilakukan! kekurangan. Polisi/Paramedis', 'error')

	end

	if xPlayer and item then
		local sellprice = math.random(Config.SellPrice[item].min, Config.SellPrice[item].max)
		xPlayer.removeInventoryItem(item, count)
		xPlayer.addAccountMoney('black_money', sellprice * count)
	end
end)

RegisterServerEvent('bluecity_drugs:AddMeth')
AddEventHandler('bluecity_drugs:AddMeth', function(state)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item, count = nil, 2

	if state == 'raw' then
		item = 'meth_liquid'
	elseif state == 'process' then
		item = 'meth_pooch'
		count = 1

		if xPlayer.getInventoryItem('meth_liquid').count <= 0 then
			item = nil
		end
	end

	if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob['meth'].police and #ESX.GetExtendedPlayers('job', 'ambulance') == Config.MinJob['meth'].ambulance then
		item = nil
		xPlayer.showNotification('Tindakan Tidak Bisa dilakukan! kekurangan. Polisi/Paramedis', 'error')
	end

	if xPlayer and item then
		if xPlayer.canCarryItem(item, count) then
			--ESX.SendDiscord(GetPlayerName(source), 'Telah melakukan proses sabu '.. state, 'processdrug')
			xPlayer.addInventoryItem(item, count)
			if state == 'process' then
				xPlayer.removeInventoryItem('meth_liquid', 2)
			elseif state == 'raw' then
				xPlayer.removeInventoryItem('meth_powder', 3)
				xPlayer.showNotification('Tahap selanjutnya: Mencampur material!')
			end
		end
	end
end)

RegisterServerEvent('bluecity_drugs:AddWeed')
AddEventHandler('bluecity_drugs:AddWeed', function(state)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item, count = nil, 2

	if state == 'raw' then
		item = 'weed_dry'
	elseif state == 'process' then
		item = 'weed'
		count = 1

		if xPlayer.getInventoryItem('weed_dry').count <= 0 then
			item = nil
		end
	end

	if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob['weed'].police and #ESX.GetExtendedPlayers('job', 'ambulance') < Config.MinJob['weed'].ambulance then
		item = nil
		xPlayer.showNotification('Tindakan Tidak Bisa dilakukan! kekurangan. Polisi/Paramedis', 'error')
	end

	if xPlayer and item then
		if xPlayer.canCarryItem(item, count) then
			--ESX.SendDiscord(GetPlayerName(source), 'Telah melakukan proses sabu '.. state, 'processdrug')
			xPlayer.addInventoryItem(item, count)
			if state == 'process' then
				xPlayer.removeInventoryItem('weed_dry', 2)
			elseif state == 'raw' then
				xPlayer.showNotification('Tahapan Selanjutnya Mengemas Ganja!')
				xPlayer.removeInventoryItem('weed_leaf', 3)
			end
		end
	end
end)

function ChangeLocation()
	local newlocation = math.random(#Config.SellLocation)

	while newlocation == SellLocation do
		newlocation = math.random(#Config.SellLocation)
		Citizen.Wait(1000)
	end

	SellLocation = newlocation
	TriggerClientEvent('bluecity_drugs:UpdateSellLocation', -1, SellLocation)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60000 * 120)
		ChangeLocation()
	end
end)