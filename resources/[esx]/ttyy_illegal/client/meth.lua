-- HARVEST
local spawnedMeths = 0
local methPlants = {}
isPickingUp = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(15000)
		local coords = GetEntityCoords(PlayerPedId())

		if #(coords - Config.Location.MethField.coords) < 100 then
			SpawnMethPlants()
		end
	end
end)

if Config.qtarget then 
    Citizen.CreateThread(function()
        exports['qtarget']:AddTargetModel({'bkr_prop_meth_acetone'}, {
            options = {
                {
                    eventside = 'client',
                    event = "bluecity_drugs:nyabut",
                    icon = "fas fa-sign-in-alt",
                    label = "Mengambil Bubuk Meth",
                },
            },
            distance = 2.5,
        })
    end)

    AddEventHandler('bluecity_drugs:nyabut', function()
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local nearbyObject, nearbyID
    
        for i=1, #methPlants, 1 do
            if #(coords - GetEntityCoords(methPlants[i])) < 3.0 then
                nearbyObject, nearbyID = methPlants[i], i
            end
        end
    
        if nearbyObject and IsPedOnFoot(playerPed) then
            print('1')
            if not isPickingUp then
                print('2')
                LocalPlayer.state.pickedUp = 'true'
                TriggerEvent('dp:CloseMenu')
                isPickingUp = true
                ESX.TriggerServerCallback('bluecity_illegal:canPickUp', function(canPickUp)
                    if canPickUp then
                        if lib.progressCircle({
                            duration = 3000,
                            position = 'middle',
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                move = true,
                            },
                            anim = {
                                dict = "random@domestic",
                                clip = "pickup_low",
                                flags = 49,
                            },
                            prop = {},                      
                        }) then 
                            ESX.Game.DeleteObject(nearbyObject)
                            table.remove(methPlants, nearbyID)
                            spawnedMeths = spawnedMeths - 1
                            TriggerServerEvent('bluecity_drugs:pickedUp', 'meth_powder', 'meth')
                        end
                            ClearPedTasks(PlayerPedId())
                            isPickingUp = false
                            LocalPlayer.state.pickedUp = 'false'
                        else
                            isPickingUp = false
                            LocalPlayer.state.pickedUp = 'false'
                        end
                end, 'meth')
            end
        end
    end)
end

if not Config.qtarget then
    Citizen.CreateThread(function()
        while true do
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local nearbyObject, nearbyID
            local letSleep = 1000
        
            for i=1, #methPlants, 1 do
                if #(coords - GetEntityCoords(methPlants[i])) < 3.0 then
                    nearbyObject, nearbyID = methPlants[i], i
                end
            end
        
            if nearbyObject and IsPedOnFoot(playerPed) then
                letSleep = 0
                if not isPickingUp then
                    ESX.ShowHelpNotification('[E] Mengambil Bubuk Meth')
                end
                if IsControlJustReleased(0, 38) and not isPickingUp then
                    LocalPlayer.state.pickedUp = 'true'
                    TriggerEvent('dp:CloseMenu')
                    isPickingUp = true
                    ESX.TriggerServerCallback('bluecity_illegal:canPickUp', function(canPickUp)
                        if canPickUp then
                            if lib.progressCircle({
                                duration = 3000,
                                position = 'middle',
                                useWhileDead = false,
                                canCancel = true,
                                disable = {
                                    move = true,
                                },
                                anim = {
                                    dict = "random@domestic",
                                    clip = "pickup_low",
                                    flags = 49,
                                },
                                prop = {},                      
                            }) then 
                                ESX.Game.DeleteObject(nearbyObject)
                                table.remove(methPlants, nearbyID)
                                spawnedMeths = spawnedMeths - 1
                                TriggerServerEvent('bluecity_drugs:pickedUp', 'meth_powder', 'meth')
                            end
                                ClearPedTasks(PlayerPedId())
                                isPickingUp = false
                                LocalPlayer.state.pickedUp = 'false'
                            else
                                isPickingUp = false
                                LocalPlayer.state.pickedUp = 'false'
                            end
                    end, 'meth')
                end
            end

            Citizen.Wait(letSleep)
        end
    end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(methPlants) do
			ESX.Game.DeleteObject(v)
		end
	end
end)

function SpawnMethPlants()
	while spawnedMeths < 25 do
		Citizen.Wait(0)
		local methCoords = GenerateMethCoords()

		if methCoords ~= nil then
			ESX.Game.SpawnLocalObject('bkr_prop_meth_acetone', methCoords, function(obj)
				PlaceObjectOnGroundProperly(obj)
				FreezeEntityPosition(obj, true)
				table.insert(methPlants, obj)
				spawnedMeths = spawnedMeths + 1
			end)
		end
	end
end

function ValidateMethCoord(plantCoord)
	if spawnedMeths > 0 then
		local validate = true

		for k, v in pairs(methPlants) do
			if #(plantCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end

		if #(plantCoord - Config.Location.MethField.coords) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end

function GenerateMethCoords()
	while true do
		Citizen.Wait(1)
		local methCoordX, methCoordY
		math.randomseed(GetGameTimer())
		local modX = math.random(-15, 15)
		Citizen.Wait(100)
		math.randomseed(GetGameTimer())
		local modY = math.random(-15, 15)
		methCoordX = Config.Location.MethField.coords.x + modX
		methCoordY = Config.Location.MethField.coords.y + modY
		local coordZ = GetCoordZMeth(methCoordX, methCoordY)
		local coord = vector3(methCoordX, methCoordY, coordZ)
		Citizen.Wait(1000)

		if ValidateMethCoord(coord) then
			return coord
		end
	end
