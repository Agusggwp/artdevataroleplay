local isOnDuty = false
local insideSpawn = false
local insideCuciBatu = false
local insideProcessoil = false
local insidePackOil = false
local inVeh = false
local workVehicle = nil

RegisterNetEvent('ttyy_jobs:VehicleMenu')
AddEventHandler('ttyy_jobs:VehicleMenu', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 0,
            header = 'Vehicle Select',
            txt = ''
        }
    })
    for k, v in ipairs(Config.Vehicles) do
        TriggerEvent('zf_context:openMenu', {
            {
                id = k,
                header = v.label,
                txt = v.desc,
                params = {
                    event = 'ttyy_jobs:VehicleHandle',
                    args = k
                }
            }
        })
    end
end)

RegisterNetEvent('ttyy_jobs:VehicleHandle')
AddEventHandler('ttyy_jobs:VehicleHandle', function(vehicle)
    if workVehicle == nil then
        RequestModel(Config.Vehicles[vehicle].name)
        while not HasModelLoaded(Config.Vehicles[vehicle].name) do
            Citizen.Wait(10)
        end
        workVehicle = CreateVehicle(Config.Vehicles[vehicle].name, Config.Zones.VehSpawn.x, Config.Zones.VehSpawn.y, Config.Zones.VehSpawn.z, Config.Zones.VehSpawn.vehHeading, true, false)
        SetModelAsNoLongerNeeded(Config.Vehicles[vehicle].name)
        local platejob = 'WORK' .. math.random(100, 900)
        SetVehicleNumberPlateText(workVehicle, platejob)
        
        local plate = GetVehicleNumberPlateText(workVehicle)

        TaskWarpPedIntoVehicle(cache.ped, workVehicle, -1)
        exports['ox_fuel']:SetFuel(workVehicle, 100)
        exports['ttyy_text']:DrawText('[E] Store vehicle','left')
    else
        ESX.ShowNotification("You already have work vehicle out.")
    end
end)

function DeleteWorkVehicle()
    TaskLeaveVehicle(cache.ped, workVehicle, 0)
    Citizen.Wait(2000)
    DeleteEntity(workVehicle)

    workVehicle = nil
    exports['ttyy_text']:HideText()
end


RegisterNetEvent('ttyy_jobs:lockerMenu')
AddEventHandler('ttyy_jobs:lockerMenu', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 0,
            header = 'Duty Select',
            txt = ''
        },
        {
            id = 1,
            header = 'Clock in',
            txt = 'Start to work',
            params = {
                event = 'ttyy_jobs:DutyHandle',
                args = true
            }
        },
        {
            id = 2,
            header = 'Clock out',
            txt = 'Done for the day?',
            params = {
                event = 'ttyy_jobs:DutyHandle',
                args = false
            }
        }
    })
end)

RegisterNetEvent('ttyy_jobs:DutyHandle')
AddEventHandler('ttyy_jobs:DutyHandle', function(duty)
    if duty then
        isOnDuty = true
        JobsBlip()
        local sex = 0
        local ped = cache.ped

        if (exports['fivem-appearance']:getPedModel(ped) == 'mp_f_freemode_01') then sex = 1 end
    
        for k, v in pairs(Config.Uniform) do
            local drawable = v.male.drawable
            local texture = v.male.texture
            if (sex == 1) then
                drawable = v.female.drawable
                texture = v.female.texture
            end
            TriggerEvent('ttyy_core:SetClothing', k, drawable, texture)
        end
        ESX.ShowNotification('You are now on duty as laborer')
    else
        isOnDuty = false
        workVehicle = nil
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            TriggerEvent('skinchanger:loadSkin', skin)
        end)
        ESX.ShowNotification('You are now off duty', 'error')
    end
end)

-- qtarget
exports['qtarget']:AddBoxZone('ox_jobs', vector3(1200.654, -1276.47, 35.22463), 0.8, 4.0, {
    name='Jobs Locker',
    heading=357.25,
    --debugPoly=true,
    minZ=34.2,
    maxZ=36.0
}, {
    options = {
        {
            event = "ttyy_jobs:lockerMenu",
            icon = 'fas fa-tshirt',
            label = "Locker Menu",
        },
    },
    distance = 2.0
})

-- polyzone thing

local depotZone = CircleZone:Create(
    vector3(Config.Zones.Depot.x, Config.Zones.Depot.y, Config.Zones.Depot.z),
    Config.Zones.Depot.rad, {
        name = 'ttyy_jobs:Depot',
        useZ = true,
        --debugPoly = true
    }
)

local vehSpawnZone = BoxZone:Create(
    vector3(1206.6942, -1262.4476, 35.2267),
    3.5, 3.5, {
    name = 'ttyy_jobs:VehicleHandle',
    heading = 175.2713,
    --debugPoly = true,
    minZ = 33.2267,
    maxZ = 37.2267
})

local insideSpawn = BoxZone:Create(
    vector3(1206.6942, -1262.4476, 35.2267),
    3.5, 3.5, {
    name = 'ttyy_jobs:VehicleHandle',
    heading = 175.2713,
    --debugPoly = true,
    minZ = 33.2267,
    maxZ = 37.2267
})

local CuciBatuZone = BoxZone:Create(
    vector3(1393.20, 3788.59, 31.02),
    6.5, 15.5, {
    name = 'ttyy_jobs:cucibatu',
    heading = 158.2104,
    --debugPoly = true,
    minZ = 30.2,
    maxZ = 32
})

local ProcessoilZone = BoxZone:Create(
    vector3(601.94, 3024.44, 42.0),
    6.5, 6.5, {
    name = 'ttyy_jobs:processoil',
    heading = 146.4,
    --debugPoly = true,
    minZ = 41.2,
    maxZ = 43
})

