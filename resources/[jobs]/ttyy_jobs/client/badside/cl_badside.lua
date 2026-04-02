ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


Citizen.CreateThread(function()

    while ESX == nil do

        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

        Citizen.Wait(0)

    end

end)

RegisterNetEvent("esx:playerLoaded")

AddEventHandler("esx:playerLoaded", function(playerData)

    ESX.PlayerData = playerData

end)

RegisterNetEvent("esx:setJob")

AddEventHandler("esx:setJob", function(newJob)

    ESX.PlayerData["job"] = newJob

end)

function Vehicles_menu_ambulance()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'polmav', value= 'polmav'})


    local SpawnPosition = vector3(Config_Badside.Location['ambulance'].vehicle_spawn.x, Config_Badside.Location['ambulance'].vehicle_spawn.y, Config_Badside.Location['ambulance'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

        'default', GetCurrentResourceName(), 'vehiclespawner',

        {

        title    = "Vehicle Spawner",

        elements = elements,

        align = "bottom-right"

        },

        function(data, menu)

            local vehiclehash = GetHashKey(data.current.value)
            RequestModel(vehiclehash)
            while not HasModelLoaded(vehiclehash) do
                RequestModel(vehiclehash)
                Citizen.Wait(1)
            end
            car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['ambulance'].vehicle_spawn.h, true, false)
            SetEntityAsMissionEntity(car, true, true)
            if Config_Badside.CustomHandling then
                setModeBalap(car)
            end
            TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
            --SetVehicleNumberPlateText(car, "TCMC")

        menu.close()

        end,

        function(data, menu)

        menu.close()

        end

    )

end

function Vehicles_menu_biker()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Gargoyle', value= 'gargoyle'})

    table.insert(elements, {label = 'Gang Burrito', value= 'gburrito2'})

    table.insert(elements, {label = 'Daemon', value= 'daemon'})

    local SpawnPosition = vector3(Config_Badside.Location['biker'].vehicle_spawn.x, Config_Badside.Location['biker'].vehicle_spawn.y, Config_Badside.Location['biker'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

        'default', GetCurrentResourceName(), 'vehiclespawner',

        {

        title    = "Vehicle Spawner",

        elements = elements,

        align = "bottom-right"

        },

        function(data, menu)

            local vehiclehash = GetHashKey(data.current.value)
            RequestModel(vehiclehash)
            while not HasModelLoaded(vehiclehash) do
                RequestModel(vehiclehash)
                Citizen.Wait(1)
            end
            car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['biker'].vehicle_spawn.h, true, false)
            SetEntityAsMissionEntity(car, true, true)
            if Config_Badside.CustomHandling then
                setModeBalap(car)
            end
            TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
            --SetVehicleNumberPlateText(car, "TCMC")

        menu.close()

        end,

        function(data, menu)

        menu.close()

        end

    )

end

