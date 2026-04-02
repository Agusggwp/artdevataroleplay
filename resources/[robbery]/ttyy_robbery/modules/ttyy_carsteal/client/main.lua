ESX = nil
local PlayerData              	= {}
local currentZone               = ''
local LastZone                  = ''
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}

local alldeliveries             = {}
local randomdelivery            = 1
local isTaken                   = 0
local isDelivered               = 0
local car						= 0
local copblip
local deliveryblip


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

--Add all deliveries to the table
Citizen.CreateThread(function()
	local deliveryids = 1
	for k,v in pairs(CarSteal.Delivery) do
		table.insert(alldeliveries, {
				id = deliveryids,
				posx = v.Pos.x,
				posy = v.Pos.y,
				posz = v.Pos.z,
				payment = v.Payment,
				car = v.Cars,
		})
		deliveryids = deliveryids + 1  
	end
end)


Citizen.CreateThread(function()
	for k,v in pairs(CarSteal.Zones1) do
		RequestModel(GetHashKey('a_m_y_salton_01'))
		while not HasModelLoaded(GetHashKey('a_m_y_salton_01')) do
			Wait(5)
		end
		local ped  = CreatePed(19, GetHashKey('a_m_y_salton_01'), v.Pos.x, v.Pos.y, v.Pos.z - 1.2, 265.0, false, false)
		SetEntityInvincible(ped, true)
		SetEntityAsMissionEntity(ped, true, true)
		SetPedHearingRange(ped, 0.0)
		SetPedSeeingRange(ped, 0.0)
		SetPedAlertness(ped, 0.0)
		SetPedFleeAttributes(ped, 0, 0)
		SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedCombatAttributes(ped, 46, true)
		SetPedFleeAttributes(ped, 0, 0)
		SetModelAsNoLongerNeeded(ped)
		DecorSetInt(ped,"GamemodeCar",955)
		Citizen.Wait(1000)
		FreezeEntityPosition(ped , true)
		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING", 0, true)

		exports['qtarget']:AddBoxZone("carthief1", vector3(v.Pos.x, v.Pos.y, v.Pos.z), 1.5, 1.5 ,{
			name="carthief1",
			heading=265.0,
			debugPoly=false,
			minZ=v.Pos.z-1.2,
			maxZ=v.Pos.z+1.2
		}, {
			options = {
				{
					event = "car:steal",
					icon = "fas fa-car-crash",
					label = "Car Stealing",
					zone = 1,
				}
			},
			job = {"all"},
			distance = 3.0
		})
	end
	for k,v in pairs(CarSteal.Zones2) do
		RequestModel(GetHashKey('a_m_y_salton_01'))
		while not HasModelLoaded(GetHashKey('a_m_y_salton_01')) do
			Wait(5)
		end
		local ped  = CreatePed(19, GetHashKey('a_m_y_salton_01'), v.Pos.x, v.Pos.y, v.Pos.z - 1.2, 265.0, false, false)
		SetEntityInvincible(ped, true)
		SetEntityAsMissionEntity(ped, true, true)
		SetPedHearingRange(ped, 0.0)
		SetPedSeeingRange(ped, 0.0)
		SetPedAlertness(ped, 0.0)
		SetPedFleeAttributes(ped, 0, 0)
		SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedCombatAttributes(ped, 46, true)
		SetPedFleeAttributes(ped, 0, 0)
		SetModelAsNoLongerNeeded(ped)
		DecorSetInt(ped,"GamemodeCar",955)
		Citizen.Wait(1000)
		FreezeEntityPosition(ped , true)
		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING", 0, true)

		exports['qtarget']:AddBoxZone("carthief2", vector3(v.Pos.x, v.Pos.y, v.Pos.z), 1.5, 1.5 ,{
			name="carthief2",
			heading=265.0,
			debugPoly=false,
			minZ=v.Pos.z-1.2,
			maxZ=v.Pos.z+1.2
		}, {
			options = {
				{
					event = "car:steal",
					icon = "fas fa-car-crash",
					label = "Car Stealing",
					zone = 2,
				}
			},
			job = {"all"},
			distance = 3.0
		})
	end
	for k,v in pairs(CarSteal.Zones3) do
		RequestModel(GetHashKey('a_m_y_salton_01'))
		while not HasModelLoaded(GetHashKey('a_m_y_salton_01')) do
			Wait(5)
		end
		local ped  = CreatePed(19, GetHashKey('a_m_y_salton_01'), v.Pos.x, v.Pos.y, v.Pos.z - 1.2, 265.0, false, false)
		SetEntityInvincible(ped, true)
		SetEntityAsMissionEntity(ped, true, true)
		SetPedHearingRange(ped, 0.0)
		SetPedSeeingRange(ped, 0.0)
		SetPedAlertness(ped, 0.0)
		SetPedFleeAttributes(ped, 0, 0)
		SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedCombatAttributes(ped, 46, true)
		SetPedFleeAttributes(ped, 0, 0)
		SetModelAsNoLongerNeeded(ped)
		DecorSetInt(ped,"GamemodeCar",955)
		Citizen.Wait(1000)
		FreezeEntityPosition(ped , true)
		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING", 0, true)

		exports['qtarget']:AddBoxZone("carthief3", vector3(v.Pos.x, v.Pos.y, v.Pos.z), 1.5, 1.5 ,{
			name="carthief3",
			heading=265.0,
			debugPoly=false,
			minZ=v.Pos.z-1.2,
			maxZ=v.Pos.z+1.2
		}, {
			options = {
				{
					event = "car:steal",
					icon = "fas fa-car-crash",
					label = "Car Stealing",
					zone = 3,
				}
			},
			job = {"all"},
			distance = 3.0
		})
	end
	for k,v in pairs(CarSteal.Zones4) do
		RequestModel(GetHashKey('a_m_y_salton_01'))
		while not HasModelLoaded(GetHashKey('a_m_y_salton_01')) do
			Wait(5)
		end
		local ped  = CreatePed(19, GetHashKey('a_m_y_salton_01'), v.Pos.x, v.Pos.y, v.Pos.z - 1.2, 265.0, false, false)
		SetEntityInvincible(ped, true)
		SetEntityAsMissionEntity(ped, true, true)
		SetPedHearingRange(ped, 0.0)
		SetPedSeeingRange(ped, 0.0)
		SetPedAlertness(ped, 0.0)
		SetPedFleeAttributes(ped, 0, 0)
		SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedCombatAttributes(ped, 46, true)
		SetPedFleeAttributes(ped, 0, 0)
		SetModelAsNoLongerNeeded(ped)
		DecorSetInt(ped,"GamemodeCar",955)
		Citizen.Wait(1000)
		FreezeEntityPosition(ped , true)
		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING", 0, true)

		exports['qtarget']:AddBoxZone("carthief4", vector3(v.Pos.x=760.4389, v.Pos.y=-3197.3303, v=6.0731.Pos.z=155.9334), 1.5, 1.5 ,{
			name="carthief4",
			heading=265.0,
			debugPoly=false,
			minZ=v.Pos.z-1.2,
			maxZ=v.Pos.z+1.2
		}, {
			options = {
				{
					event = "car:steal",
					icon = "fas fa-car-crash",
					label = "Car Stealing",
					zone = 4,
				}
			},
			job = {"all"},
			distance = 3.0
		})
	end
end)