local PackOilZone = BoxZone:Create(
    vector3(2777.94, 1438.92, 24.47),
    6.5, 10.5, {
    name = 'ttyy_jobs:packoil',
    heading = 255.77,
    --debugPoly = true,
    minZ = 23.2,
    maxZ = 25.4
})
--------------

CreateThread(function()
    while true do
        Wait(500)
        playerCoords = GetEntityCoords(cache.ped)
        insideDepot = depotZone:isPointInside(playerCoords)
    end
end)

CreateThread(function()
CuciBatuZone:onPlayerInOut(function(isPointInside, point)
        insideCuciBatu = isPointInside
        if insideCuciBatu then
            inVeh = IsPedInAnyVehicle(cache.ped, false)
            if not inVeh and isOnDuty then
                exports['ttyy_text']:DrawText('[E] Wash Stone','left')
            elseif not isOnDuty then
                exports['ttyy_text']:DrawText('You should on duty first','left')
            else
                exports['ttyy_text']:DrawText('[E] Get out from vehicle','left')
            end
        else
            exports['ttyy_text']:HideText()
        end
    end)

    ProcessoilZone:onPlayerInOut(function(isPointInside, point)
        insideProcessoil = isPointInside
        if insideProcessoil then
            inVeh = IsPedInAnyVehicle(cache.ped, false)
            if not inVeh and isOnDuty then
                exports['ttyy_text']:DrawText('[E] Process oil','left')
            elseif not isOnDuty then
                exports['ttyy_text']:DrawText('You should on duty first','left')
            else
                exports['ttyy_text']:DrawText('[E] Get out from vehicle','left')
            end
        else
            exports['ttyy_text']:HideText()
        end
    end)

    PackOilZone:onPlayerInOut(function(isPointInside, point)
        insidePackOil = isPointInside
        if insidePackOil then
            inVeh = IsPedInAnyVehicle(cache.ped, false)
            if not inVeh and isOnDuty then
                exports['ttyy_text']:DrawText('[E] Packaging oil','left')
            elseif not isOnDuty then
                exports['ttyy_text']:DrawText('You should on duty first','left')
            else
                exports['ttyy_text']:DrawText('[E] Get out from vehicle','left')
            end
        else
            exports['ttyy_text']:HideText()
        end
    end)

    insideSpawn:onPlayerInOut(function(isPointInside, point)
        insideSpawn = isPointInside
        if insideSpawn then
            inVeh = IsPedInAnyVehicle(cache.ped, false)
            if not inVeh and isOnDuty then
                exports['ttyy_text']:DrawText('[E] Take Vehicle','left')
            elseif not isOnDuty then
                exports['ttyy_text']:DrawText('You should on duty first','left')
            else
                exports['ttyy_text']:DrawText('[E] Get out from vehicle','left')
            end
        else
            exports['ttyy_text']:HideText()
        end
    end)

end)
---- end of polyzone

CreateThread(function()
    while true do
        wait = 5
        if insideDepot or insideSpawn or insideCuciBatu or insideProcessoil or insidePackOil then
            if isOnDuty then
                DrawMarker(2, vector3(1206.6942, -1262.4476, 35.2267), 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 167, 0, 36, 100, false, false, 2, true) -- process miner
                DrawMarker(2, vector3(602.11, 3024.74, 42.01), 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 167, 0, 36, 100, false, false, 2, true) -- process oil
                DrawMarker(2, vector3(2776.92, 1439.45, 24.57), 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 167, 0, 36, 100, false, false, 2, true) -- pack oil
            end
            if IsControlJustReleased(0, 51) then
                if insideSpawn then
                    if not IsPedInAnyVehicle(cache.ped, false) then
                        TriggerEvent('ttyy_jobs:VehicleMenu')
                    elseif GetVehiclePedIsIn(cache.ped, false) == workVehicle then
                        DeleteWorkVehicle()
                    end
                elseif insideCuciBatu and isOnDuty then
                    TriggerEvent('ttyy_jobs:Progress', 'washed_stone')
                elseif insideProcessoil and isOnDuty then
                    TriggerEvent('ttyy_jobs:Progress', 'petrol_raffin')
                elseif insidePackOil and isOnDuty then
                    TriggerEvent('ttyy_jobs:Progress', 'essence')
                end
                if not isOnDuty then
                    ESX.ShowNotification('on duty first', 'error')
                end
            end
        else
            wait = 500
        end
        Wait(wait)
    end
end)

--- blip handle

local blips = {
    {name="Pencucian Batu", color=5, id=479, x = 1397.1755, y = 3791.6538, z = 31.2624},
    {name="Peleburan Batu", color=5, id=479, x = 1109.7422, y = -2007.9620, z = 31.0506},
    -- kayu
    {name="Pemotongan Kayu", color=5, id=479, x = 342.3677, y = 4459.6899, z = 64.7491, scale = 0.8},
    {name="Pengemasan Kayu", color=5, id=479, x = -507.0332, y = 5271.3638, z = 80.6101, scale = 0.8},

    -- jagal ayam
    {name="Peternakan Ayam", color=5, id=479, x = 2298.5176, y = 4933.2822, z = 41.4146, scale = 0.8},
    {name="Penjagalan Ayam", color=5, id=479, x = -98.0048, y = 6209.0718, z = 31.0250, scale = 0.8},
    
    -- fueler job
    {name="Process Minyak", color=5, id=479, x = 601.94, y = 3024.44, z = 42.0, scale = 0.8},
    {name="Pack Minyak", color=5, id=479, x = 2777.94, y = 1438.92, z = 24.47, scale = 0.8}, -- pack
}

function JobsBlip()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, info.scale or 0.6)
        SetBlipColour(info.blip, info.color)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.name)
        EndTextCommandSetBlipName(info.blip)
    end
end
