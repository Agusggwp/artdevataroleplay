local spawnedItems = {}
local itemZones = {}
function CreateMapBlips(zones)
    for k, v in pairs(zones) do
        if (v.blipInfo ~= nil) then
            local blip = AddBlipForCoord(v.coords)
	
            SetBlipSprite (blip, v.blipInfo.blipSprite)
            SetBlipDisplay(blip, 6)
            SetBlipScale  (blip, 0.8)
            SetBlipColour (blip, v.blipInfo.blipColour)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(v.blipInfo.label)
            EndTextCommandSetBlipName(blip)
        end
    end	
end

--[[--------------------------------------------------
Illegal Circle Zones
]]----------------------------------------------------
RegisterNetEvent('bixbi_gather:SetupTargetsClient')
AddEventHandler('bixbi_gather:SetupTargetsClient', function(zones)
    itemZones = zones
    CreateMapBlips(zones)
    CreateThread(function()
        for l, z in pairs(itemZones) do
            for k, v in ipairs(z.info) do
                exports['qtarget']:AddTargetModel({v.target}, {
                    options = {
                        {
                            event = "bixbi_gather:TriggerCollect",
                            icon = "fas fa-hand-sparkles",
                            label = "Collect " .. v.label,
                            location = l,
                            item = z.tool,
                        },
                    },
                    distance = 2.0
                })
            end
        end
    end)
end)

local collectionInProgress = false
-- RegisterNetEvent('bixbi_gather:TriggerCollect')
AddEventHandler('bixbi_gather:TriggerCollect', function(data)
    local source = GetPlayerServerId(PlayerId())
    local coords = GetEntityCoords(PlayerPedId())
    if (not collectionInProgress) then 
        TriggerServerEvent('bixbi_gather:Collect', coords, data.location) 
    else
        print('stop exploit gan')
    end
end)

function CreateProp(waitTime, ConfigItem)
    Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        local toolInfo = itemZones[ConfigItem].toolInfo

        local itemModel = GetHashKey(toolInfo.toolModel)
        local x,y,z = table.unpack(GetEntityCoords(playerPed))
        local boneIndex = GetPedBoneIndex(playerPed, 28422)
        prop = CreateObject(itemModel, x, y, z, true, true, true)
        AttachEntityToEntity(prop, playerPed, boneIndex, toolInfo.xPos, toolInfo.yPos, toolInfo.zPos, toolInfo.xRot, toolInfo.yRot, toolInfo.zRot, true, true, false, true, 1, true)

        Citizen.Wait(waitTime)
        DeleteObject(prop)
    end)
end

