Config                            = {}

Config.DrawDistance               = 25.0

Config.Marker                     = { type = 21, x = 1.5, y = 1.5, z = 0.5, r = 243, g = 21, b = 102, a = 100, rotate = false }



Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = disable -- disable if you're using fivem-ipl or other IPL loaders
Config.Price = 2000


Config.Locale = 'en'

local second = 1000

local minute = 60 * second


Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 30 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 500000
Config.ttyyphone				  = false


Config.RespawnPoint = { coords = vector3(363.52, -592.75, 43.28), heading = 48.5 }
Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(-671.28, 317.88, 92.76),
			sprite = 61,
			scale  = 1.1,
			color  = 2
		},

		AmbulanceActions = {
			vector3(0,0,0)
		},

		Pharmacies = {
			vector3(0,0,0)
		},

		Vehicles = {
			{
				Spawner = vector3(295.0521, -590.829, 43.250),
				InsideShop = vector3(-850.02, -1226.43, 6.69),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-850.02, -1226.43, 6.69), heading = 345.18, radius = 4.0 },
					{ coords = vector3(288.90524291992,-589.10455322266,43.160835266113), heading = 340.6, radius = 4.0 },
					{ coords = vector3(309.4, -1442.5, 29.8), heading = 227.6, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(340.54476928711,-589.43127441406,74.165565490723),
				InsideShop = vector3(350.85894775391,-587.87347412109,74.165565490723),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(350.85894775391,-587.87347412109,74.165565490723), heading = 142.7, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(294.7, -1448.1, 29.0),
				To = { coords = vector3(272.8, -1358.8, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = { coords = vector3(295.8, -1446.5, 28.9), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(327.1803894043,-603.49633789063,43.283988952637),
				To = { coords = vector3(340.8127746582,-584.63348388672,74.165565490723), heading = 0.0 },
				Marker = { type = 21, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(338.75891113281,-583.86871337891,74.165557861328),
				To = { coords = vector3(328.05883789063,-601.60137939453,43.283988952637), heading = 0.0 },
				Marker = { type = 21, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		},

	},

	ShandyShours = {

		Blip = {
			coords = vector3(1840.03,3671.41,34.28),
			sprite = 61,
			scale  = 0.8,
			color  = 2
		},

		AmbulanceActions = {
			vector3(0,0,0)
		},

		Pharmacies = {
			vector3(0,0,0)
		},

		Vehicles = {
			{
				Spawner = vector3(1821.26,3685.42,34.28),
				InsideShop = vector3(1822.47, 3698.47, 33.3),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1833.15,3660.17,33.94), heading = 204.66, radius = 10.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(1827.1859130859,3678.3979492188,40.279056549072),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1832.42,3683.88,39.58), heading = 210.8, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(1823.93, 3670.05, 37.70),
				To = { coords = vector3(1828.39, 3673.21, 34.27), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(1828.15, 3677.2, 34.27),
				To = { coords = vector3(1824.32, 3673.48, 39.0), heading = 0.0 },
				Marker = { type = 21, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		},

	},

	Paleto = {

		Blip = {
			coords = vector3(-246.0970916748,6316.6303710938,32.408889770508),
			sprite = 61,
			scale  = 0.8,
			color  = 2
		},

		AmbulanceActions = {
			vector3(0,0,0)
		},

		Pharmacies = {
			vector3(0,0,0)
		},

		Vehicles = {
			{
				Spawner = vector3(-250.84037780762,6339.041015625,32.489318847656), --  Paleto
				InsideShop = vector3(-245.41296386719, 6340.1206054688, 32.001934051514),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-245.41296386719,6340.1206054688,32.001934051514), heading = 225.23, radius = 4.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(0, 0, 0),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(1832.42,3683.88,39.58), heading = 210.8, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(0, 0, 0),
				To = { coords = vector3(1828.39, 3673.21, 34.27), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(0, 0, 0),
				To = { coords = vector3(1824.32, 3673.48, 39.0), heading = 0.0 },
				Marker = { type = 21, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		},

	},
}

Config.AuthorizedVehicles = {

	car = {

		ambulance = {
			{ model = 'bf400', label = 'Riot Sabhara', price = 15000 },
			{ model = 'policeb', label = 'Dimansi EMS GS1200', price = 15000 }, ---EDIT BY ART
            { model = 'ems_dirtbike', label = 'Dimansi EMS MOTOR OFFROAD', price = 15000 },
            { model = 'gnr_thiluxems', label = 'Dimansi CAR EMS OFFROAD', price = 15000 },
		},
		
		doctor = {
			{ model = 'bf400', label = 'Riot Sabhara', price = 15000 },
            { model = 'policeb', label = 'Dimansi EMS GS1200', price = 15000 },
            { model = 'ems_dirtbike', label = 'Dimansi EMS MOTOR OFFROAD', price = 15000 },
            { model = 'gnr_thiluxems', label = 'Dimansi CAR EMS OFFROAD', price = 15000 },
		},
		chief_doctor = {
			{ model = 'bf400', label = 'Riot Sabhara', price = 15000 },
            { model = 'policeb', label = 'Dimansi EMS GS1200', price = 15000 },
            { model = 'ems_dirtbike', label = 'Dimansi EMS MOTOR OFFROAD', price = 15000 },
            { model = 'gnr_thiluxems', label = 'Dimansi CAR EMS OFFROAD', price = 15000 },
		},
		
		boss = {
			{ model = 'bf400', label = 'Riot Sabhara', price = 15000 },
            { model = 'policeb', label = 'Dimansi EMS GS1200', price = 15000 },
            { model = 'ems_dirtbike', label = 'Dimansi EMS MOTOR OFFROAD', price = 15000 },
            { model = 'gnr_thiluxems', label = 'Dimansi CAR EMS OFFROAD', price = 15000 },
		}
		},
		
		helicopter = {
			ambulance = {},
		
			doctor = {},
		
			chief_doctor = {},
		
			boss = {
				{model = 'BO105', props = {modLivery = 0}, price = 200000}
			}
		}

}

Config.Uniforms = {
	surgery_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 67,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 86,
			['pants_1'] = 40,   ['pants_2'] = 2,
			['shoes_1'] = 6,   ['shoes_2'] = 0,
			['chain_1'] = 126,    ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 69,  ['tshirt_2'] = 0,
			['torso_1'] = 83,   ['torso_2'] = 3,
			['decals_1'] = 67,   ['decals_2'] = 0,
			['arms'] = 99,
			['pants_1'] = 47,   ['pants_2'] = 3,
			['shoes_1'] = 4,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 14,    ['chain_2'] = 0
		}
	},
	covid19_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 68,  ['tshirt_2'] = 0,
			['torso_1'] = 253,   ['torso_2'] = 22,
			['decals_1'] = 59,   ['decals_2'] = 0,
			['arms'] = 77,
			['pants_1'] = 98,   ['pants_2'] = 22,
			['shoes_1'] = 77,   ['shoes_2'] = 3,
			['chain_1'] = 0,    ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 69,  ['tshirt_2'] = 0,
			['torso_1'] = 83,   ['torso_2'] = 3,
			['decals_1'] = 67,   ['decals_2'] = 0,
			['arms'] = 99,
			['pants_1'] = 47,   ['pants_2'] = 3,
			['shoes_1'] = 4,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 14,    ['chain_2'] = 0
		}
	}
}

Config_Oplas = {}

Config_Oplas.Price = 500000

Config_Oplas.DrawDistance = 100.0
Config_Oplas.MarkerSize   = {x = 1.5, y = 1.5, z = 1.0}
Config_Oplas.MarkerColor  = {r = 102, g = 102, b = 204}
Config_Oplas.MarkerType   = 1
Config_Oplas.Locale = 'en'

Config_Oplas.Zones = {}

Config_Oplas.Shops = {
  {x = 326.14,  y = -572.66,  z = 43.28},
}

for i=1, #Config_Oplas.Shops, 1 do

	Config_Oplas.Zones['Shop_' .. i] = {
	 	Pos   = Config_Oplas.Shops[i],
	 	Size  = Config_Oplas.MarkerSize,
	 	Color = Config_Oplas.MarkerColor,
	 	Type  = Config_Oplas.MarkerType
  }

end

ConfigPatient              = {}
ConfigPatient.DrawDistance = 5.0
ConfigPatient.ZoneSize     = {x = 0.3, y = 0.3, z = 0.3}
ConfigPatient.MarkerColor  = {r = 100, g = 100, b = 204}
ConfigPatient.MarkerType   = -1
ConfigPatient.Locale = 'en'

ConfigPatient.Zones = {
    {x = 318.29, y = -572.05, z = 43.28}, 
    {x = 324.29, y = -574.17, z = 43.28},
}
