Config = {}

Config.Locale = 'en'

Config.EnableVersionCheck = true -- If set to true you'll get a print in server console when your resource is out of date

-- If using split garages on first start all vehicles will default to legion garage. after that they will restore at the last garage you put it in.
Config.RestoreVehicles = false

-- Send Null Garage to impound 
Config.SetImpoundVehicle = true 

Config.TeleportToVehicle = true -- enable this if you have issues with vehicle mods not setting properly.

-- Default garage zone name the vehicles will be restored to
-- Ignore if not using split garages
Config.DefaultGarage = 'legion'

-- Setting to true will only allow you take out the vehicle from a garage you put it in
Config.SplitGarages = true

-- Enable ox_target, otherwise uses qtarget (deprecated)
Config.ox_target = false

Config.DefaultGaragePed = `s_m_y_airworker`

Config.DefaultImpoundPed = `s_m_y_construct_01`

Config.Blip = {
    Car = 50,
    Boat = 471,
    Aircraft = 572
}

Config.BlipColors = {
    Car = 3,
    Boat = 3,
    Aircraft =3 
}

Config.ImpoundPrices = {
    -- These are vehicle classes
    [0] = 23000, -- Compacts
    [1] = 25000, -- Sedans
    [2] = 25000, -- SUVs
    [3] = 28000, -- Coupes
    [4] = 22000, -- Muscle
    [5] = 28000, -- Sports Classics
    [6] = 25000, -- Sports
    [7] = 25000, -- Super
    [8] = 23000, -- Motorcycles
    [9] = 25000, -- Off-road
    [10] = 25000, -- Industrial
    [11] = 25000, -- Utility
    [12] = 26000, -- Vans
    [13] = 2000, -- Cylces
    [14] = 28000, -- Boats
    [15] = 25000, -- Helicopters
    [16] = 38000, -- Planes
    [17] = 0, -- Service
    [18] = 0, -- Emergency
    [19] = 0, -- Military
    [20] = 21500, -- Commercial
    [21] = 0 -- Trains (lol)
}

Config.PayInCash = true -- whether you want to pay impound price in cash, otherwise uses bank

Config.Impounds = {
    {
        label = "Car Impound",
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(409.25, -1623.08, 28.29, 228.84),
        zone = {name = 'innocence', x = 408.02, y = -1637.08, z = 29.29, l = 31.6, w = 26.8, h = 320, minZ = 28.29, maxZ = 32.29}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        blip = {
            scale = 0.8,
            sprite = 285,
            colour = 3
        },
        spawns = {
            vector4(416.83, -1628.29, 30.11, 140.43),
            vector4(419.58, -1629.71, 30.11, 141.98),
            vector4(421.17, -1636.00, 29.11, 88.21),
            vector4(420.05, -1638.93, 29.11, 88.95),
        }
    }
    --[[
        TEMPLATE:
        {
            label = "", -- Display label for the impound (Optional)
            type = 'car', -- can be 'car', 'boat' or 'aircraft',
            ped = `ped_model_name` -- Define the model model you want to use for the impound (Optional)
            pedCoords = vector4(x, y, z, h), -- Ped MUST be inside the create zone
            zone = {name = 'somename', x = X, y = X, z = X, l = X, w = X, h = X, minZ = X, maxZ = x}, -- l is length of the box zone, w is width, h is heading, take all walues from generated zone from /pzcreate
            blip = { -- Define specific blip setting for this impound (Optional)
                scale = 0.8,
                sprite = 285,
                colour = 3
            },
            spawns = { -- You can have as many as you'd like
                vector4(x, y, z, h),
                vector4(x, y, z, h)
            }
        },
    ]]
}

