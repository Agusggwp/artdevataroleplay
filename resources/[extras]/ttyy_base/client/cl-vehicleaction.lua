local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


RegisterNetEvent('ttyy:dorongmobildepan')
AddEventHandler('ttyy:dorongmobildepan', function(data)
	local ped = cache.ped
	local coords = GetEntityCoords(ped)
    local closestVehicle = data.entity
    local dimension = GetModelDimensions(GetEntityModel(closestVehicle), First, Second)

	NetworkRequestControlOfEntity(closestVehicle)
	AttachEntityToEntity(ped, closestVehicle, GetPedBoneIndex(6286), 0.0, dimension.y * -1 + 0.1 , dimension.z + 1.0, 0.0, 0.0, 180.0, 0.0, false, false, true, false, true)
	ESX.Streaming.RequestAnimDict('missfinale_c2ig_11')
	TaskPlayAnim(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0, -8.0, -1, 35, 0, 0, 0, 0)
	Citizen.Wait(200)

	exports['ttyy_nuipack']:DoHudText('inform', 'Kamu mulai mendorong mobil,tekan W untuk maju dan A/D untuk berbelok dan X untuk berhenti dorong', 10000)
	while true do
		Citizen.Wait(5)
		if IsDisabledControlPressed(0, Keys["A"]) then
			TaskVehicleTempAction(cache.ped, closestVehicle, 11, 1000)
		end
		if IsDisabledControlPressed(0, Keys["D"]) then
			TaskVehicleTempAction(cache.ped, closestVehicle, 10, 1000)
		end
		if IsControlPressed(0, 71) then
			SetVehicleForwardSpeed(closestVehicle, -1.0)
		end
		if HasEntityCollidedWithAnything(closestVehicle) then
			--SetVehicleOnGroundProperly(closestVehicle)
			exports['ttyy_nuipack']:DoHudText('error', 'Kamu tidak bisa mendorong mobil yang terbalik!')
			DetachEntity(ped, false, false)
			StopAnimTask(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0)
			FreezeEntityPosition(ped, false)
			break
		end
		if IsControlPressed(0, 105) then
			exports['ttyy_nuipack']:DoHudText('error', 'Kamu berhenti mendorong mobil')
			DetachEntity(ped, false, false)
			StopAnimTask(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0)
			FreezeEntityPosition(ped, false)
			break
		end
	end
end)

RegisterNetEvent('ttyy:dorongmobilbelakang')
AddEventHandler('ttyy:dorongmobilbelakang', function(data)
	local ped = cache.ped
	local coords = GetEntityCoords(ped)
    local closestVehicle = data.entity
    local dimension = GetModelDimensions(GetEntityModel(closestVehicle), First, Second)

	NetworkRequestControlOfEntity(closestVehicle)
	AttachEntityToEntity(cache.ped, closestVehicle, GetPedBoneIndex(6286), 0.0, dimension.y - 0.3, dimension.z  + 1.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, true)
	ESX.Streaming.RequestAnimDict('missfinale_c2ig_11')
	TaskPlayAnim(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0, -8.0, -1, 35, 0, 0, 0, 0)
	Citizen.Wait(200)
	
	exports['ttyy_nuipack']:DoHudText('inform', 'Kamu mulai mendorong mobil,tekan W untuk maju dan A/D untuk berbelok dan X untuk berhenti dorong', 10000)
	while true do
		Citizen.Wait(5)
		if IsDisabledControlPressed(0, Keys["A"]) then
			TaskVehicleTempAction(cache.ped, closestVehicle, 11, 1000)
		end
		if IsDisabledControlPressed(0, Keys["D"]) then
			TaskVehicleTempAction(cache.ped, closestVehicle, 10, 1000)
		end
		if IsControlPressed(0, 71) then
			SetVehicleForwardSpeed(closestVehicle, 1.0)
		end
		if HasEntityCollidedWithAnything(closestVehicle) then
			--SetVehicleOnGroundProperly(closestVehicle)
			exports['ttyy_nuipack']:DoHudText('error', 'Kamu tidak bisa mendorong mobil yang terbalik!')
			DetachEntity(ped, false, false)
			StopAnimTask(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0)
			FreezeEntityPosition(ped, false)
			break
		end
		if IsControlPressed(0, 105) then
			exports['ttyy_nuipack']:DoHudText('error', 'Kamu berhenti mendorong mobil')
			DetachEntity(ped, false, false)
			StopAnimTask(ped, 'missfinale_c2ig_11', 'pushcar_offcliff_m', 2.0)
			FreezeEntityPosition(ped, false)
			break
		end
	end
end)

RegisterNetEvent('ttyy-item:bulletproof')
AddEventHandler('ttyy-item:bulletproof', function()
	local playerPed = cache.ped
	exports['ttyy_robbery']:Progress({
        name = 'heavy',
        duration = 7500,
        label = 'MEMAKAI VEST BAJA',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missmic4",
            anim = "michael_tux_fidget",
            flags = 49,
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            AddArmourToPed(playerPed, 100)
            SetPedArmour(playerPed, 100)
        end
    end)
end)

function TtyyKembalikkanMobil(entity)
    local  coords = GetEntityCoords(entity)
    local heading = GetEntityHeading(entity)
    TriggerEvent("ttyy_robbery:client:progress", {
        name = "flipcar",
        duration = 10000,
        label = "Turning the car right side up",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "mini@repair",
            anim = "fixing_a_ped",
        },
        prop = {
        }
    }, function(status)
        if not status then
            SetEntityCoords(entity, coords, false, false, false, true)
            SetEntityHeading(entity, heading)
            SetVehicleOnGroundProperly(entity)
            ClearPedTasksImmediately(cache.ped)
            
        end
    end)
end