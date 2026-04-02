ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)
--CODE

local choosingSpawn = false
local currentPos = {}
local isFirst = false

RegisterNetEvent('qb-spawn:client:openUI')
AddEventHandler('qb-spawn:client:openUI', function(bool,position,value, new)
    isFirst = bool
    SetEntityVisible(GetPlayerPed(-1), true)
    DoScreenFadeOut(250)
    Citizen.Wait(2000)
    DoScreenFadeIn(250)
    currentPos = position
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", currentPos.x, currentPos.y, currentPos.z + 150, -85.00, 0.00, 0.00, 100.00, false, 0)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)
    Citizen.Wait(500)
    SetDisplay(value)
end)

RegisterNUICallback("exit", function(data)
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "ui",
        status = false
    })
    choosingSpawn = false
end)

local cam = nil
local cam2 = nil

-- function setupSpawnLocations()
--     SendNUIMessage({
--         action = "setupLocations",
--         locations = QB.Spawns
--     })
-- end

RegisterNUICallback('setCam', function(data)
    local location = tostring(data.posname)
    local type = tostring(data.type)

    local camZPlus1 = 300
    local camZPlus2 = 100
    local pointCamCoords = 75
    local pointCamCoords2 = 0
    local cam1Time = 500
    local cam2Time = 1000

    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end

    if DoesCamExist(cam2) then
        DestroyCam(cam2, true)
    end

    if type == "current" then
        cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", currentPos.x, currentPos.y, currentPos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam2, currentPos.x, currentPos.y, currentPos.z + pointCamCoords)
        SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
        if DoesCamExist(cam) then
            DestroyCam(cam, true)
        end
        Citizen.Wait(cam1Time)

        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", currentPos.x, currentPos.y, currentPos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam, currentPos.x, currentPos.y, currentPos.z + pointCamCoords2)
        SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
        SetEntityCoords(GetPlayerPed(-1), currentPos.x, currentPos.y, currentPos.z)
    elseif type == "house" then
        local campos = Config.Houses[location].coords.enter

        cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
        SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
        if DoesCamExist(cam) then
            DestroyCam(cam, true)
        end
        Citizen.Wait(cam1Time)

        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
        SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
        SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
    elseif type == "normal" then
        local campos = QB.Spawns[location].coords

        cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
        SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
        if DoesCamExist(cam) then
            DestroyCam(cam, true)
        end
        Citizen.Wait(cam1Time)

        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
        SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
        SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
    elseif type == "appartment" then
        local campos = Apartments.Locations[location].coords.enter

        cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
        SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
        if DoesCamExist(cam) then
            DestroyCam(cam, true)
        end
        Citizen.Wait(cam1Time)

        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
        PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
        SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
        SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
    end
end)

