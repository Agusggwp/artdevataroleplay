ESX = exports.es_extended:getSharedObject()
local Jobs = {}
local RegisteredSocieties = {}


function GetSociety(name)
	for i=1, #RegisteredSocieties, 1 do
		if RegisteredSocieties[i].name == name then
			return RegisteredSocieties[i]
		end
	end
end

Citizen.CreateThread(function()
	local result = MySQL.Sync.fetchAll('SELECT * FROM jobs', {})
	for i=1, #result, 1 do
		Jobs[result[i].name]        = result[i]
		Jobs[result[i].name].grades = {}
	end

	local result2 = MySQL.Sync.fetchAll('SELECT * FROM job_grades', {})

	for i=1, #result2, 1 do
		Jobs[result2[i].job_name].grades[tostring(result2[i].grade)] = result2[i]
	end
end)

RegisterServerEvent('esx_society:getEmployees', function(society)
    local xPlayer = ESX.GetPlayerFromId(source)
	local oSource = source
    local employees = {}

    MySQL.Async.fetchAll('SELECT firstname, lastname, identifier, job, job_grade FROM users WHERE job = @job ORDER BY job_grade DESC', {
        ['@job'] = society
    }, function (results)
        for i=1, #results, 1 do
            table.insert(employees, {
                name       = results[i].firstname .. ' ' .. results[i].lastname,
                identifier = results[i].identifier,
                job = {
                    name        = results[i].job,
                    label       = Jobs[results[i].job].label,
                    grade       = results[i].job_grade,
                    grade_name  = Jobs[results[i].job].grades[tostring(results[i].job_grade)].name,
                    grade_label = Jobs[results[i].job].grades[tostring(results[i].job_grade)].label
                }
                
            })
        end
        TriggerClientEvent('esx_society:sendData', oSource, employees)
    end)
end)

AddEventHandler('esx_society:registerSociety', function(name, label, account, datastore, inventory, data)
	local found = false

	local society = {
		name      = name,
		label     = label,
		account   = account,
		datastore = datastore,
		inventory = inventory,
		data      = data,
	}

	for i=1, #RegisteredSocieties, 1 do
		if RegisteredSocieties[i].name == name then
			found = true
			RegisteredSocieties[i] = society
			break
		end
	end

	if not found then
		table.insert(RegisteredSocieties, society)
	end
end)


AddEventHandler('esx_society:getSocieties', function(cb)
	cb(RegisteredSocieties)
end)


ESX.RegisterServerCallback('esx_society:setJob', function(source, cb, identifier, job, grade, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local isBoss = xPlayer.job.grade_name == 'boss'

	if isBoss then
		local xTarget = ESX.GetPlayerFromIdentifier(identifier)

		if xTarget then
			xTarget.setJob(job, grade)

			if type == 'hire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, 'You have been hired by '..job)
			elseif type == 'promote' then
				TriggerClientEvent('esx:showNotification', xTarget.source, 'You have promoted')
			elseif type == 'fire' then
				TriggerClientEvent('esx:showNotification', xTarget.source, 'You have been fired from '..xTarget.getJob().label)
			end

			cb()
		else
			MySQL.Async.execute('UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier', {
				['@job']        = job,
				['@job_grade']  = grade,
				['@identifier'] = identifier
			}, function(rowsChanged)
				cb()
			end)
		end
	else

		cb()
	end
end)

ESX.RegisterServerCallback('esx_society:getJob', function(source, cb, society)
	local job    = json.decode(json.encode(Jobs[society]))
	local grades = {}

	for k,v in pairs(job.grades) do
		table.insert(grades, v)
	end

	table.sort(grades, function(a, b)
		return a.grade < b.grade
	end)

	job.grades = grades

	cb(job)
end)

ESX.RegisterServerCallback('esx_society:getOnlinePlayers', function(source, cb)
	local xPlayers = ESX.GetPlayers()
	local players  = {}

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		table.insert(players, {
			source     = xPlayer.source,
			identifier = xPlayer.identifier,
			name       = xPlayer.name,
			icname	   = result[1].firstname .. ' ' .. result[1].lastname,
			job        = xPlayer.job
		})
	end

	cb(players)
end)

ESX.RegisterServerCallback('esx_society:retrieveData', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		local society = nil

			TriggerEvent('esx_society:getSociety', xPlayer.job.name, function(data)
				if data ~= nil then
					TriggerEvent('esx_addonaccount:getSharedAccount', data.account, function(account)
							society = account['money']
					end)
				end
			end)

	  cb({society = society})
	end
end)

AddEventHandler('esx_society:getSociety', function(name, cb)
	cb(GetSociety(name))
end)

ESX.RegisterServerCallback('esx_society:getSocietyMoney', function(source, cb, societyName)
	local society = GetSociety(societyName)

	if society then
		TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
			cb(account.money)
		end)
	else
		cb(0)
	end
end)



RegisterServerEvent('esx_society:withdrawMoney')
AddEventHandler('esx_society:withdrawMoney', function(society, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local society = GetSociety(society)
	amount = ESX.Math.Round(tonumber(amount))

	if xPlayer.job.name ~= society.name then
		print(('esx_society: %s attempted to call withdrawMoney!'):format(xPlayer.identifier))
		return
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)
			xPlayer.addMoney(amount)

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'You success withdraw society money $'..ESX.Math.GroupDigits(amount))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Invalid amount')
		end
	end)
end)

RegisterServerEvent('esx_society:depositMoney')
AddEventHandler('esx_society:depositMoney', function(society, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local society = GetSociety(society)
	amount = ESX.Math.Round(tonumber(amount))

	if xPlayer.job.name ~= society.name then
		print(('esx_society: %s attempted to call depositMoney!'):format(xPlayer.identifier))
		return
	end

	if amount > 0 and xPlayer.getMoney() >= amount then
		TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
			xPlayer.removeMoney(amount)
			account.addMoney(amount)
		end)

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'You success deposit society money $'..ESX.Math.GroupDigits(amount))
	else
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'Invalid amount')
	end
end)