function Vehicles_menu_cartel()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Dubsta', value= 'dubsta'})

    table.insert(elements, {label = 'Patriot', value= 'patriot'})

    table.insert(elements, {label = 'Asterope', value= 'asterope'})

    local SpawnPosition = vector3(Config_Badside.Location['cartel'].vehicle_spawn.x, Config_Badside.Location['cartel'].vehicle_spawn.y, Config_Badside.Location['cartel'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['cartel'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
              --  SetVehicleNumberPlateText(car, "VANDALAS")

                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menu_mafia()

    ESX.UI.Menu.CloseAll()

    local elements = {}
    
    table.insert(elements, {label = 'Guardian', value= 'guardian'})

    table.insert(elements, {label = 'Wildtrak', value= 'wildtrak'})

    table.insert(elements, {label = 'Enduro', value= 'enduro'})

    local SpawnPosition = vector3(Config_Badside.Location['mafia'].vehicle_spawn.x, Config_Badside.Location['mafia'].vehicle_spawn.y, Config_Badside.Location['mafia'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['mafia'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
              --  SetVehicleNumberPlateText(car, "BM01")
                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menu_vagoz()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Guardian', value= 'guardian'})

    table.insert(elements, {label = 'Sanchez', value= 'sanchez'})

    local SpawnPosition = vector3(Config_Badside.Location['vagoz'].vehicle_spawn.x, Config_Badside.Location['vagoz'].vehicle_spawn.y, Config_Badside.Location['vagoz'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['vagoz'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
               -- SetVehicleNumberPlateText(car, "ALK")

                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menu_gangster()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Dubsta 3', value= 'dubsta3'})

    table.insert(elements, {label = 'Sanchez', value= 'sanchez'})

    local SpawnPosition = vector3(Config_Badside.Location['gangster'].vehicle_spawn.x, Config_Badside.Location['gangster'].vehicle_spawn.y, Config_Badside.Location['gangster'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['gangster'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
               -- SetVehicleNumberPlateText(car, "TR01")
                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menu_gangster2()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Dubsta 3', value= 'dubsta3'})

    table.insert(elements, {label = 'Sanchez', value= 'sanchez'})

    local SpawnPosition = vector3(Config_Badside.Location['gangster2'].vehicle_spawn.x, Config_Badside.Location['gangster2'].vehicle_spawn.y, Config_Badside.Location['gangster2'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['gangster2'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
               -- SetVehicleNumberPlateText(car, "TR01")
                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menu_gangster3()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Dubsta 3', value= 'dubsta3'})

    table.insert(elements, {label = 'Sanchez', value= 'sanchez'})

    local SpawnPosition = vector3(Config_Badside.Location['gangster3'].vehicle_spawn.x, Config_Badside.Location['gangster3'].vehicle_spawn.y, Config_Badside.Location['gangster3'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

            'default', GetCurrentResourceName(), 'vehiclespawner',

            {

                title    = "Vehicle Spawner",

                elements = elements,

                align = "bottom-right"

            },

            function(data, menu)

                local vehiclehash = GetHashKey(data.current.value)
                RequestModel(vehiclehash)
                while not HasModelLoaded(vehiclehash) do
                    RequestModel(vehiclehash)
                    Citizen.Wait(1)
                end
                car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['gangster3'].vehicle_spawn.h, true, false)
                SetEntityAsMissionEntity(car, true, true)
                if Config_Badside.CustomHandling then
                    setModeBalap(car)
                end
                TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
               -- SetVehicleNumberPlateText(car, "TR01")
                menu.close()

            end,

            function(data, menu)

                menu.close()

            end

    )

end

function Vehicles_menupdg()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Akuma', value= 'akuma'})

    table.insert(elements, {label = 'Taco', value= 'taco'})

    local SpawnPosition = vector3(Config_Badside.Location['pedagang'].vehicle_spawn.x, Config_Badside.Location['pedagang'].vehicle_spawn.y, Config_Badside.Location['pedagang'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

        'default', GetCurrentResourceName(), 'vehiclespawner',

        {

        title    = "Vehicle Spawner",

        elements = elements,

        align = "bottom-right"

        },

        function(data, menu)

            local vehiclehash = GetHashKey(data.current.value)
            RequestModel(vehiclehash)
            while not HasModelLoaded(vehiclehash) do
                RequestModel(vehiclehash)
                Citizen.Wait(1)
            end
            car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['pedagang'].vehicle_spawn.h, true, false)
            SetEntityAsMissionEntity(car, true, true)
            TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
            --SetVehicleNumberPlateText(car, "TCMC")

        menu.close()

        end,

        function(data, menu)

        menu.close()

        end

    )

end

function Vehicles_menu_mechanic()

    ESX.UI.Menu.CloseAll()

    local elements = {}

    table.insert(elements, {label = 'Slamvan', value= 'slamvan3'})

    table.insert(elements, {label = 'Towing', value= 'poltowtruck'})

    local SpawnPosition = vector3(Config_Badside.Location['mechanic'].vehicle_spawn.x, Config_Badside.Location['mechanic'].vehicle_spawn.y, Config_Badside.Location['mechanic'].vehicle_spawn.z)

    ESX.UI.Menu.Open(

        'default', GetCurrentResourceName(), 'vehiclespawner',

        {

        title    = "Vehicle Spawner",

        elements = elements,

        align = "bottom-right"

        },

        function(data, menu)

            local vehiclehash = GetHashKey(data.current.value)
            RequestModel(vehiclehash)
            while not HasModelLoaded(vehiclehash) do
                RequestModel(vehiclehash)
                Citizen.Wait(1)
            end
            car = CreateVehicle(vehiclehash, SpawnPosition, Config_Badside.Location['mechanic'].vehicle_spawn.h, true, false)
            SetEntityAsMissionEntity(car, true, true)
            TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
            SetVehicleNumberPlateText(car, "MECHANIC")

        menu.close()

        end,

        function(data, menu)

        menu.close()

        end

    )

end


function RemoveVehicles()
    TriggerEvent( "wk:deleteVehicle")
end

function playAnim(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(animDict)
end

function loadanimdict(dictname)
    if not HasAnimDictLoaded(dictname) then
        RequestAnimDict(dictname) 
        while not HasAnimDictLoaded(dictname) do 
            Citizen.Wait(1)
        end
    end
end

-------- TODO : EVENT FOR TARGET -------------

RegisterNetEvent('bikerveh')
AddEventHandler('bikerveh', function ()
    Vehicles_menu_biker()
end)

RegisterNetEvent('ambulancveh')
AddEventHandler('ambulanceveh', function ()
    Vehicles_menu_ambulance()
end)

RegisterNetEvent('vehmenuped')
AddEventHandler('vehmenuped', function ()
    Vehicles_menupdg()
end)

RegisterNetEvent('apuskenbadside')
AddEventHandler('apuskenbadside', function ()
    RemoveVehicles()
end)

RegisterNetEvent('cartelveh')
AddEventHandler('cartelveh', function ()
    Vehicles_menu_cartel()
end)

RegisterNetEvent('mafiaveh')
AddEventHandler('mafiaveh', function ()
    Vehicles_menu_mafia()
end)

RegisterNetEvent('gangsterveh')
AddEventHandler('gangsterveh', function ()
    Vehicles_menu_gangster()
end)

RegisterNetEvent('gangster2veh')
AddEventHandler('gangster2veh', function ()
    Vehicles_menu_gangster2()
end)

RegisterNetEvent('gangster3veh')
AddEventHandler('gangster3veh', function ()
    Vehicles_menu_gangster3()
end)

RegisterNetEvent('vagozveh')
AddEventHandler('vagozveh', function ()
    Vehicles_menu_vagoz()
end)

RegisterNetEvent('mechaveh', function ()
    Vehicles_menu_mechanic()
end)

RegisterNetEvent('mafiaboss', function ()
	TriggerEvent('esx_society:boss', 'mafia', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

RegisterNetEvent('gangboss', function ()
	TriggerEvent('esx_society:boss', 'gang', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

RegisterNetEvent('gang2boss', function ()
	TriggerEvent('esx_society:boss', 'gang2', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

RegisterNetEvent('gang3boss', function ()
	TriggerEvent('esx_society:boss', 'gang3', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

RegisterNetEvent('cartelboss', function ()
	TriggerEvent('esx_society:boss', 'cartel', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)


RegisterNetEvent('bikerboss', function ()
	TriggerEvent('esx_society:boss', 'cartel', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

exports.qtarget:AddBoxZone('bikerboss', vector3(472.11, -1310.68, 29.21), 2, 2, {
    name="bossbiker",
    heading=0,
    --debugPoly=true,
    minZ=27.21,
    maxZ=31.21
    }, {
        options = {
            {
                event = "bikerboss",
                icon = "far fas fa-tshirt",
                label = "Boss Biker Menu",
                job = {
                    ["biker"] = 2,
                }
            },
        },
        distance = 3.0
    })
    
exports.qtarget:AddBoxZone('mafiaboss', vector3(-95.12, 820.28, 235.72), 2, 2, {
    name= "bossmafia",
    heading=0,
    --debugPoly=true,
    }, {
        options = {
            {
                event = "mafiaboss",
                icon = "far fas fa-tshirt",
                label = "Employee Management",
                job = {
                    ["mafia"] = 3,
                }
            },
        },
        distance = 3.0
    })

exports.qtarget:AddBoxZone('gangboss', vector3(78.11, -1967.88, 21.12), 2, 2, {
    name="gangboss",
    heading=0,
    --debugPoly=true,
    minZ=19.12,
    maxZ=23.12
    }, {
        options = {
            {
                event = "gangboss",
                icon = "far fas fa-tshirt",
                label = "Employee Management",
                job = {
                    ["gang"] = 3,
                }
            },
        },
        distance = 3.0
    })

    exports.qtarget:AddBoxZone('gang2boss', vector3(979.21, -1833.61, 36.08), 2, 2, {
        name="gang2boss",
        heading=0,
        --debugPoly=true,
        minZ=34.08,
        maxZ=38.08
        }, {
            options = {
                {
                    event = "gang2boss",
                    icon = "far fas fa-tshirt",
                    label = "Employee Management",
                    job = {
                        ["gang2"] = 3,
                    }
                },
            },
            distance = 3.0
        })

        exports.qtarget:AddBoxZone('mobilgangster2', vector3(966.16, -1829.20, 31.22), 5.2, 7.0, {
            name="mobilgangster2",
            heading=5,
            --debugPoly=true,
            minZ=29.22,
            maxZ=33.22
            }, {
                options = {
                    {
                        event = "gangster2veh",
                        icon = "far fas fa-tshirt",
                        label = "Spawn Kendaraan Gangster",
                        job = {
                            ["gang2"] = 0,
                        }
                    },
                    {
                        event = "apuskenbadside",
                        icon = "far fas fa-tshirt",
                        label = "Hapus Kendaraan",
                        job = {
                            ["gang2"] = 0,
                        }
                    },
                },
                distance = 3.0
          })

          exports.qtarget:AddBoxZone('gang3boss', vector3(-810.81, 181.98, 76.74), 2, 2, {
            name="gang3boss",
            heading=0,
            --debugPoly=true
            minZ=76.4,
            maxZ=78.4
            }, {
                options = {
                    {
                        event = "gang3boss",
                        icon = "far fas fa-tshirt",
                        label = "Employee Management",
                        job = {
                            ["gang3"] = 3,
                        }
                    },
                },
                distance = 3.0
            })

            exports.qtarget:AddBoxZone('mobilgangster3', vector3(-817.49, 182.63, 72.23), 1, 2, {
                name="mobilgangster3",
                heading=0,
                --debugPoly=true,
                minZ=72.3,
                maxZ=74.3
                }, {
                    options = {
                        {
                            event = "gangster3veh",
                            icon = "far fas fa-tshirt",
                            label = "Spawn Kendaraan Gangster",
                            job = {
                                ["gang3"] = 0,
                            }
                        },
                        {
                            event = "apuskenbadside",
                            icon = "far fas fa-tshirt",
                            label = "Hapus Kendaraan",
                            job = {
                                ["gang3"] = 0,
                            }
                        },
                    },
                    distance = 7.0
              })

exports.qtarget:AddBoxZone('spawnped', vector3(1625.64, 3907.01, 33.75), 5, 5, {
    name="spawnped",
    heading=0,
    --debugPoly=true,
    minZ=31.75,
    maxZ=35.75
    }, {
        options = {
            {
                event = "vehmenuped",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Pedagang",
                job = {
                    ["pedagang"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["pedagang"] = 0,
                }
            },
        },
        distance = 3.0
  })

  exports.qtarget:AddBoxZone('spawnamb', vector3(351.39, -589.13, 74.16), 5, 5, {
    name="spawnamb",
    heading=0,
    --debugPoly=true,
    minZ=72.16,
    maxZ=76.16
    }, {
        options = {
            {
                event = "ambulanceveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Heli Ambulance",
                job = {
                    ["ambulance"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["ambulance"] = 0,
                }
            },
        },
        distance = 3.0
  })

exports.qtarget:AddBoxZone('mechspawn', vector3(51.51, 6550.98, 32.96), 7.4, 7.8, {
    name="mechspawn",
    heading=355,
    --debugPoly=true,
    minZ=30.96,
    maxZ=34.96
    }, {
        options = {
            {
                event = "mechaveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Mechanic",
                job = {
                    ["mechanic"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["mechanic"] = 0,
                }
            },
        },
        distance = 3.0
  })

  exports.qtarget:AddBoxZone('spawnmafia', vector3(-105.8, 833.06, 235.65), 10, 10, {
    name="spawnmafia",
    heading=0,
    --debugPoly=true,
    minZ=235.65,
    maxZ=240.65
    }, {
        options = {
            {
                event = "mafiaveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Mafia",
                job = {
                    ["mafia"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["mafia"] = 0,
                }
            },
        },
        distance = 3.0
  })

  exports.qtarget:AddBoxZone('mobilgangster', vector3(81.89, -1972.55, 20.91), 5.2, 7.0, {
    name="mobilgangster",
    heading=5,
    --debugPoly=true,
    minZ=18.91,
    maxZ=22.91
    }, {
        options = {
            {
                event = "gangsterveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Gangster",
                job = {
                    ["gang"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["gang"] = 0,
                }
            },
        },
        distance = 3.0
  })

  exports.qtarget:AddBoxZone('cartelveh', vector3(-1919.05, 2050.33, 140.74), 14.8, 10.6, {
    name="cartelveh",
    heading=348,
    --debugPoly=true,
    minZ=139.34,
    maxZ=143.34
    }, {
        options = {
            {
                event = "cartelveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Cartel",
                job = {
                    ["cartel"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["cartel"] = 0,
                }
            },
        },
        distance = 3.0
  })

  exports.qtarget:AddBoxZone('bikerveh', vector3(486.09, -1339.60, 29.25), 14.8, 10.6, {
    name="bikerveh",
    heading=348,
    --debugPoly=true,
    minZ=27.25,
    maxZ=31.25
    }, {
        options = {
            {
                event = "bikerveh",
                icon = "far fas fa-tshirt",
                label = "Spawn Kendaraan Biker",
                job = {
                    ["biker"] = 0,
                }
            },
            {
                event = "apuskenbadside",
                icon = "far fas fa-tshirt",
                label = "Hapus Kendaraan",
                job = {
                    ["biker"] = 0,
                }
            },
        },
        distance = 3.0
  })

-------- TODO : EXPORT EVENT TO TARGET -----------


function SetHandling(Vehicle, Data, Value)
    for theKey,property in pairs(Config_Badside.handlingData) do
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
    for index, value in ipairs(Config_Badside.handleMods) do
        SetHandling(vehicle, value[1], value[2])
    end
    SetHandling(vehicle, "vecCentreOfMassOffset" , Config_Badside.Vec1 )
    SetHandling(vehicle, "vecInertiaMultiplier" , Config_Badside.Vec2 )
    SetVehicleEnginePowerMultiplier(vehicle, 0.0)
end



-- The distance to check in front of the player for a vehicle   
local distanceToCheck = 2.0

-- The number of times to retry deleting a vehicle if it fails the first time 
local numRetries = 5

-- Add an event handler for the deleteVehicle event. Gets called when a user types in /dv in chat
RegisterNetEvent( "wk:deleteVehicle" )
AddEventHandler( "wk:deleteVehicle", function()
    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        local pos = GetEntityCoords( ped )

        if ( IsPedSittingInAnyVehicle( ped ) ) then 
            local vehicle = GetVehiclePedIsIn( ped, false )

            if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
            end 
        else
            local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
            local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

            if ( DoesEntityExist( vehicle ) ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
            end 
        end 
    end 
end )

function DeleteGivenVehicle( veh, timeoutMax )
    local timeout = 0 

    SetEntityAsMissionEntity( veh, true, true )
    DeleteVehicle( veh )

    if ( DoesEntityExist( veh ) ) then

        -- Fallback if the vehicle doesn't get deleted
        while ( DoesEntityExist( veh ) and timeout < timeoutMax ) do 
            DeleteVehicle( veh )

            -- The vehicle has been banished from the face of the Earth!
            if ( not DoesEntityExist( veh ) ) then 
            end 

            -- Increase the timeout counter and make the system wait
            timeout = timeout + 1 
            Citizen.Wait( 500 )

            -- We've timed out and the vehicle still hasn't been deleted. 
            if ( DoesEntityExist( veh ) and ( timeout == timeoutMax - 1 ) ) then
            end 
        end 
    else 
    end 
end 

-- Gets a vehicle in a certain direction
-- Credit to Konijima
function GetVehicleInDirection( entFrom, coordFrom, coordTo )
	local rayHandle = StartShapeTestCapsule( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 5.0, 10, entFrom, 7 )
    local _, _, _, _, vehicle = GetShapeTestResult( rayHandle )
    
    if ( IsEntityAVehicle( vehicle ) ) then 
        return vehicle
    end 
end