RegisterNetEvent('bixbi_gather:StartCollect')
AddEventHandler('bixbi_gather:StartCollect', function(pos, ConfigItem)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local nearbyObject
    local nearbyID = -1

    for i=1, #spawnedItems[ConfigItem].locations, 1 do
        if (#(coords - GetEntityCoords(spawnedItems[ConfigItem].locations[i].object)) < 3.0) then
            nearbyObject, nearbyID = spawnedItems[ConfigItem].locations[i], i
        end
    end

    Wait(100)
    if (nearbyID ~= -1) then
        local item = nearbyObject.item

        ESX.TriggerServerCallback('ttyy_core:canHoldItem', function(canHold)
            if (canHold) then
                local animInfo = itemZones[ConfigItem].animInfo

                if (itemZones[ConfigItem].tool ~= nil) then
                    local toolCount = exports['ttyy_smallsource']:itemCount(itemZones[ConfigItem].tool)
                    if (toolCount > 0) then
                        collectionInProgress = true
                        if (animInfo.dict ~= nil) then
                            exports['ttyy_smallsource']:playAnim(playerPed, animInfo.dict, animInfo.anim, -1)
                        else
                            TaskStartScenarioInPlace(playerPed, animInfo.anim, 0, false)	
                        end

                        FreezeEntityPosition(playerPed, true)

                        if (itemZones[ConfigItem].toolInfo ~= nil) then CreateProp(6000, ConfigItem) end
                        
                        exports.ox_inventory:Progress({
                            duration = 6000, 
                            label = 'Collect ' .. nearbyObject.label .. '(s)',
                            useWhileDead = false,
                            canCancel = false,
                            disable = {
                                 move = true,
                                 car = true,
                                 combat = true,
                            },
                        }, function(cancel)
                            if not cancel then

                                ClearPedTasks(playerPed)
                                FreezeEntityPosition(playerPed, false)
        
                                ESX.Game.DeleteObject(nearbyObject.object)
                                table.remove(spawnedItems[ConfigItem].locations, nearbyID)
                                spawnedItems[ConfigItem].count = spawnedItems[ConfigItem].count - 1
                                TriggerServerEvent('bixbi_gather:Success', coords, ConfigItem, item)
                                collectionInProgress = false
                            end
                        end)
                    
                    else
                        ESX.ShowNotification('You need a ' .. itemZones[ConfigItem].tool .. ' to do this.', 'error')
                    end
                else
                    collectionInProgress = true
                    if (animInfo.dict ~= nil) then
                        exports['ttyy_smallsource']:playAnim(playerPed, animInfo.dict, animInfo.anim, -1)
                    else
                        TaskStartScenarioInPlace(playerPed, animInfo.anim, 0, false)	
                    end

                    if (itemZones[ConfigItem].toolInfo ~= nil) then CreateProp(6000, ConfigItem) end

                    exports.ox_inventory:Progress({
                        duration = 6000, 
                        label = 'Collect ' .. nearbyObject.label .. '(s)',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                             move = true,
                             car = true,
                             combat = true,
                        },
                    }, function(cancel)
                        if not cancel then
                            ClearPedTasks(playerPed)
                            ESX.Game.DeleteObject(nearbyObject.object)
                            table.remove(spawnedItems[ConfigItem].locations, nearbyID)
                            spawnedItems[ConfigItem].count = spawnedItems[ConfigItem].count - 1
        
                            TriggerServerEvent('bixbi_gather:Success', coords, ConfigItem, item, nearbyObject.itemQty)
                            collectionInProgress = false
                        end
                    end)

                end
            else
                ESX.ShowNotification('You do not have enough room to store this item.', 'error')
            end
        end,  item, 1)
    else
        ESX.ShowNotification('You cannot see any resources, perhaps try again? Or maybe you\'re in the wrong area', 10000, 'error')
    end
end)

local lastSpawnedZone = ''
function SpawnItems(EntryName)
    if (lastSpawnedZone ~= EntryName) then
        RemoveObjects()
        lastSpawnedZone = EntryName
    end

    local ConfigItem = itemZones[EntryName]
    local itemInfo = spawnedItems[EntryName]
    if (itemInfo == nil) then
        spawnedItems[EntryName] = {}
        spawnedItems[EntryName].count = 0
        spawnedItems[EntryName].locations = {}
        spawnedItems[EntryName].zone = ConfigItem

        itemInfo = spawnedItems[EntryName]
    end
    
    while (itemInfo.count < ConfigItem.maxCount) do
        Citizen.Wait(1000)
        for _, v in pairs(ConfigItem.info) do
            if (spawnedItems[EntryName].count < ConfigItem.maxCount) then
                math.randomseed(GetGameTimer())
                local rarity = math.random(1, v.rarity)
                if (rarity == v.rarity) then
                    Citizen.Wait(500)
                    local itemCoords = GenerateItemCoords(ConfigItem, itemInfo)

                    ESX.Game.SpawnLocalObject(v.model, itemCoords, function(obj)
                        PlaceObjectOnGroundProperly(obj)
                        FreezeEntityPosition(obj, true)
                        
                        math.randomseed(GetGameTimer())
                        table.insert(spawnedItems[EntryName].locations, { object = obj, item = v.item, label = v.label })
                        spawnedItems[EntryName].count = itemInfo.count + 1
                    end)
                end
            else
                break
            end
        end
    end