RegisterNetEvent('car:steal')
AddEventHandler('car:steal', function(data)
	if data.zone == 1 then
		SpawnCar(1)
	elseif data.zone == 2 then
		SpawnCar(2)
	elseif data.zone == 3 then
		SpawnCar(3)
	elseif data.zone == 4 then
		SpawnCar(4)
	end
end)


function SetHandling(Vehicle, Data, Value)
    for theKey,property in pairs(CarSteal.handlingData) do
        if property == Data then
            local intfind = string.find(property, "n" )
            local floatfind = string.find(property, "f" )
            local strfind = string.find(property, "str" )
            local vecfind = string.find(property, "vec" )
            if intfind ~= nil and intfind == 1 then
                SetVehicleHandlingInt( Vehicle, "CHandlingData", Data, tonumber(Value) )
            elseif floatfind ~= nil and floatfind == 1 then
                local Value = tonumber(Value)+.0
                SetVehicleHandlingFloat( Vehicle, "CHandlingData", Data, tonumber(Value) )
            elseif strfind ~= nil and strfind == 1 then
                SetVehicleHandlingField( Vehicle, "CHandlingData", Data, Value )
            elseif vecfind ~= nil and vecfind == 1 then
                SetVehicleHandlingVector( Vehicle, "CHandlingData", Data, Value )
            else
                SetVehicleHandlingField( Vehicle, "CHandlingData", Data, Value )
            end
        end
    end
