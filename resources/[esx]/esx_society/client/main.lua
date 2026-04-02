ESX = nil
local alldata = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(0)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	while ESX == nil do
		Wait(5)
	end
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	while ESX == nil do
		Wait(5)
	end
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx_society:sendData')
AddEventHandler('esx_society:sendData', function(data)
	local Datas = {}
	for i=1, #data, 1 do
		table.insert(Datas, {cid = data[i].identifier, nama = data[i].name, pangkat = data[i].job.grade_label})
	end
	alldata = Datas
end)


RegisterNetEvent('esx_society:getallpekerja')
AddEventHandler('esx_society:getallpekerja', function(society)
	TriggerServerEvent('esx_society:getEmployees', society)
end)
 
RegisterNetEvent('esx_society:boss', function()
    if ESX.GetPlayerData().job.grade_name == 'boss' then
        TriggerEvent('esx_society:bossaction', ESX.GetPlayerData().job.name)
    else
        ESX.ShowNotification('You dont have access for open management', 'error')
    end
end)


RegisterNetEvent('esx_society:bossaction', function(society)
    ESX.TriggerServerCallback('esx_society:retrieveData', function(data)
        exports['nh-context']:ContextMenu({
            {
                header = "<b>💻 | Boss Action</b>",
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = "Deposit Money",
                context = 'Cash ➡️ $'..ESX.Math.GroupDigits(data.society),
                event = "esx_society:depositboss",
                args = {society}
            },
            {
                header = "Withdraw Money",
                context = "",
                event = "esx_society:withdrawboss",
                args = {society}
            },
            {
                header = "Hire Employee",
                context = "Hire new employee?",
                subMenu = true,
                event = "esx_society:hirenew",
                args = {society}
            },
            {
                header = "Employee Management",
                context = "Open for promote or fire employee",
                subMenu = true,
                event = "esx_society:employeeList",
                args = {society}
            },
        })
    end)
end)

RegisterNetEvent('esx_society:hirenew', function(society)
    ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)
        local hire = {
            {
                header = '< Go Back',
                event = 'esx_society:bossaction',
                args = {society}
            }
        }
        for i=1, #players, 1 do
            hire[#hire + 1] = {
                header = players[i].name,
                context = 'Click to hire this player',
                event = 'esx_society:hire',
                args = {players[i].identifier, society, players[i].name}
            }
        end
        exports['nh-context']:ContextMenu(hire)
    end)
end)

RegisterNetEvent('esx_society:hire', function(cid, society, nama)
    ESX.TriggerServerCallback('esx_society:setJob', function()
        TriggerEvent('esx_society:bossaction', 'police')
        ESX.ShowNotification('You success hired '..nama)
    end, cid, society, 0, 'hire')
end)

RegisterNetEvent('esx_society:withdrawboss')
AddEventHandler('esx_society:withdrawboss', function(society)
    local ipt = exports["nh-keyboard"]:KeyboardInput({
        header = "Withdraw",
        rows = {
            {
                id = 0,
                txt = "Withdraw Amount"
            },
        }
    })
    if ipt[1].input == nil then return end
    local amount = tonumber(ipt[1].input)
    if amount ~= nil then 
        TriggerServerEvent('esx_society:withdrawMoney', society, amount)
        TriggerEvent('esx_society:bossaction', society)
    else
        ESX.ShowNotification('Amount must be number')
    end
end)

RegisterNetEvent('esx_society:employeeList', function(society)
    TriggerEvent('esx_society:getallpekerja', society)
	Citizen.Wait(150)
    local employees = {
        {
            header = '< Go Back',
            event = 'esx_society:bossaction',
            args = {society}
        }
    }
    for i=1, #alldata, 1 do
        employees[#employees + 1] = {
            header = alldata[i].nama,
            context = 'Grade ➡️ '..alldata[i].pangkat,
			event = 'esx_society:manage',
            args = {alldata[i].cid, alldata[i].nama, society}
        }
    end
    exports['nh-context']:ContextMenu(employees)
end)

RegisterNetEvent('esx_society:manage', function(player, nama, society)
    exports['nh-context']:ContextMenu({
        {
            header = "<b>📝 | Management</b>",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
		{
            header = "Promote",
			context = '',
			event = "esx_society:promote",
            args = {player, society, nama}
        },
		{
            header = "Fire",
			context = "",
			event = "esx_society:fire",
            args = {player, nama, society}
        },
    })
end)

RegisterNetEvent('esx_society:depositboss')
AddEventHandler('esx_society:depositboss', function(society)
    local ipt = exports["nh-keyboard"]:KeyboardInput({
        header = "Deposit",
        rows = {
            {
                id = 0,
                txt = "Deposit Amount"
            },
        }
    })
    if ipt[1].input == nil then return end
    local amount = tonumber(ipt[1].input)
    if amount ~= nil then 
        TriggerServerEvent('esx_society:depositMoney', society, amount)
        TriggerEvent('esx_society:bossaction', society)
    else
        ESX.ShowNotification('Amount must be number')
    end
end)


RegisterNetEvent('esx_society:fire', function(cid, nama, society)
    ESX.TriggerServerCallback('esx_society:setJob', function()
        TriggerEvent('esx_society:employeeList', society)
        ESX.ShowNotification('You success fired '..nama)
    end, cid, 'unemployed', 0, 'fire')
end)

RegisterNetEvent('esx_society:promote', function(cid, society, nama)
    ESX.TriggerServerCallback('esx_society:getJob', function(job)
        local pangkat = {
            {
                header = '< Go Back',
                event = 'qb-clothing:client:openOutfitMenu'
            }
        }
        for i=1, #job.grades, 1 do
			pangkat[#pangkat + 1] = {
                header = job.grades[i].label ,
                event = 'esx_society:promotes',
                args = {cid, society, job.grades[i].grade, job.grades[i].label, nama}
            }
		end
        exports['nh-context']:ContextMenu(pangkat)
    end, society)
end)

RegisterNetEvent('esx_society:promotes', function(cid, society, grade, label, nama)
    ESX.TriggerServerCallback('esx_society:setJob', function()
        TriggerEvent('esx_society:employeeList', society)
        ESX.ShowNotification('You success promoted '..nama..' to '..label)
    end, cid, society, grade, 'promote')
end)

RegisterCommand('jeki', function ()
	TriggerEvent('esx_society:boss', 'police', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)