end

function GenerateItemCoords(ConfigItem, itemInfo)
	while (ESX.PlayerLoaded) do
		Citizen.Wait(1)
		math.randomseed(GetGameTimer())
		local modX = math.random(-ConfigItem.radius, ConfigItem.radius)

		Citizen.Wait(100)
		math.randomseed(GetGameTimer())
		local modY = math.random(-ConfigItem.radius, ConfigItem.radius)
        
		local itemX = ConfigItem.coords.x + modX
		local itemY = ConfigItem.coords.y + modY

		local coordZ = GetCoordZ(itemX, itemY) or ConfigItem.coords.z
		local coord = vector3(itemX, itemY, coordZ)

		if ValidateItemCoords(ConfigItem, itemInfo, coord) then
            coord = vector3(coord.x, coord.y, coord.z --[[- 1.2]])
			return coord
		end
	end
end

function ValidateItemCoords(ConfigItem, itemInfo, itemCoord)
	if itemInfo.count > 0 then
		local validate = true

		for k, v in pairs(itemInfo.locations) do
			if #(itemCoord - GetEntityCoords(v.object)) < ConfigItem.spacing then
				validate = false
			end
		end
		if (#(itemCoord - ConfigItem.coords) > ConfigItem.radius) then validate = true end

		return validate
	else
		return true
	end
end

function GetCoordZ(x, y)
    for height = 1, 1000 do
        local foundGround, zPos = GetGroundZFor_3dCoord(x, y, height + 0.0)
        if foundGround then
            return zPos
        end
        -- Citizen.Wait(5)
    end
end

function LocationLoop()
    TriggerServerEvent('bixbi_gather:SetupTargets')
    Citizen.CreateThread(function()
        local lastSpawnedLocation = nil
        while ESX.PlayerLoaded do
            local locationLoopSleep = 1
            local closestDistance = 1000
            local areaSpawnRadius = 100
            local coords = GetEntityCoords(PlayerPedId())

            for k, v in pairs(itemZones) do
                local distance = #(coords - v.coords)
                if (distance < closestDistance) then closestDistance = distance end
                if (distance < (v.radius * 1.5)) then
                    areaSpawnRadius = v.radius
                    SpawnItems(k)
                    lastSpawnedLocation = coords
                    Citizen.Wait(5000)
                end
            end

            if (closestDistance < (areaSpawnRadius * 1.2)) then
                locationLoopSleep = 1
            elseif (closestDistance > 1800) then
                locationLoopSleep = 45
            elseif (closestDistance > 500) then
                locationLoopSleep = 7
            elseif (closestDistance > 200) then
                locationLoopSleep = 5
            end

            if (lastSpawnedLocation ~= nil and #(coords - lastSpawnedLocation) > areaSpawnRadius + 50) then
                RemoveObjects()
                lastSpawnedLocation = nil
            end

            Citizen.Wait(locationLoopSleep * 1000)
        end
    end)
end

--[[--------------------------------------------------
Setup
--]]--------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)
	if (resourceName == GetCurrentResourceName()) then
        while (ESX == nil) do Citizen.Wait(100) end
        Citizen.Wait(1000)
        ESX.PlayerLoaded = true
        LocationLoop()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    while (ESX == nil) do Citizen.Wait(100) end
    ESX.PlayerData = xPlayer
 	ESX.PlayerLoaded = true
     
    LocationLoop()
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)

function RemoveObjects()
    for _, z in pairs(spawnedItems) do
        for k, v in pairs(z.locations) do
            ESX.Game.DeleteObject(v.object)
        end
    end
    spawnedItems = nil
    spawnedItems = {}
    lastSpawnedZone = ''
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
        RemoveObjects()
	end
end)