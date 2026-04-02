
RegisterNetEvent('ttyy_paycheck:30menit')
AddEventHandler('ttyy_paycheck:30menit',function(xPlayer, value)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT `paycheck` FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			local paycheckbd = {}
			if result[1].paycheck ~= nil then
				paycheckbd = json.decode(result[1].paycheck)
			end
		MySQL.Async.fetchAll("UPDATE users SET paycheck = @paycheck WHERE identifier = @identifier",{
			['@identifier'] = xPlayer.identifier,
			['@paycheck'] = paycheckbd + (value)
		})
		end)
	else 
		print(('Someone is trying to do something shady. [ttyy_paycheck]'):format(xPlayer.identifier))
	end
end)


RegisterNetEvent('ttyy_paycheck:AddMoney')
AddEventHandler('ttyy_paycheck:AddMoney',function(source, value)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT `paycheck` FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			local paycheckbd = {}
			if result[1].paycheck ~= nil then
				paycheckbd = json.decode(result[1].paycheck)
			end
		MySQL.Async.fetchAll("UPDATE users SET paycheck = @paycheck WHERE identifier = @identifier",{
			['@identifier'] = xPlayer.identifier,
			['@paycheck'] = paycheckbd + (value)
		})
		end)
	else 
		print(('Someone is trying to do something shady. [ttyy_paycheck]'):format(xPlayer.identifier))
	end
end)


RegisterNetEvent('ttyy_paycheck:withdrawMoney')
AddEventHandler('ttyy_paycheck:withdrawMoney', function(value)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT `paycheck` FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			if result[1] then
				local paycheckbd = {}
				if result[1].paycheck ~= nil then
					paycheckbd = json.decode(result[1].paycheck)
				end
				print(value)
				if paycheckbd >= value then
					MySQL.Async.execute("UPDATE users SET paycheck = @paycheck WHERE identifier = @identifier",{
						['@identifier'] = xPlayer.identifier,
						['@paycheck'] = paycheckbd - value
					})
					xPlayer.addMoney(value)
					TriggerClientEvent('notify:Alert', _source, 'BURSA', 'You recollect '..value..'$', 5000, 'info')
				else
					TriggerClientEvent('notify:Alert', _source, 'BURSA', 'You dont have enough money to collect that.', 5000,'error')
				end
			end
		end)
	else
		print(('Someone is trying to do something shady. [ttyy_paycheck]'):format(xPlayer.identifier))
	end
end)

RegisterNetEvent('ttyy_paycheck:withdrawMoney')
AddEventHandler('ttyy_paycheck:withdrawMoney', function(value)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT `paycheck` FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			if result[1] then
				local paycheckbd = {}
				if result[1].paycheck ~= nil then
					paycheckbd = json.decode(result[1].paycheck)
				end
				print(value)
				if paycheckbd >= value then
					MySQL.Async.execute("UPDATE users SET paycheck = @paycheck WHERE identifier = @identifier",{
						['@identifier'] = xPlayer.identifier,
						['@paycheck'] = paycheckbd - value
					})
					if Config.ReceiveInCash == true then
						xPlayer.addMoney(value)
					else
						xPlayer.addAccountMoney('bank', value)
					end
					local msg1 = 'You recollect '..value..'$'
					local type = 'success'
					TriggerClientEvent('ttyy_paycheck:notification',_source,msg1,type)
				else
					local msg2 = 'You dont have enough money to collect that.'
					local type2 = 'error'
					TriggerClientEvent('ttyy_paycheck:notification',_source,msg2,type2)
				end
			end
		end)
	else
		print(('Someone is trying to do something shady. [ttyy_paycheck]'):format(xPlayer.identifier))
	end
end)

RegisterNetEvent("ttyy_paycheck:Payout")
AddEventHandler("ttyy_paycheck:Payout", function()
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT `paycheck` FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
				local paycheckbd = {}
				if result[1].paycheck ~= nil then
					paycheckbd = json.decode(result[1].paycheck)
				end
				if paycheckbd > 0 then
					MySQL.Async.execute("UPDATE users SET paycheck = @paycheck WHERE identifier = @identifier",{
						['@identifier'] = xPlayer.identifier,
						['@paycheck'] = 0
					})
						xPlayer.addMoney(paycheckbd)
					TriggerClientEvent('notify:Alert', _source, 'BURSA', 'All your paycheck its '..paycheckbd..'$', 5000, 'info')
				else
					TriggerClientEvent('notify:Alert', _source, 'BURSA', 'You dont have anything to collect.', 5000, 'error')
				end
		end)
	else
		print(('Someone is trying to do something shady. [ttyy_paycheck]'):format(xPlayer.identifier))
	end
end)

ESX.RegisterServerCallback('ttyy_paycheck:server:GetDataMoney', function(source,cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		MySQL.Async.fetchAll("SELECT `paycheck` FROM users WHERE identifier = @identifier", {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			if result[1] ~= nil then
				local paycheckdata = {}
				if result[1].paycheck ~= nil then
					paycheckdata = json.decode(result[1].paycheck)
				end
				cb(paycheckdata)
			end	
		end)
	end
end)