Config.Garages = {


    -- {
    --     label = 'Rumah King',
    --     type = 'car', -- car, boat or aircraft
    --     hideblip = true,
    --     pedCoords = vector4(-1101.6843, 354.2733, 67.4887, 5.4709), -- The Ped MUST be inside the PolyZone
    --     zone = {name = 'rumahmartin', x = -1101.6843, y = 354.2733, z = 67.4887, l = 20.0, w = 40.8, h = 31, minZ = 65.29, maxZ = 70.29}, -- The zone is only here for the ped to not have the impound option everywhere in the world
    --     spawns = {
    --         vector4(-1095.5372, 357.4976, 68.0722, 1.3327),
    --         vector4(-1102.3944, 362.5891, 68.1729, 1.9516),
    --     }
    -- },

    -- {
    --     label = 'Rumah Emely',
    --     type = 'car', -- car, boat or aircraft
    --     hideblip = true,
    --     pedCoords = vector4(-3199.8372, 824.5382, 7.9396, 130.4959), -- The Ped MUST be inside the PolyZone
    --     zone = {name = 'rumahwilcil', x = -3205.7158, y =820.1062, z =8.9271, l = 20.0, w = 40.8, h = 31, minZ = 4.29, maxZ = 10.29}, -- The zone is only here for the ped to not have the impound option everywhere in the world
    --     spawns = {
    --         vector4(-3211.8979, 828.8003, 8.4935, 211.7012),
    --         vector4(-3199.0693, 808.0797, 8.4946, 211.7417),
    --         vector4(-3190.7607, 819.4520, 8.4942, 120.1826),
    --     }
    -- },

    {
        label = 'Jemby Mansion',
        type = 'car', -- car, boat or aircraft
        hideblip = true,
        pedCoords = vector4(807.27, 3434.90, 57.85, 265.58), -- The Ped MUST be inside the PolyZone
        zone = {name = 'jembymansion', x = -816.30, y = 3436.23, z = 57.85, l = 20.0, w = 40.8, h = 31, minZ = 25.71, maxZ = 29.71}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        spawns = {
            vector4(814.95, 3438.47, 57.23, 179.52)
        }
    },


    ---------------------------------
    {
        label = 'Garasi Kota',
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(-307.32, -939.72, 30.08, 77.04), -- The Ped MUST be inside the PolyZone
        zone = {name = 'legion', x = -313.08, y = -944.96, z = 31.08, l = 20.0, w = 40.8, h = 31, minZ = 28.08, maxZ = 33.08}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        spawns = {
            vector4(-323.8678, -945.5960, 31.0806, 249.2736),
            vector4(-322.5359, -942.0374, 31.0806, 247.6747),
            vector4(-321.9314, -938.2953, 31.0806, 244.4989),
        }
    },
    {
        label = 'Import Garage',
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(764.5184, -3202.9016, 5.0802, 277.3384), -- The Ped MUST be inside the PolyZone
        zone = {name = 'garasi_impor', x = 767.6921, y = -3202.8682, z =5.9005, l = 30.0, w = 40.8, h = 31, minZ = 1.29, maxZ = 10.29}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        spawns = {
            vector4(757.7169, -3195.0605, 6.6396, 268.6890),
            vector4(771.3622, -3213.3347, 6.4676, 179.7937),
            vector4(776.9607, -3213.4331, 6.4676, 0.8735),
        }
    },
    {
        label = 'Vinewood Bowl',
        type = 'car',
        pedCoords = vector4(689.6161, 600.0172, 127.9114, 339.9018),
        zone = {name = 'vinewoodbowl', x = 693.2038, y = 608.3491, z = 127.9113, l = 50.0, w = 50.0, h = 0, minZ = 125.15, maxZ = 130.35},
        spawns = {
            vector4(684.9415, 605.0092, 128.4779, 340.8361),
            vector4(699.6969, 612.8006, 128.4782, 161.9059),
            vector4(696.2256, 600.9050, 128.4780, 338.8340),
            vector4(706.5355, 610.8737, 128.4781, 339.8347),
        }
    },
    
    {
        label = 'Paleto Bay Garage',
        type = 'car',
        pedCoords = vector4(140.62, 6613.02, 31.06, 183.37),
        zone = {name = 'paleto', x = 152.63, y = 6600.21, z = 30.84, l = 28.2, w = 27.2, h = 0, minZ = 30.84, maxZ = 34.84},
        spawns = {
            vector4(145.55, 6601.92, 31.67, 357.80),
            vector4(150.56, 6597.71, 31.67, 359.00),
            vector4(155.55, 6592.92, 31.67, 359.57),
            vector4(145.90, 6613.97, 31.64, 0.60),
            vector4(151.04, 6609.26, 31.69, 357.50),
            vector4(155.84, 6602.45, 31.86, 0.47),
        }
    },
    {
        label = 'Pillbox Hospital Garage',
        type = 'car',
        pedCoords = vector4(-690.72, 353.72, 77.12, 175.84),
        zone = {name = 'pilgarage', x = -685.36, y = 350.32, z = 78.12, l = 28.2, w = 27.2, h = 0, minZ = 76.12, maxZ = 80.12},
        spawns = {
            vector4(-688.84, 350.96, 78.12, 173.32),
            vector4(-685.52, 351.4, 78.12, 182.4),
            vector4(-681.84, 352.08, 78.12, 183.44),
        }
    },

    {
        label = 'Pedagang Public Garage',
        type = 'car',
        pedCoords = vector4(1617.52, 3901.76, 32.76150, 148.92),
        zone = {name = 'pedgarage', x = 1607.72, y = 3893.16, z = 32.36, l = 40.2, w = 35.2, h = 150.88, minZ = 30.36, maxZ = 34.36},
        spawns = {
            vector4(1607.48, 3893.28, 32.36247, 247.64)
        }
    },
    
    {
        label = 'Mekanik Public Garage',
        type = 'car',
        ped = `g_m_m_chigoon_01`,
        pedCoords = vector4(-1194.8524, -1495.2644, 4.3797, 18.0429),
        zone = {name = 'mekgarage', x = -1195.9442, y = -1501.2383, z = 4.3520, l = 40.2, w = 35.2, h = 0, minZ = 27.55, maxZ = 31.55},
        spawns = {
            vector4(-1182.59, -1491.21, 4.37, 126.16),
            --vector4(850.85, -2101.95, 30.22, 266.69),
            --vector4(850.85, -2105.32, 30.22, 266.69)
        }
    },

    --------------- KAPAL

    --[[{
        label = 'Highway Pier Garage',
        type = 'boat',
        pedCoords = vector4(-3428.27, 967.34, 7.35, 269.47),
        zone = {name = 'pier', x = -3426.48, y =  968.89, z = 8.35, l = 31.2, w = 39.2, h = 0, minZ = nil, maxZ = nil},
        spawns = {
            vector4(-3444.37, 952.64, 1.02, 98.70),
            vector4(-3441.02, 965.30, 0.17, 87.18),
        }
    },

    {
        label = 'L.S.M.Y.C',
        type = 'boat',
        pedCoords = vector4(-720.2437, -1324.3734, 0.5963, 136.2645),
        zone = {name = 'lsymc', x = -728.2803, y = -1331.6746, z = 1.5963, l = 31.2, w = 39.2, h = 0, minZ = nil, maxZ = nil},
        spawns = {
            vector4(-724.2203, -1329.2137, 0.3360, 228.3682),
            vector4(-730.3675, -1335.2556, 0.3602, 229.7064),
        }
    },]]
    ------------------- PESAWAT
    --[[{
        label = 'LSIA Garage',
        type = 'aircraft',
        pedCoords = vector4(-941.43, -2954.87, 12.95, 151.00),
        zone = {name = 'lsia', x = -968.31, y = -2992.47, z = 13.95, l = 94.4, w = 84.6, h = 330, minZ = nil, maxZ = nil},
        spawns = {
            vector4(-958.57, 2987.20, 13.95, 58.19),
            vector4(-971.89, 3008.83, 13.95, 59.47),
            vector4(-984.30, 3025.04, 13.95, 58.52),
        }
    }, ]]

    -------------------- JOB GARAGE

    {
        label = 'MRPD Police Garage',
        type = 'car',
        job = 'police',
        ped = `s_m_y_cop_01`,
        pedCoords = vector4(450.6633, -1027.3324, 27.5732, 5.1321),
        zone = {name = 'mrpd', x = 439.36, y = -1021.04, z = 28.83, l = 20, w = 40, h = 0, minZ = 27.03, maxZ = 31.03},
        spawns = {
            vector4(445.8637, -1024.3093, 29.0, 4.4456),
            vector4(442.5637, -1025.5530, 29.0, 1.7611),
            vector4(438.6664, -1027.0088, 29.0, 3.1104),
            vector4(434.8707, -1026.6675, 29.0, 3.9030),
            vector4(431.6170, -1026.7904, 29.0, 0.9789),
            vector4(427.3045, -1027.6506, 29.0, 5.8251)
        }
    },

    --[[{
        label = 'SSPD Police Garage',
        type = 'car',
        job = 'police',
        ped = `s_m_y_cop_01`,
        pedCoords = vector4(1873.2944, 3698.0300, 32.4261, 117.8698),
        zone = {name = 'sspd', x = 1868.7203, y = 3696.4321, z =33.5544, l = 30, w = 40, h = 0, minZ = 31.03, maxZ = 35.03},
        spawns = {
            vector4(1868.5653, 3694.5320, 33.6113, 208.3439),
            vector4(1863.0498, 3703.7837, 33.4582, 213.5157)
        }
    },]]

    --[[[{
        label = 'PBPD Police Garage',
        type = 'car',
        job = 'police',
        ped = `s_m_y_cop_01`,
        pedCoords = vector4(-459.2664, 6016.1953, 30.4901, 39.4542),
        zone = {name = 'pbpd', x = -467.4064, y =6026.5615, z =30.3405, l = 50, w = 50, h = 0, minZ = 29.03, maxZ = 33.03},
        spawns = {
            vector4(1868.5653, 3694.5320, 33.6113, 208.3439),
            vector4(1863.0498, 3703.7837, 33.4582, 213.5157)
        }
    },]]

    {
        label = 'Pillbox Ambulance Garage',
        type = 'car',
        job = 'ambulance',
        ped = `s_m_m_doctor_01`,
        pedCoords = vector4(1836.6040, 3668.1570, 32.6794, 215.7787),
        zone = {name = 'pillbox', x = 325.59, y = -549.27, z = 28.74, l = 25, w = 25, h = 0, minZ = 27.74, maxZ = 30.74},
        spawns = {
            vector4(316.1320, -553.3704, 28.7441, 275.8650),
            vector4(316.1125, -547.8329, 28.7441, 270.6976),
            vector4(320.7201, -541.8723, 28.7441, 186.8476),
        }
    },

    ---{
        ---label = 'Sandy Shores Ambulance Garage',
       --- type = 'car',
        ---job = 'ambulance',
        ---ped = `s_m_m_doctor_01`,
        ---pedCoords = vector4(1836.6040, 3668.1570, 32.6794, 215.7787),
        ---zone = {name = 'ssmc', x = 1836.6040, y = 3668.1570, z = 32.6794, l = 25, w = 25, h = 0, minZ = 31.74, maxZ = 34.74},
        ---spawns = {
           --- vector4(1835.3147, 3664.4331, 33.7299, 207.3740),
            ---vector4(1831.9177, 3662.4199, 33.8892, 208.4245),
            ---vector4(1828.6525, 3660.9238, 33.8738, 215.2174),
            ---vector4(1825.3737, 3659.2834, 33.9782, 212.3284),
       --- }
   --- }

 --   {
 --     label = 'Garasi kendaraan dinas',
 --     type = 'car',
 --     job = 'mechanic',
 --      ped = `s_m_y_cop_01`,
 --     pedCoords = vector4(859.06, -2132.46, 29.6, 356.53),
 --    zone = {name = 'dinasmek', x = 854.92, y = -2123.8, z = 29.6, l = 40, w = 40, h = 0, minZ = 27.6, maxZ = 31.6},
 --     spawns = {
 --         vector4(848.37, -2126.88, 29.6, 266.26)
 --     }
 -- }, 1985.2739, 3048.7659, 47.2150, 157.1418

    {
        label = 'FamA Garage Bikers',
        type = 'car',
        job = 'fama',
        ped = `a_m_m_hillbilly_01`,
        pedCoords = vector4(1996.892, 3038.717, 46.02271, 144.5669),
        zone = {name = 'garasia', x = 1991.1116, y = 3035.9951, z = 46.1267, l = 30, w = 40, h = 0, minZ = 43.13, maxZ = 49.13},
        spawns = {
            vector4(1991.1116, 3035.9951, 47.0464, 62.9373)
        }
    },

    {
        label = 'FamB Garage Bikers',
        type = 'car',
        job = 'famb',
        ped = `g_m_y_strpunk_01`,
        pedCoords = vector4(959.2010, -123.9873, 73.3531, 229.3892),
        zone = {name = 'garasib', x = 959.2010, y =-123.9873, z =73.3531, l = 30, w = 40, h = 0, minZ = 70.03, maxZ = 76.03},
        spawns = {
            vector4(957.0741, -127.6309, 74.6331, 235.8461),
            vector4(966.7460, -129.7672, 74.6402, 152.0870)
        }
    },

    {
        label = 'FamD Garage',
        type = 'car',
        job = 'famd',
        ped = 'ig_beverly',
        pedCoords = vector4(-100.77, 832.25, 234.8, 9.84),
        zone = {name = 'garasid', x = -106.38, y = 833.91, z = 234.8, l = 40, w = 40, h = 0, minZ = 232.8, maxZ = 236.8},
        spawns = {
            vector4(-106.38, 833.91, 235.38, 9.89)
        }
    },

    {
        label = 'FamE Garage',
        type = 'car',
        job = 'fame',
        ped = 'ig_beverly',
        pedCoords = vector4(-2671.9304, 1312.1204, 147.4450, 246.3936),
        zone = {name = 'garasie', x = -2663.7830, y = 1309.4852, z = 147.1185, l = 40, w = 40, h = 0, minZ = 145.1185, maxZ = 149.1185},
        spawns = {
            vector4(-2663.7830, 1309.4852, 147.1185, 271.2532)
        }
    },
    
    {
        label = 'FamF Garage',
        type = 'car',
        job = 'famf',
        ped = `g_m_y_korean_01`,
        pedCoords = vector4(-1796.03, 453.53, 127.4, 2.51),
        zone = {name = 'garasif', x = -1796.13, y = 457.42, z = 127.4, l = 30, w = 40, h = 0, minZ = 125.4, maxZ = 129.4},
        spawns = {
            vector4(-1796.13, 457.42, 128.31, 89.2)
        }
    },

    {
        label = 'FamG Garage',
        type = 'car',
        job = 'famg',
        ped = `g_m_y_korean_02`,
        pedCoords = vector4(-820.1039, 180.9217, 70.9326, 98.4848),
        zone = {name = 'garasig', x = -824.5882, y = 180.9136, z = 71.6051, l = 30, w = 40, h = 0, minZ = 69.6051, maxZ = 73.6051},
        spawns = {
            vector4(-824.5882, 180.9136, 71.6051, 141.9432)
        }
    },
    --[[{
        label = 'Pantai',
        type = 'car', -- car, boat or aircraft
        pedCoords = vector4(-1185.7372, -1508.6356, 4.3797, 33.5812), -- The Ped MUST be inside the PolyZone
        zone = {name = 'pantai', x = -313.08, y = -944.96, z = 31.08, l = 20.0, w = 40.8, h = 31, minZ = 28.08, maxZ = 33.08}, -- The zone is only here for the ped to not have the impound option everywhere in the world
        spawns = {
            vector4(-1181.6316, -1494.2935, 4.3797, 118.8083),
            --vector4(-306.2, -947.68, 31.08, 47.64),
            --vector4(-304.52, -944.16, 31.08, 66.0),
        }
    },]]
    
    --[[[{
        label = 'Garasi Pantai',
        type = 'car',
        ped = `g_m_y_korean_02`,
        pedCoords = vector4(-1185.9451, -1508.4446, 4.3797, 35.5081),
        zone = {name = 'garasipantai', x = -1183.9846, y = -1493.4824, z = 4.3797, l = 30, w = 40, h = 0, minZ = 65.4874, maxZ = 73.6051},
        
        spawns = {
            vector4(-1183.9846, -1493.4824, 4.3797, 40.4764),
            vector4(-1186.5529, -1486.3744, 4.3797, 131.5547)
        }
    },]]

    {
        label = 'FamI Garage',
        type = 'car',
        job = 'fami',
        ped = `g_m_m_chigoon_01`,
        pedCoords = vector4(82.4330, -1972.0966, 20.1084, 308.2339),
        zone = {name = 'garasii', x = 87.05, y = -1969.54, z = 20.75, l = 30, w = 40, h = 0, minZ = 18.75, maxZ = 22.75},
        spawns = {
            vector4(87.0508, -1969.5455, 20.7475, 315.4687)
        }
    },

    --[[
        TEMPLATE:
        {
            label = '', -- name that will be displayed in menus
            type = 'car', -- can be 'car', 'boat' or 'aircraft',
            job = 'jobName', -- Set garage to be only accessed and stored into by a job (Optional)
            -- If you want multiple jobs and grades you can do job = {['police'] = 0, ['mechanic'] = 3}
            ped = `ped_model_name`, -- Define the model model you want to use for the garage (Optional)
            pedCoords = vector4(x, y, z, h), -- Ped MUST be inside the create zone
            zone = {name = 'somename', x = X, y = X, z = X, l = X, w = X, h = X, minZ = X, maxZ = x}, -- l is length of the box zone, w is width, h is heading, take all walues from generated zone from /pzcreate
            blip = { -- Define specific blip setting for this garage (Optional)
                scale = 0.8,
                sprite = 357,
                colour = 3
            },
            spawns = { -- You can have as many as you'd like
                vector4(x, y, z, h),
                vector4(x, y, z, h)
            }
        },
    ]]
}
  
-- BoxZone:Create(vector3(228.68, -789.15, 30.59), 52.4, 43.6, {
--     name="legion",
--     heading=340,
--     --debugPoly =true,
--     minz =28.99,
--     maxz =32.99
--   })
