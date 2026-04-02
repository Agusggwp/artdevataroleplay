--------------------------------------------------------------------
-------------------------Converted by ex#1515-----------------------
--------------------------------------------------------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ttyy_pdm:requestInfo')
AddEventHandler('ttyy_pdm:requestInfo', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local rows    

    TriggerClientEvent('ttyy_pdm:receiveInfo', src, xPlayer.getMoney())
    TriggerClientEvent("ttyy_pdm:notify", src, 'error', 'Use A and D To Rotate')
end)

ESX.RegisterServerCallback('ttyy_pdm:isPlateTaken', function (source, cb, plate)
	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function (result)
		cb(result[1] ~= nil)
	end)
end)




-- Double checking on the money, if you do not have it in the inventory, look at the bank -- CREDIT (Sr.Zek)
RegisterServerEvent('ttyy_pdm:CheckMoneyForVeh')
AddEventHandler('ttyy_pdm:CheckMoneyForVeh', function(veh, price, name, vehicleProps)
	local _source = source
	local src = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.getMoney() >= tonumber(price) then
		xPlayer.removeMoney(tonumber(price))
		if Config.SpawnVehicle then
			stateVehicle = 0
		else
			stateVehicle = 1
		end

		MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
		{
			['@owner']   = xPlayer.identifier,
			['@plate']   = vehicleProps.plate,
			['@vehicle'] = json.encode(vehicleProps)
		}, function (rowsChanged)
			
			TriggerClientEvent("ttyy_pdm:successfulbuy", _source, name, vehicleProps.plate, price)
			TriggerClientEvent('ttyy_pdm:receiveInfo', _source, xPlayer.getMoney())   
			TriggerClientEvent('ttyy_pdm:spawnVehicle', _source, veh, vehicleProps.plate)
		end)
	elseif xPlayer.getAccount('bank').money >= tonumber(price) then
		xPlayer.removeAccountMoney('bank',tonumber(price))
		if Config.SpawnVehicle then
			stateVehicle = 0
		else
			stateVehicle = 1
		end

		MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
		{
			['@owner']   = xPlayer.identifier,
			['@plate']   = vehicleProps.plate,
			['@vehicle'] = json.encode(vehicleProps)
		}, function (rowsChanged)
			
			TriggerClientEvent("ttyy_pdm:successfulbuy", _source, name, vehicleProps.plate, price)
			TriggerClientEvent('ttyy_pdm:receiveInfo', _source, xPlayer.getMoney())   
			TriggerClientEvent('ttyy_pdm:spawnVehicle', _source, veh, vehicleProps.plate)
		end)
	else
		 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = 'Not Enough Money'})
	end
end)