RegisterNUICallback('chooseAppa', function(data)
    local appaYeet = data.appType

    SetDisplay(false)
    DoScreenFadeOut(500)
    Citizen.Wait(5000)
    TriggerServerEvent("apartments:server:CreateApartment", appaYeet, Apartments.Locations[appaYeet].label)
    TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
    TriggerEvent('QBCore:Client:OnPlayerLoaded')
    FreezeEntityPosition(ped, false)
    RenderScriptCams(false, true, 500, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    SetCamActive(cam2, false)
    DestroyCam(cam2, true)
    SetEntityVisible(GetPlayerPed(-1), true)
end)

RegisterNUICallback('spawnplayer', function(data)
    local location = tostring(data.spawnloc)
    local type = tostring(data.typeLoc)
    local ped = PlayerPedId()
    --local PlayerData = QBCore.Functions.GetPlayerData()
    --local insideMeta = PlayerData.metadata["inside"]

    --print(type)

    if type == "current" then
        print('current')
        SetDisplay(false)
        DoScreenFadeOut(500)
        Citizen.Wait(5000)
        SetEntityCoords(ped, currentPos.x, currentPos.y, currentPos.z)
        SetEntityHeading(ped, currentPos.heading)
        FreezeEntityPosition(ped, false)
       -- print(insideMeta.apartment.apartmentType)
        -- if insideMeta.house ~= nil then
        --     local houseId = insideMeta.house
        --     TriggerEvent('qb-houses:client:LastLocationHouse', houseId)
        -- elseif insideMeta.apartment.apartmentType ~= nil or insideMeta.apartment.apartmentId ~= nil then
        --     local apartmentType = insideMeta.apartment.apartmentType
        --     local apartmentId = insideMeta.apartment.apartmentId
        --     TriggerEvent('qb-apartments:client:LastLocationHouse', apartmentType, apartmentId)
        -- end
        --TriggerEvent('esx:kashloaded')
        --TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        --TriggerEvent('QBCore:Client:OnPlayerLoaded')
        FreezeEntityPosition(ped, false)
        RenderScriptCams(false, true, 500, true, true)
        SetCamActive(cam, false)
        DestroyCam(cam, true)
        SetCamActive(cam2, false)
        DestroyCam(cam2, true)
        SetEntityVisible(ped, true)
        Citizen.Wait(500)
        DoScreenFadeIn(250)
        if isFirst then
            isFirst = false
            TriggerEvent("qb-clothes:client:CreateFirstCharacter")
        end
    elseif type == "house" then
        SetDisplay(false)
        DoScreenFadeOut(500)
        Citizen.Wait(5000)
        --TriggerEvent('esx:kashloaded')
        TriggerEvent('qb-houses:client:enterOwnedHouse', location)
        TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        TriggerEvent('QBCore:Client:OnPlayerLoaded')
        TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
        FreezeEntityPosition(ped, false)
        RenderScriptCams(false, true, 500, true, true)
        SetCamActive(cam, false)
        DestroyCam(cam, true)
        SetCamActive(cam2, false)
        DestroyCam(cam2, true)
        SetEntityVisible(ped, true)
        Citizen.Wait(500)
        DoScreenFadeIn(250)
        print('house')
        if isFirst then
            isFirst = false
            TriggerEvent("qb-clothes:client:CreateFirstCharacter")
        end
    elseif type == "normal" then
        print('normal')
        local pos = QB.Spawns[location].coords
        SetDisplay(false)
        DoScreenFadeOut(500)
        Citizen.Wait(5000)
        SetEntityCoords(ped, pos.x, pos.y, pos.z)
        --TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
       -- TriggerEvent('QBCore:Client:OnPlayerLoaded')
        --TriggerEvent('esx:kashloaded')
        TriggerEvent('disc-ambulancejob:multicharacter', source)
        TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
        Citizen.Wait(500)
        SetEntityCoords(ped, pos.x, pos.y, pos.z)
        SetEntityHeading(ped, pos.h)
        FreezeEntityPosition(ped, false)
        RenderScriptCams(false, true, 500, true, true)
        SetCamActive(cam, false)
        DestroyCam(cam, true)
        SetCamActive(cam2, false)
        DestroyCam(cam2, true)
        SetEntityVisible(ped, true)
        Citizen.Wait(500)
        DoScreenFadeIn(250)
        if isFirst then
            isFirst = false
            TriggerEvent("qb-clothes:client:CreateFirstCharacter")
        end
    end
    TriggerEvent("cylexsikos:hudstate", true)
    --TriggerEvent("initializeVoip")
end)

function SetDisplay(bool)
    choosingSpawn = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool
    })
end

Citizen.CreateThread(function()
    while choosingSpawn do
        Citizen.Wait(0)
        DisableAllControlActions(0)
    end
end)

RegisterNetEvent('qb-houses:client:setHouseConfig')
AddEventHandler('qb-houses:client:setHouseConfig', function(houseConfig)
    Config.Houses = houseConfig
end)

RegisterNetEvent('qb-spawn:client:setupSpawns')
AddEventHandler('qb-spawn:client:setupSpawns', function(cData, new, apps)
    if not new then
        ESX.TriggerServerCallback('qb-spawn:server:getOwnedHouses', function(houses)
            local myHouses = {}
            if houses ~= nil then
                for i = 1, (#houses), 1 do
                    table.insert(myHouses, {
                        house = houses[i].house,
                        label = Config.Houses[houses[i].house].adress,
                    })
                end
            end

            Citizen.Wait(500)
            SendNUIMessage({
                action = "setupLocations",
                locations = QB.Spawns,
                houses = myHouses,
            })
        end, cData.citizenid)
    elseif new then
        SendNUIMessage({
            action = "setupAppartements",
            locations = apps,
        })
    end
end)

RegisterNetEvent('qb-spawn:client:setupSpawns2')
AddEventHandler('qb-spawn:client:setupSpawns2', function(cData, new, apps)
    if not new then
        ESX.TriggerServerCallback('qb-spawn:server:getOwnedHouses', function(houses)
            local myHouses = {}
            if houses ~= nil then
                for i = 1, (#houses), 1 do
                    table.insert(myHouses, {
                        house = houses[i].house,
                        label = Config.Houses[houses[i].house].adress,
                    })
                end
            end

            Citizen.Wait(500)
            SendNUIMessage({
                action = "setupLocations",
                locations = QB.Spawns2,
                houses = myHouses,
            })
        end, cData.citizenid)
    elseif new then
        SendNUIMessage({
            action = "setupAppartements",
            locations = apps,
        })
    end
end)
