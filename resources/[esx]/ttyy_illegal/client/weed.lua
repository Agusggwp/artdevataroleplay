-- HARVEST
local spawnedWeeds = 0
local weedPlants = {}
isPickingUp = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(15000)
		local coords = GetEntityCoords(PlayerPedId())

		if #(coords - Config.Location.WeedField.coords) < 100 then
			SpawnweedPlants()
		end
	end
end)

if Config.qtarget then 
    Citizen.CreateThread(function()
        exports['qtarget']:AddTargetModel({'bkr_prop_weed_med_01a'}, {
            options = {
                {
                    eventside = 'client',
                    event = "bluecity_drugs:nyabutganja",
                    icon = "fas fa-sign-in-alt",
                    label = "Ganja Mentah",
                },
            },
            distance = 2.5,
        })
    end)

    AddEventHandler('bluecity_drugs:nyabutganja', function()
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local nearbyObject, nearbyID
    
        for i=1, #weedPlants, 1 do
            if #(coords - GetEntityCoords(weedPlants[i])) < 3.0 then
                nearbyObject, nearbyID = weedPlants[i], i
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
                            table.remove(weedPlants, nearbyID)
                            spawnedWeeds = spawnedWeeds - 1
                            TriggerServerEvent('bluecity_drugs:pickedUp', 'weed_leaf', 'weed')
                        end
                        ClearPedTasks(PlayerPedId())
                        isPickingUp = false
                        LocalPlayer.state.pickedUp = 'false'
                    else
                        isPickingUp = false
                        LocalPlayer.state.pickedUp = 'false'
                    end
                end, 'weed')
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
        
            for i=1, #weedPlants, 1 do
                if #(coords - GetEntityCoords(weedPlants[i])) < 3.0 then
                    nearbyObject, nearbyID = weedPlants[i], i
                end
            end
        
            if nearbyObject and IsPedOnFoot(playerPed) then
                letSleep = 0
                if not isPickingUp then
                    ESX.ShowHelpNotification('[E] Menyabut daun ganja')
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
                                table.remove(weedPlants, nearbyID)
                                spawnedWeeds = spawnedWeeds - 1
                                TriggerServerEvent('bluecity_drugs:pickedUp', 'weed_leaf', 'weed')
                            end
                            ClearPedTasks(PlayerPedId())
                            isPickingUp = false
                            LocalPlayer.state.pickedUp = 'false'
                        else
                            isPickingUp = false
                            LocalPlayer.state.pickedUp = 'false'
                        end
                    end, 'weed')
                end
            end

            Citizen.Wait(letSleep)
        end
    end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(weedPlants) do
			ESX.Game.DeleteObject(v)
		end
	end
end)

function SpawnweedPlants()
	while spawnedWeeds < 25 do
		Citizen.Wait(0)
		local weedCoords = GenerateWeedCoords()

		if weedCoords ~= nil then
			ESX.Game.SpawnLocalObject('bkr_prop_weed_med_01a', weedCoords, function(obj)
				PlaceObjectOnGroundProperly(obj)
				FreezeEntityPosition(obj, true)
				table.insert(weedPlants, obj)
				spawnedWeeds = spawnedWeeds + 1
			end)
		end
	end
end

function ValidateWeedCoord(plantCoord)
	if spawnedWeeds > 0 then
		local validate = true

		for k, v in pairs(weedPlants) do
			if #(plantCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end

		if #(plantCoord - Config.Location.WeedField.coords) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end

function GenerateWeedCoords()
	while true do
		Citizen.Wait(1)
		local weedCoordX, weedCoordY
		math.randomseed(GetGameTimer())
		local modX = math.random(-15, 15)
		Citizen.Wait(100)
		math.randomseed(GetGameTimer())
		local modY = math.random(-15, 15)
		weedCoordX = Config.Location.WeedField.coords.x + modX
		weedCoordY = Config.Location.WeedField.coords.y + modY
		local coordZ = GetCoordZWeed(weedCoordX, weedCoordY)
		local coord = vector3(weedCoordX, weedCoordY, coordZ)
		Citizen.Wait(1000)

		if ValidateWeedCoord(coord) then
			return coord
		end
	end
end

function GetCoordZWeed(x, y)
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
    for k,v in pairs(Config.Location['Weed']) do
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

--[[
AddEventHandler('bluecity_drugs:TakeWeed', function()
    if #ESX.GetExtendedPlayers('job', 'police') < Config.MinJob['Weed'].police and #ESX.GetExtendedPlayers('job', 'ambulance') < Config.MinJob['Weed'].ambulance then
        ESX.ShowNotification({type = 'error', text = 'Tindakan tidak dapat dilakukan! Kekurangan jumlah polisi/paramedis yang aktif'})
        return
    end

    if onhand == false then
        exports['bluecity_base']:Progress({
            name = "TakeWeed",
            duration = 3000, -- YOU CAN CHANGE THE TIME YOU WANT TO THEY TAKE TO STEAL
            label = 'MEMANEN CANNABIS',
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = 'creatures@rottweiler@tricks@',
                anim = 'petting_franklin',
                flags = 1,
            }
        }, function(cancelled)
            if not cancelled then
                onhand = true
                ESX.ShowNotification({type = 'normal', text = 'Tahap selanjutnya: Mengeringkan cannabis!'})
            end
            ClearPedTasks(PlayerPedId())
        end)
    else
        ESX.ShowNotification({type = 'error', text = 'Anda telah memiliki cannabis basah ditangan!'})
    end
end)
--]]

AddEventHandler('bluecity_drugs:ProccessWeed', function()

    local inventory = exports.ox_inventory:Search('count', {'weed_leaf'})
    if inventory > 3 then
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
            TriggerServerEvent('bluecity_drugs:AddWeed', 'raw')
        end
        ClearPedTasks(PlayerPedId())
    else
        ESX.ShowNotification('Anda tidak memiliki daun ganja untuk dikeringkan', 'error')
    end
end)

AddEventHandler('bluecity_drugs:PackagingWeed', function()
    local inventory = exports.ox_inventory:Search('count', {'weed_dry'})
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
            TriggerServerEvent('bluecity_drugs:AddWeed', 'process')
        end
        ClearPedTasks(PlayerPedId())
    else
        ESX.ShowNotification('Anda tidak memiliki daun ganja kering untuk dikemas', 'error')
    end
end)