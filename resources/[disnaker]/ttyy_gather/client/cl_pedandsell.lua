function FirstLoadup()
    CreateTargets() 
end

local spawnedPeds = {}

CreateThread(function()
	while true do
		Wait(500)
		for k,v in pairs(Config.PedList) do
			local playerCoords = GetEntityCoords(PlayerPedId())
			local distance = #(playerCoords - v.coords.xyz)
			if distance < Config.DistanceSpawn and not spawnedPeds[k] then
				local spawnedPed = NearPed(v.model, v.coords, v.gender, v.animDict, v.animName, v.scenario)
				spawnedPeds[k] = { spawnedPed = spawnedPed }
			end
			if distance >= Config.DistanceSpawn and spawnedPeds[k] then
				if Config.FadeIn then
					for i = 255, 0, -51 do
						Wait(50)
						SetEntityAlpha(spawnedPeds[k].spawnedPed, i, false)
					end
				end
				DeletePed(spawnedPeds[k].spawnedPed)
				spawnedPeds[k] = nil
			end
		end
	end
end)

function NearPed(model, coords, gender, animDict, animName, scenario)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(50)
	end
	if Config.MinusOne then
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z - 1.0, coords.w, false, true)
	else
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z, coords.w, false, true)
	end
	SetEntityAlpha(spawnedPed, 0, false)
	if Config.Frozen then
		FreezeEntityPosition(spawnedPed, true)
	end
	if Config.Invincible then
		SetEntityInvincible(spawnedPed, true)
	end
	if Config.Stoic then
		SetBlockingOfNonTemporaryEvents(spawnedPed, true)
	end
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(50)
		end
		TaskPlayAnim(spawnedPed, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
    if scenario then
        TaskStartScenarioInPlace(spawnedPed, scenario, 0, true)
    end
	if Config.FadeIn then
		for i = 0, 255, 51 do
			Wait(50)
			SetEntityAlpha(spawnedPed, i, false)
		end
	end
	return spawnedPed
end

function CreateTargets()
    for k, v in pairs(Config.Locations) do
        local options = {}

        if (v.event == nil) then
            for l, z in pairs(v.sellableitems) do
                table.insert(options, 
                    {
                        event = "ttyy_sales:Client",
                        icon = z.icon,
                        label = 'Sell ' .. z.label .. ' $' ..z.costeach,
                        location = k,
                        item = l,
                    }
                )
            end
        else
            for l, z in pairs(v.sellableitems) do
                table.insert(options, 
                    {
                        event = v.event,
                        icon = z.icon,
                        label = z.label,
                        item = l,
                    }
                )
            end
        end
        exports['qtarget']:AddBoxZone(k .. '-npcsales', v.location, 0.6, 0.6, {
            name=v.blip.label,
            heading=v.heading,
            debugPoly=false,
            minZ=v.zcoords[1],
            maxZ=v.zcoords[2],
            }, {
                options = options,
                distance = 2.0
            }
        )
    end
end

RegisterNetEvent('ttyy_sales:Client')
AddEventHandler('ttyy_sales:Client', function(data)
    TriggerServerEvent('ttyy_sales:Server', data.item, data.location)
end)

RegisterNetEvent('ttyy_sales:Process')
AddEventHandler('ttyy_sales:Process', function(item, npcLoc)
    if (spawnedPed == nil) then return end
    local playerPed = ESX.PlayerData.ped
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(spawnedPed)
    local dist = #(playerCoords - pedCoords)
    if (dist < 3.0) then
        local dialog = exports.ox_inventory:Keyboard('How many to sell?', {'Quantity'})

        if dialog  then
            local quantity = tonumber(dialog[1])

            TaskStartScenarioInPlace(spawnedPed, 'WORLD_HUMAN_DRUG_DEALER_HARD', 0, true)
            FreezeEntityPosition(spawnedPed, false)
            
            TaskTurnPedToFaceEntity(spawnedPed, playerPed, 4000)
            TaskTurnPedToFaceEntity(playerPed, spawnedPed, 4000)
            exports['ttyy_smallsource']:playAnim(playerPed, 'missfbi1ig_1_alt_1', 'conversation1_peda', -1)
            exports.ox_inventory:Progress({
                duration = 10000,
                label = 'Discussing sale',
                useWhileDead = false,
                canCancel = false,
                disable = {
                     move = true,
                     car = true,
                     combat = true,
                },
            }, function(cancel)
                if not cancel then
                    TaskTurnPedToFaceEntity(spawnedPed, playerPed, 2000)
                    TaskTurnPedToFaceEntity(playerPed, spawnedPed, 2000)
                    exports['ttyy_smallsource']:playAnim(spawnedPed, 'mp_common', 'givetake1_a', -1)
                    exports['ttyy_smallsource']:playAnim(playerPed, 'mp_common', 'givetake1_a', -1)
                    Wait(2000)
        
                    ClearPedTasks(playerPed)
                    ClearPedTasks(spawnedPed)
        
                    TriggerServerEvent('ttyy_sales:Complete', item, npcLoc, quantity)
                end
            end)
        end
    else
        ESX.ShowNotification('You need to be closer.', 'error')
    end
end)

--[[--------------------------------------------------
Setup
--]]--------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)
	if (resourceName == GetCurrentResourceName() and Config.Debug) then
        while (ESX == nil) do Citizen.Wait(100) end        
        Citizen.Wait(5000)
        ESX.PlayerLoaded = true
        FirstLoadup()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    while (ESX == nil) do Citizen.Wait(100) end    
    Citizen.Wait(5000)
    ESX.PlayerData = xPlayer
 	ESX.PlayerLoaded = true
     FirstLoadup()
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)