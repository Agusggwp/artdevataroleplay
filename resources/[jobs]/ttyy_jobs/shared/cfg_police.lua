Cfg_Police                            = {}

Cfg_Police.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Cfg_Police.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Cfg_Police.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Cfg_Police.MarkerColor                = {r = 50, g = 50, b = 204}

Cfg_Police.EnablePlayerManagement     = true -- Enable if you want society managing.
Cfg_Police.EnableArmoryManagement     = true
Cfg_Police.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Cfg_Police.EnableESXOptionalneeds     = false -- Enable if you're using esx_optionalneeds
Cfg_Police.EnableLicenses             = false -- Enable if you're using esx_license.

Cfg_Police.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Cfg_Police.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Cfg_Police.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Cfg_Police.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Cfg_Police.CustomPeds below to customize peds.

Cfg_Police.EnableESXService           = false -- Enable esx service?
Cfg_Police.MaxInService               = -1 -- How many people can be in service at once? Set as -1 to have no limit

Cfg_Police.Locale                     = 'en'

Cfg_Police.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(457.8, -981.3, 30.7)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(434.23, -1021.57, 28.74), heading = 178.2, radius = 6.0}				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	}

}

Cfg_Police.AuthorizedVehicles = {

	car = {
		recruit = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
		{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
		{ model = 'mazda6', label = 'Mazda polisi', price = 5000 }
		},
		
		briptu = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
		{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
		{ model = 'mazda6', label = 'Mazda polisi', price = 5000 }
		},
		
		bripda = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
		{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
		{ model = 'mazda6', label = 'Mazda polisi', price = 5000 }
		},
		
		brigpol = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
		{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
		{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
		{ model = 'fd2', label = 'Honda polisi', price = 5000 }
		},
		
		bripka = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		aipda = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		officer = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		ipda = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
		{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
		{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
		{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
		{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
		{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		iptu = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		sergeant = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		kompol = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 },
		},
		
		akbp = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 },
		},
		
		intendent = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 },
		},
		
		brigjenpol = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 },
		},
		
		lieutenant = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 },
		},
		
		chef = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'polp1', label = 'Mclaren polisi', price = 5000 },
			{ model = 'pbus', label = 'Bus polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		},
		
		boss = {
			{ model = 'klx150', label = 'Motor polisi', price = 5000 },
			{ model = 'rfw_ninja', label = 'Ninja polisi', price = 5000 },
			{ model = 'r1200rtp', label = 'Motor polisi', price = 5000 },
			{ model = 'g63amg6x6cop', label = 'Mobil polisi', price = 5000 },
			{ model = 'mazda6', label = 'Mazda polisi', price = 5000 },
			{ model = 'wolf1', label = 'Riot polisi', price = 5000 },
			{ model = 'polp1', label = 'Mclaren polisi', price = 5000 },
			{ model = 'pbus', label = 'Bus polisi', price = 5000 },
			{ model = 'barracuda-j', label = 'Barracuda polisi', price = 5000 }
		}
		},
		
		helicopter = {
			recruit = {},
		
			officer = {},
		
			sergeant = {},
		
			chef = {
				{model = 'eurocopter', label = 'eurocopter', price = 5000}
			},

			brigjenpol = {
				{model = 'eurocopter', label = 'eurocopter', price = 5000}

			},

			lieutenant = {
				{model = 'eurocopter', label = 'eurocopter', price = 5000}

			},

			intendent = {
				{model = 'eurocopter', label = 'eurocopter', price = 5000}

			},
		
			boss = {
				{model = 'eurocopter', label = 'eurocopter', price = 5000}
			}
		}
}

Cfg_Police.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Cfg_Police.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 24,  ['tshirt_2'] = 0,
			['torso_1'] = 141,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	bripda_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	briptu_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	brigpol_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	bripka_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},	
	aipda_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 4,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},	
	ipda_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 141,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 5,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	iptu_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 36,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},	
	sergeant_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	kompol_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	akbp_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	brigjenpol_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	lieutenant_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 91,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 143,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 144,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0
		}
	},
	boss_wear = {
		male = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 1,
			['torso_1'] = 144,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 191,   ['torso_2'] = 4,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 77,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 0
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	},
	olahraga = {
		male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 63,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 8,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['helmet_1'] = 75,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 67,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 58,   ['pants_2'] = 1,
			['shoes_1'] = 32,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	lapangan = {
		male = {
            ['tshirt_1'] = 31,  ['tshirt_2'] = 0,
            ['torso_1'] = 324,   ['torso_2'] = 3,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 11,
            ['pants_1'] = 83,   ['pants_2'] = 0,
            ['shoes_1'] = 86,   ['shoes_2'] = 0,
            ['helmet_1'] = 33,  ['helmet_2'] = 2,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 33,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 29,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	polantas = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 55,   ['pants_2'] = 0,
			['shoes_1'] = 102,   ['shoes_2'] = 9,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	},
	gegana = {
		male = {
			['bproof_1'] = 3,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	polri1 = {
		male = {
			['bproof_1'] = 2,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	polri2 = {
		male = {
			['bproof_1'] = 4,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	polri3 = {
		male = {
			['bproof_1'] = 5,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	}


}

