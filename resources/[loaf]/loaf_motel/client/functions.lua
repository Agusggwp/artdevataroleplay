ESX = nil
Cache = {}

CreateThread(function()
    while not Config or not Config.ESX or not Config.ESX.client do
        Wait(250)
    end

    while not ESX do
        Wait(500)
        TriggerEvent(Config.ESX.client, function(esx)
            ESX = esx
        end)
    end

    while not ESX.GetPlayerData() or not ESX.GetPlayerData().job or not ESX.GetPlayerData().job.name do
        Wait(500)
    end

    lib = exports.loaf_lib:GetLib()

    Wait(4000) -- wait for server ESX to load

    if Config.Policeraid.Enabled then
        Cache.ispolice = false

        for k, v in pairs(Config.Policeraid.Jobs) do
            if v.job == ESX.GetPlayerData().job.name and ESX.GetPlayerData().job.grade >= v.grade then
                Cache.ispolice = true
                break
            end
        end

        RegisterNetEvent("esx:setJob")
        AddEventHandler("esx:setJob", function(job)
            for k, v in pairs(Config.Policeraid.Jobs) do
                if v.job == job.name and job.grade >= v.grade then
                    Cache.ispolice = true
                    return
                end
            end

            Cache.ispolice = false
        end)
    end

    Cache.loaded = true

    Cache.room_markers = {}

    TriggerServerEvent("loaf_motel:request_data")
    LoadBlips()
    LoadMarkers()
    
    for k, v in pairs(Config.Motels) do
        for _, interior in pairs(v.Interiors) do
            if not Shells[interior] then
                table.remove(v.Interiors, _)
                print("Removed, not in config.")
            else
                local model = Shells[interior].Object
                if not IsModelInCdimage((type(model) == "number" and model or GetHashKey(model))) then
                    table.remove(v.Interiors, _)
                    print("Removed, not in cd image.")
                end
            end
        end
    end
end)

function LoadBlips()
    Cache.blips = Cache.blips or {}

    for k, v in pairs(Config.Motels) do
        if Config.Blips.Enabled then
            if Cache.blips["motel_" .. k] then -- if a blip for this motel exists
                lib.RemoveBlip(Cache.blips["motel_" .. k])
            end

            Cache.blips["motel_" .. k] = lib.AddBlip({
                coords = v.Location.xyz,
                sprite = Config.Blips.Sprite,
                color = (Cache.owned and Cache.owned.motel == k and Config.Blips.OwnedColour) or Config.Blips.Colour,
                label = v.Name,
                category = (Cache.owned and Cache.owned.motel == k and 11) or 10,
                scale = Config.Blips.Scale
            })
        end
    end
end

function LoadMarkers()
    for id, data in pairs(Config.Motels) do
        local shouldAddMotel = false
        if data.Marker then
            lib.RemoveMarker(data.Marker)
            data.Marker = nil
        end

        if Cache.owned then
            if Cache.owned.motel == id then
                local rent = 0
                if data.Rent then
                    rent = Config.Prices[Cache.owned.interior.Id]
                end
                data.Marker = lib.AddMarker({
                    coords = data.Location.xyz - vec3(0.0, 0.0, 1.0),
                    type = 1,
                    callbackData = {
                        press = id
                    },
                    r = Config.Markers.Colour.r,
                    g = Config.Markers.Colour.g,
                    b = Config.Markers.Colour.b,
                    alpha = Config.Markers.Colour.a,
                    key = "primary",
                    text = Strings["manage_rent"]:format(rent)
                }, nil, CloseMenu, ManageMotel)
            end
        else
            data.Marker = lib.AddMarker({
                coords = data.Location.xyz - vec3(0.0, 0.0, 1.0),
                type = 1,
                callbackData = {
                    press = id
                },
                r = Config.Markers.Colour.r,
                g = Config.Markers.Colour.g,
                b = Config.Markers.Colour.b,
                alpha = Config.Markers.Colour.a,
                key = "primary",
                text = Strings["purchase_room"]
            }, nil, CloseMenu, ManageMotel)
        end

        for room, coords in pairs(data.Rooms) do
            local markerName, owned, shouldAdd = ("motel_%sroom_%s"):format(id, room), Cache.owned and Cache.owned.motel == id and Cache.owned.room == room, true
            if Cache.room_markers[markerName] then
                shouldAdd = false
                local markerData = lib.GetMarker(Cache.room_markers[markerName]).data
                if markerData.r ~= Config.Markers.Owned.r or markerData.g ~= Config.Markers.Owned.g or markerData.b ~= Config.Markers.Owned.b then
                    if owned then
                        shouldAdd = true
                    end
                elseif not owned then
                    shouldAdd = true
                end
            end

            if shouldAdd then
                if Cache.room_markers[markerName] then
                    lib.RemoveMarker(Cache.room_markers[markerName])
                end

                Cache.room_markers[markerName] = lib.AddMarker({
                    coords = coords.xyz - vec3(0.0, 0.0, 1.0),
                    type = 1,
                    callbackData = {
                        press = {id, room},
                    },
                    r = owned and Config.Markers.Owned.r or Config.Markers.Colour.r,
                    g = owned and Config.Markers.Owned.g or Config.Markers.Colour.g,
                    b = owned and Config.Markers.Owned.b or Config.Markers.Colour.b,
                    alpha = owned and Config.Markers.Owned.a or Config.Markers.Colour.a,
                    key = "primary",
                    text = Strings["room"]:format(room)
                }, nil, CloseMenu, RoomMenu)
            end
        end
    end
end

function CloseMenu()
    ESX.UI.Menu.CloseAll()
end


function Teleport(coords)
    for i = 1, 25 do
        SetEntityCoords(PlayerPedId(), coords.xyz)
        Wait(50)
    end
    while IsEntityWaitingForWorldCollision(PlayerPedId()) do
        SetEntityCoords(PlayerPedId(), coords.xyz)
        Wait(50)
    end
    if type(coords) == "vector4" then
        SetEntityHeading(PlayerPedId(), coords.w)
    end
end

function SetWeather()
    NetworkOverrideClockTime(17, 0, 0)
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist("EXTRASUNNY")
    SetWeatherTypeNow("EXTRASUNNY")
    SetWeatherTypeNowPersist("EXTRASUNNY")
    SetWindSpeed(0.0)
end