end

function setModeBalap(vehicle)
    for index, value in ipairs(CarSteal.handleMods) do
        SetHandling(vehicle, value[1], value[2])
    end
    SetHandling(vehicle, "vecCentreOfMassOffset" , CarSteal.Vec1 )
    SetHandling(vehicle, "vecInertiaMultiplier" , CarSteal.Vec2 )
    SetVehicleEnginePowerMultiplier(vehicle, 0.0)
end



function SpawnCar(zones)
	ESX.TriggerServerCallback('ttyycarthief:isActive', function(isActive, cooldown)
		if cooldown <= 0 then
			if isActive == 0 then
				ESX.TriggerServerCallback('ttyycarthief:anycops', function(anycops)
					if anycops >= CarSteal.CopsRequired then
								randomdelivery = math.random(1,#alldeliveries)
								
								--Delete vehicles around the area (not sure if it works)
								if zones == 1 then
									ClearAreaOfVehicles(CarSteal.VehicleSpawnPoint1.Pos.x, CarSteal.VehicleSpawnPoint1.Pos.y, CarSteal.VehicleSpawnPoint1.Pos.z, 10.0, false, false, false, false, false)
								elseif zones == 2 then
									ClearAreaOfVehicles(CarSteal.VehicleSpawnPoint2.Pos.x, CarSteal.VehicleSpawnPoint2.Pos.y, CarSteal.VehicleSpawnPoint2.Pos.z, 10.0, false, false, false, false, false)
								elseif zones == 3 then
									ClearAreaOfVehicles(CarSteal.VehicleSpawnPoint3.Pos.x, CarSteal.VehicleSpawnPoint3.Pos.y, CarSteal.VehicleSpawnPoint3.Pos.z, 10.0, false, false, false, false, false)
								elseif zones == 4 then
									ClearAreaOfVehicles(CarSteal.VehicleSpawnPoint4.Pos.x, CarSteal.VehicleSpawnPoint4.Pos.y, CarSteal.VehicleSpawnPoint4.Pos.z, 10.0, false, false, false, false, false)
								end
								
								--Delete old vehicle and remove the old blip (or nothing if there's no old delivery)
								SetEntityAsNoLongerNeeded(car)
								DeleteVehicle(car)
								RemoveBlip(deliveryblip)
								

								--Get random car
								randomcar = math.random(1,#alldeliveries[randomdelivery].car)

								--Spawn Car
								local vehiclehash = GetHashKey(alldeliveries[randomdelivery].car[randomcar])
								RequestModel(vehiclehash)
								while not HasModelLoaded(vehiclehash) do
									RequestModel(vehiclehash)
									Citizen.Wait(1)
								end
								if zones == 1 then
									car = CreateVehicle(vehiclehash, CarSteal.VehicleSpawnPoint1.Pos.x, CarSteal.VehicleSpawnPoint1.Pos.y, CarSteal.VehicleSpawnPoint1.Pos.z, 0.0, true, false)
								elseif zones == 2 then
									car = CreateVehicle(vehiclehash, CarSteal.VehicleSpawnPoint2.Pos.x, CarSteal.VehicleSpawnPoint2.Pos.y, CarSteal.VehicleSpawnPoint2.Pos.z, 0.0, true, false)
								elseif zones == 3 then
									car = CreateVehicle(vehiclehash, CarSteal.VehicleSpawnPoint3.Pos.x, CarSteal.VehicleSpawnPoint3.Pos.y, CarSteal.VehicleSpawnPoint3.Pos.z, 0.0, true, false)
								elseif zones == 4 then
									car = CreateVehicle(vehiclehash, CarSteal.VehicleSpawnPoint4.Pos.x, CarSteal.VehicleSpawnPoint4.Pos.y, CarSteal.VehicleSpawnPoint4.Pos.z, 0.0, true, false)
								end
								SetEntityAsMissionEntity(car, true, true)
								-- todo : custom plat number by eternity
								SetVehicleNumberPlateText(car, "CARSTEAL")
								-- todo : custom handling from eternity
								setModeBalap(car)
								--Teleport player in car
								TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
								
								--Set delivery blip
								deliveryblip = AddBlipForCoord(alldeliveries[randomdelivery].posx, alldeliveries[randomdelivery].posy, alldeliveries[randomdelivery].posz)
								SetBlipSprite(deliveryblip, 1)
								SetBlipDisplay(deliveryblip, 4)
								SetBlipScale(deliveryblip, 1.0)
								SetBlipColour(deliveryblip, 5)
								SetBlipAsShortRange(deliveryblip, true)
								BeginTextCommandSetBlipName("STRING")
								AddTextComponentString("Delivery point")
								EndTextCommandSetBlipName(deliveryblip)
								
								SetBlipRoute(deliveryblip, true)

								--Register acitivity for server
								local coords = vector3(-1, -1, -1)
								local data = {displayCode = '211', description = 'Carstealing On Progress', priority = 'high', isImportant = 1, recipientList = {'police'}, length = '10000', infoM = 'fa-info-circle', info = 'Check radar for information'}
								local dispatchData = {dispatchData = data, caller = 'Alarm', coords = coords}
								TriggerServerEvent('wf-alerts:svNotify', dispatchData)
								
								--For delivery blip
								isTaken = 1
								
								--For delivery blip
								isDelivered = 0
					else
						ESX.ShowNotification('Polisi Dikota Tidak Cukup')
					end
				end)
			else
				ESX.ShowNotification('There is already a car robbery in progress!')
			end
		else
			ESX.ShowNotification('A vehicle robbery was recently completed. Wait '..math.ceil(cooldown/1000)..' seconds to steal another one')
		end
	end)
end

function FinishDelivery()
  if(GetVehiclePedIsIn(PlayerPedId(), false) == car) and GetEntitySpeed(car) < 3 then
		
		--Delete Car
		SetEntityAsNoLongerNeeded(car)
		DeleteEntity(car)
		
    --Remove delivery zone
    RemoveBlip(deliveryblip)

    --Pay the poor fella
	local finalpayment = alldeliveries[randomdelivery].payment
	TriggerServerEvent('ttyycarthief:pay', finalpayment)
	--Register Activity
	TriggerServerEvent('ttyycarthief:registerActivity', 0)

    --For delivery blip
    isTaken = 0

    --For delivery blip
    isDelivered = 1
		
		--Remove Last Cop Blips
    TriggerServerEvent('ttyycarthief:stopalertcops')
		
  else
		TriggerEvent('esx:showNotification', ('You have to use the car that was provided for you and you must come to a full stop'))
  end
end





Citizen.CreateThread(function()
	local deliveryids = 1
	for k,v in pairs(CarSteal.Delivery) do
		table.insert(alldeliveries, {
			id = deliveryids,
			posx = v.Pos.x,
			posy = v.Pos.y,
			posz = v.Pos.z,
			payment = v.Payment,
			car = v.Cars,
		})
		deliveryids = deliveryids + 1
	end
	-- TODO : CREATING BOX DELIVERY POINT
	for k , v in pairs(alldeliveries) do
		exports["ttyy_robbery"]:AddBoxZone("thiefdeliverypoint"..v.id, vector3(v.posx, v.posy, v.posz), 6.5, 6.5, {
			name="thiefdeliverypoint"..v.id,
			heading=169.5,
			debugPoly=false,
			minZ=v.posz-1.2,
			maxZ=v.posz+1.8
		})
	end
	RegisterNetEvent('ttyy_robbery:enter')
	AddEventHandler('ttyy_robbery:enter', function(name)
		for k , v in pairs(alldeliveries) do
			if "thiefdeliverypoint"..v.id == name then
				if isTaken == 1 then
					FinishDelivery()
					exports['ttyy_nuipack']:Open('Jangan Bergerak', 'darkblue', 'right')
				end
			end
		end
	end)
	RegisterNetEvent('ttyy_robbery:exit')
	AddEventHandler('ttyy_robbery:exit', function(name)
		for k , v in pairs(alldeliveries) do
			if "thiefdeliverypoint"..v.id == name then
				exports['ttyy_nuipack']:Close()
			end
		end
	end)
end)

function AbortDelivery()
	--Delete Car
	SetEntityAsNoLongerNeeded(car)
	DeleteEntity(car)

	--Remove delivery zone
	RemoveBlip(deliveryblip)

	--Register Activity
	TriggerServerEvent('ttyycarthief:registerActivity', 0)

	--For delivery blip
	isTaken = 0

	--For delivery blip
	isDelivered = 1

	--Remove Last Cop Blips
	TriggerServerEvent('ttyycarthief:stopalertcops')
end

--Check if player left car
Citizen.CreateThread(function()
  while true do
    Wait(1000)
		if isTaken == 1 and isDelivered == 0 and not (GetVehiclePedIsIn(PlayerPedId(), false) == car) then
			TriggerEvent('esx:showNotification', ('You have 3 minute to get back in the car'))
			Wait(50000)
			if isTaken == 1 and isDelivered == 0 and not (GetVehiclePedIsIn(PlayerPedId(), false) == car) then
				TriggerEvent('esx:showNotification', ('You have 10 seconds to get back in the car'))
				Wait(10000)
				TriggerEvent('esx:showNotification', ('Mission Failed'))
				AbortDelivery()
			end
		end
	end
end)

-- Send location
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(CarSteal.BlipUpdateTime)
    if isTaken == 1 and IsPedInAnyVehicle(PlayerPedId()) then
			local coords = GetEntityCoords(PlayerPedId())
      TriggerServerEvent('ttyycarthief:alertcops', coords.x, coords.y, coords.z)
		elseif isTaken == 1 and not IsPedInAnyVehicle(PlayerPedId()) then
			TriggerServerEvent('ttyycarthief:stopalertcops')
    end
  end
end)

RegisterNetEvent('ttyycarthief:removecopblip')
AddEventHandler('ttyycarthief:removecopblip', function()
		RemoveBlip(copblip)
end)

RegisterNetEvent('ttyycarthief:setcopblip')
AddEventHandler('ttyycarthief:setcopblip', function(cx,cy,cz)
		RemoveBlip(copblip)
    copblip = AddBlipForCoord(cx,cy,cz)
    SetBlipSprite(copblip , 161)
    SetBlipScale(copblipy , 2.0)
		SetBlipColour(copblip, 8)
		PulseBlip(copblip)
end)

RegisterNetEvent('ttyycarthief:setcopnotification')
AddEventHandler('ttyycarthief:setcopnotification', function()
 -----
end)



-- Create Blips for Car Spawner
Citizen.CreateThread(function()
    info = CarSteal.Zones1.VehicleSpawner
    info.blip = AddBlipForCoord(info.Pos.x, info.Pos.y, info.Pos.z)
    SetBlipSprite(info.blip, info.Id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.Colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Vehicle Robbery!')
    EndTextCommandSetBlipName(info.blip)
end)

Citizen.CreateThread(function()
    info = CarSteal.Zones2.VehicleSpawner
    info.blip = AddBlipForCoord(info.Pos.x, info.Pos.y, info.Pos.z)
    SetBlipSprite(info.blip, info.Id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.Colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Vehicle Robbery!')
    EndTextCommandSetBlipName(info.blip)
end)

Citizen.CreateThread(function()
    info = CarSteal.Zones3.VehicleSpawner
    info.blip = AddBlipForCoord(info.Pos.x, info.Pos.y, info.Pos.z)
    SetBlipSprite(info.blip, info.Id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.Colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Vehicle Robbery!')
    EndTextCommandSetBlipName(info.blip)
end)

Citizen.CreateThread(function()
    info = CarSteal.Zones4.VehicleSpawner
    info.blip = AddBlipForCoord(info.Pos.x, info.Pos.y, info.Pos.z)
    SetBlipSprite(info.blip, info.Id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.Colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Vehicle Robbery!')
    EndTextCommandSetBlipName(info.blip)
end)