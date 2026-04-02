ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local washingVehicle = false

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    while true do
        local inRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        local PedVehicle = GetVehiclePedIsIn(PlayerPed)
        local Driver = GetPedInVehicleSeat(PedVehicle, -1)


        if IsPedInAnyVehicle(PlayerPed) then
            for k, v in pairs(VehWash.Locations) do
                local dist = #(PlayerPos - vector3(VehWash.Locations[k]["coords"]["x"], VehWash.Locations[k]["coords"]["y"], VehWash.Locations[k]["coords"]["z"]))

                if dist <= 10 then
                    inRange = true
                    
                    if dist <= 7.5 then
                        if Driver == PlayerPed then
                            if not washingVehicle then
                                DrawText3Ds(VehWash.Locations[k]["coords"]["x"], VehWash.Locations[k]["coords"]["y"], VehWash.Locations[k]["coords"]["z"], '~g~E~w~ - Washing car ($'..VehWash.DefaultPrice..')')
                                if IsControlJustPressed(0, 38) then
                                    TriggerServerEvent('qb-carwash:server:washCar')
                                end
                            else
                                DrawText3Ds(VehWash.Locations[k]["coords"]["x"], VehWash.Locations[k]["coords"]["y"], VehWash.Locations[k]["coords"]["z"], 'The car wash is not available ..')
                            end
                        end
                    end
                end
            end
        end

        if not inRange then
            Citizen.Wait(5000)
        end

        Citizen.Wait(3)
    end
end)

RegisterNetEvent('qb-carwash:client:washCar')
AddEventHandler('qb-carwash:client:washCar', function()
    local PlayerPed = PlayerPedId()
    local PedVehicle = GetVehiclePedIsIn(PlayerPed)
    local Driver = GetPedInVehicleSeat(PedVehicle, -1)

    local playerCoords = GetEntityCoords(PlayerPed)


    washingVehicle = true

    FreezeEntityPosition(PedVehicle, true)
    UseParticleFxAssetNextCall("core")
    particles  = StartParticleFxLoopedAtCoord("ent_amb_waterfall_splash_p", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    UseParticleFxAssetNextCall("core")
    particles2  = StartParticleFxLoopedAtCoord("ent_amb_waterfall_splash_p", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    timer = 15
    timer2 = true
    exports['hopeprogress']:startUI(7000, "Washing...")
    Citizen.Wait(7000)
    FreezeEntityPosition(PedVehicle, false)
    StopParticleFxLooped(particles, 0)
    StopParticleFxLooped(particles2, 0)
    SetVehicleDirtLevel(PedVehicle, 0)
    SetVehicleUndriveable(PedVehicle, false)
    WashDecalsFromVehicle(PedVehicle, 1.0)
    washingVehicle = false
    
end)

Citizen.CreateThread(function()
    for k, v in pairs(VehWash.Locations) do
        carWash = AddBlipForCoord(VehWash.Locations[k]["coords"]["x"], VehWash.Locations[k]["coords"]["y"], VehWash.Locations[k]["coords"]["z"])

        SetBlipSprite (carWash, 100)
        SetBlipDisplay(carWash, 4)
        SetBlipScale  (carWash, 0.75)
        SetBlipAsShortRange(carWash, true)
        SetBlipColour(carWash, 37)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(VehWash.Locations[k]["label"])
        EndTextCommandSetBlipName(carWash)
    end
end)