end

function GetCoordZMeth(x, y)
	local groundCheckHeights = { 30.0, 31.0, 32.0, 33.0, 34.0, 35.0, 36.0, 37.0, 38.0, 39.0, 40.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 43.0
end


-- PROCCESS
Citizen.CreateThread(function()
    for k,v in pairs(Config.Location['Meth']) do
        local data = {
            name = k,
            heading = v.heading,
            debugPoly = false,
            minZ = v.minZ,
            maxZ = v.maxZ
        }
        exports['qtarget']:AddBoxZone(k, v.coords, v.width, v.height, data, {
            options = 
            {
                {
                    eventside = 'client',
                    event = v.event,
                    index = v.index,
                    icon = v.icon,
                    label = v.label,
                },
            },
            distance = 2.5
        })
    end
end)

local onhand = false
local process = false
local stop = false

AddEventHandler('bluecity_drugs:TakeMeth', function()
    if onhand == false and process == false then
        local inventory = exports.ox_inventory:Search('count', {'meth_powder'})

        if inventory >= 3 then
            if lib.progressCircle({
                duration = 3000,
                position = 'middle',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict  = 'creatures@rottweiler@tricks@',
                    clip  = 'petting_franklin',
                    flags = 1,
                },
                prop = {},                      
            }) then 
                onhand = true
                ESX.ShowNotification('Tahap selanjutnya: Memproses material!')
                ClearPedTasks(PlayerPedId())
            end
        else
            ESX.ShowNotification('Anda tidak memiliki bubuk meth untuk diproses', 'error')
        end
    else
        ESX.ShowNotification('Tindakan tidak dapat dilakukan! Sedang memegang material', 'error')
    end
end)

AddEventHandler('bluecity_drugs:ProccessMeth', function()
    if process == false and onhand == true then
        local inventory = exports.ox_inventory:Search('count', {'meth_powder'})
        if inventory >= 3 then
            stop = true
            ClearPedTasks(PlayerPedId())
        if lib.progressCircle({
            duration = 3000,
            position = 'middle',
            useWhileDead = false,
            canCancel = true,
            disable = {
                move = true,
            },
            anim = {
                dict  = 'timetable@gardener@filling_can',
                clip = 'gar_ig_5_filling_can',
                flags = 1,
            },
            prop = {},                      
        }) then 
            onhand = false
            process = false
            ExecuteCommand('e c')
            TriggerServerEvent('bluecity_drugs:AddMeth', 'raw')
        end
                ClearPedTasks(PlayerPedId())
                stop = false
        else
            ESX.ShowNotification('Anda tidak memiliki bubuk meth untuk diproses', 'error')
        end
    else
        ESX.ShowNotification('Anda tidak memiliki material ditangan!', 'error')
    end
end)

AddEventHandler('bluecity_drugs:StoreMeth', function()
       if process == false and onhand == false then
        local inventory = exports.ox_inventory:Search('count', {'meth_liquid'})

        if inventory > 0 then
            stop = true
            ClearPedTasks(PlayerPedId())
            if lib.progressCircle({
                duration = 3000,
                position = 'middle',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'timetable@gardener@filling_can',
                    clip = 'gar_ig_5_filling_can',
                    flags = 1,
                },
                prop = {},                      
            }) then 
                process = true
                onhand = true
            end
            ClearPedTasks(PlayerPedId())
            stop = false
            ESX.ShowNotification('Tahap selanjutnya: Mengemas meth!')
        else
            ESX.ShowNotification('Anda tidak memiliki meth untuk diproses', 'error')
        end
    else
        if onhand == false or process == false then
            ESX.ShowNotification('Anda tidak memiliki material ditangan!', 'error')
        end
    end
end)

AddEventHandler('bluecity_drugs:PackagingMeth', function()
    if onhand == false and process == false then
        local inventory = exports.ox_inventory:Search('count', {'meth_liquid'})
        if inventory > 0 then

            if lib.progressCircle({
                duration = 3000,
                position = 'middle',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    clip = 'machinic_loop_mechandplayer',
                    flags = 16,
                },
                prop = {},                      
            }) then 
                onhand = false
                process = false
                ExecuteCommand('e c')
                TriggerServerEvent('bluecity_drugs:AddMeth', 'process')
            end
                ClearPedTasks(PlayerPedId())
        else
            ESX.ShowNotification('Anda tidak memiliki cairan meth untuk dikemas', 'error')
        end
    else
        ESX.ShowNotification('Tindakan tidak dapat dilakukan! Sedang memegang material', 'error')
    end
end)

Citizen.CreateThread(function()
    while true do
        local letsleep = 1000

        if onhand and stop == false then
            letsleep = 0
            ESX.ShowHelpNotification('[E] Membuang material')
            if IsEntityPlayingAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 3) ~= 1 then
                ExecuteCommand('e box')
			end

            if IsControlJustReleased(0, 38) then
                process = false
                onhand = false
                ExecuteCommand('e c')
                ESX.ShowNotification('Anda telah membuang material!')
            end
        end

        Citizen.Wait(letsleep)
    end
end)