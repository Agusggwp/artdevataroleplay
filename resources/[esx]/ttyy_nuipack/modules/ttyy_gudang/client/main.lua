--=====================
-- Praryo Locker Room
--=====================


Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["top-leftSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["top-leftCTRL"] = 36, ["top-leftALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["top-left"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	ESX.PlayerData = ESX.GetPlayerData()


    playerIdent = ESX.GetPlayerData().identifier
	
    -- CreateBlips()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

function LockerMenu(k, hasLocker, lockerName)
	local elements = {}
	
	if hasLocker then
		table.insert(elements, {label = 'Buka Locker', value = 'open_locker'})
		table.insert(elements, {label = 'Berhenti Rental Locker', value = 'stop_renting'})
	end
	
	if not hasLocker then
		table.insert(elements, {label = 'Sewa | Biaya Sewa Awal: <span style="color: green;">$' .. ESX.Math.GroupDigits(Gudang.InitialRentPrice) .. '</span> | Biaya Bulanan - <span style="color: green;">$' .. ESX.Math.GroupDigits(Gudang.DailyRentPrice) .. '</span>', value = 'start_locker'})
	end
	
	ESX.UI.Menu.CloseAll()
	
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'locker_menu', {
		title    = lockerName,
		align    = 'top-top-left',
		elements = elements
	}, function(data, menu)

		if data.current.value == 'start_locker' then
			--TriggerServerEvent('lsi_locker:startRentingLocker', k, lockerName)
			ConfirmLockerRent(k, lockerName)
			menu.close()
		elseif data.current.value == 'stop_renting' then
			--TriggerServerEvent('lsi_locker:stopRentingLocker', k, lockerName)
			StopLockerRent(k, lockerName)
			menu.close()
		elseif data.current.value == 'open_locker' then
			ESX.Streaming.RequestAnimDict('anim@heists@keycard@', function()
				TaskPlayAnim( PlayerPedId(), "anim@heists@keycard@", "exit", 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "stashopen", 0.6)
				--exports['progressBars']:startUI(500, "Membuka Locker")
				Citizen.Wait(500)
				ClearPedTasksImmediately(playerPed)
			end)
			Openstashopen(k, playerIdent, lockerName)
			menu.close()
		end

	end, function(data, menu)
		menu.close()
	end)

end

function ConfirmLockerRent(k, lockerName)

    local elements = {
        {label = 'Yes', value = 'buy_yes'},
        {label = 'No', value = 'buy_no'}
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'confirm_rent_locker', {
        title    = 'Apakah kamu ingin menyewa ' .. lockerName .. '',
        align    = 'top-left',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'buy_yes' then
            menu.close()
			TriggerServerEvent('lsi_locker:startRentingLocker', k, lockerName)
        elseif data.current.value == 'buy_no' then
            menu.close()
        end

    end, function(data, menu)
        menu.close()
    end)  
end

function StopLockerRent(k, lockerName)

    local elements = {
        {label = 'Iya', value = 'buy_yes'},
        {label = 'Tidak', value = 'buy_no'}
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'cancel_rent_locker', {
        title    = 'Apakah kamu ingin berhenti menyewa ' .. lockerName .. '',
        align    = 'top-left',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'buy_yes' then
            menu.close()
			TriggerServerEvent('lsi_locker:stopRentingLocker', k, lockerName)
        elseif data.current.value == 'buy_no' then
            menu.close()
        end

    end, function(data, menu)
        menu.close()
    end)  
end

function Openstashopen(lockerId, identifier, lockerName)
	ESX.TriggerServerCallback("lsi_locker:getPropertyInventory", function(inventory)
		TriggerServerEvent('gudang:registerstash', lockerName)
	end, identifier, lockerName)
end


RegisterNetEvent('koe_storageunits:openStash')
AddEventHandler('koe_storageunits:openStash', function(id)
    TriggerEvent('ox_inventory:openInventory', 'stash', id)
end)

function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(10)
    end
end

RegisterNetEvent('ttyygudang:gudangkota')
AddEventHandler('ttyygudang:gudangkota', function ()
	ESX.TriggerServerCallback('lsi_locker:checkLocker', function(checkLocker)
		LockerMenu('locker1', checkLocker, 'Gudang Kota')
	end, 'locker1')
end)

RegisterNetEvent('ttyygudang:gudangss')
AddEventHandler('ttyygudang:gudangss', function ()
	ESX.TriggerServerCallback('lsi_locker:checkLocker', function(checkLocker)
		LockerMenu('locker3', checkLocker, 'Gudang Sandy Shores')
	end, 'locker3')
end)

RegisterNetEvent('ttyygudang:gudangpaleto')
AddEventHandler('ttyygudang:gudangpaleto', function ()
	ESX.TriggerServerCallback('lsi_locker:checkLocker', function(checkLocker)
		LockerMenu('locker2', checkLocker, 'Gudang Paleto')
	end, 'locker2')
end)

Citizen.CreateThread(function()
	exports['qtarget']:AddBoxZone("gudangkota", vector3(-1607.61, -831.04, 10.08), 1, 5.8, {
		name="gudangkota",
		heading=320,
		--debugPoly=true,
		minZ=9.08,
		maxZ=13.08
    }, {
        options = {
            {
                event = "ttyygudang:gudangkota",
                icon = "fas fa-warehouse",
                label = "open gudang",

            },
        },
		job = {"all"},
        distance = 1.5
    })

	exports['qtarget']:AddBoxZone("gudangss", vector3(1960.63, 5184.78, 47.96), 1, 2.2, {
		name="gudangss",
		heading=270,
		--debugPoly=true,
		minZ=45.96,
		maxZ=49.96
    }, {
        options = {
            {
                event = "ttyygudang:gudangss",
                icon = "fas fa-warehouse",
                label = "open gudang",

            },
        },
		job = {"all"},
        distance = 1.5
    })

	exports['qtarget']:AddBoxZone("gudangpaleto", vector3(147.41, 6366.67, 31.53), 1, 4.8, {
		name="gudangpaleto",
		heading=297,
		--debugPoly=true,
		minZ=30.53,
		maxZ=34.53
    }, {
        options = {
            {
                event = "ttyygudang:gudangpaleto",
                icon = "fas fa-warehouse",
                label = "open gudang",

            },
        },
		job = {"all"},
        distance = 1.5
    })
end)

