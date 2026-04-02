local sitting, lastPos, currentSitCoords, currentScenario = {}
local currentObj = nil
local hashedchair = {}

Citizen.CreateThread(function()
	for k,v in pairs(Config.Sitable) do
		hashedchair[GetHashKey(k)] = v
	end
	while true do
		Citizen.Wait(5000)
		local playerPed = PlayerPedId()

		if sitting and not IsPedUsingScenario(playerPed, currentScenario) then
			wakeup()
		end
	end
end)

AddEventHandler("essentials:sitchair", function(data)
    if sitting then
        wakeup()
    else
        if data then
			local rawObject = data.entity
			local coords = GetEntityCoords(PlayerPedId())
			local distance = #(coords - GetEntityCoords(rawObject))

			if distance < 2.0 then
				local hash = GetEntityModel(rawObject)

				if hashedchair[hash] then
					sit(rawObject, hashedchair[hash])
				end
			end
        end
    end
end)

function wakeup()
	local playerPed = PlayerPedId()
	local pos = GetEntityCoords(PlayerPedId())

	TaskStartScenarioAtPosition(playerPed, currentScenario, 0.0, 0.0, 0.0, 180.0, 2, true, false)
	while IsPedUsingScenario(PlayerPedId(), currentScenario) do
		Wait(100)
	end
	ClearPedTasks(playerPed)

	FreezeEntityPosition(playerPed, false)
	FreezeEntityPosition(currentObj, false)
    currentobject = nil

	currentSitCoords, currentScenario = nil, nil
	sitting = false
end

function sit(object, data)
	-- Fix for sit on chairs behind walls
	HasEntityClearLosToEntity(PlayerPedId(), object, 17)
	currentObj = object
	FreezeEntityPosition(object, true)

	PlaceObjectOnGroundProperly(object)
	local pos = GetEntityCoords(object)
	local playerPos = GetEntityCoords(PlayerPedId())
	local objectCoords = pos.x .. pos.y .. pos.z

	local playerPed = PlayerPedId()
	lastPos, currentSitCoords = GetEntityCoords(playerPed), objectCoords
	
	currentScenario = data.scenario
	TaskStartScenarioAtPosition(playerPed, currentScenario, pos.x, pos.y, pos.z + (playerPos.z - pos.z)/2, GetEntityHeading(object) + 180.0, 0, true, false)

	Citizen.Wait(2500)
	if GetEntitySpeed(PlayerPedId()) > 0 then
		ClearPedTasks(PlayerPedId())
		TaskStartScenarioAtPosition(playerPed, currentScenario, pos.x, pos.y, pos.z + (playerPos.z - pos.z)/2, GetEntityHeading(object) + 180.0, 0, true, true)
	end

	sitting = true
end

AddEventHandler('essentials:sleepbed', function(data)
	local playerPed = PlayerPedId()
	local playerPos = GetEntityCoords(playerPed, true)
	local bed = data.entity

	if bed ~= nil and DoesEntityExist(bed) then
		local bedCoords = GetEntityCoords(bed)

		RequestAnimDict('missfbi1')
		if not HasAnimDictLoaded('missfbi1') then
			Citizen.Wait(0)
		end

		SetEntityCoords(playerPed, bedCoords.x , bedCoords.y, bedCoords.z, 1, 1, 0, 0)
		SetEntityHeading(playerPed, GetEntityHeading(bed) + 180.0)
		TaskPlayAnim(playerPed,'missfbi1', 'cpr_pumpchest_idle', 8.0, 1.0, -1, 1, 1.0, 0, 0, 0)
	end
end)