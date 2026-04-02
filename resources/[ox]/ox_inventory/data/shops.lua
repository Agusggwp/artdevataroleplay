return {
	General = {
		name = 'Shop',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'roti', price = 1000 },
			{ name = 'water', price = 1000 },
			{ name = 'phone', price = 50000 },
			{ name = 'WEAPON_PICKAXE', price = 50000},
			{ name = 'WEAPON_HATCHET', price = 50000 },
			{ name = 'WEAPON_MACHETE' , price = 50000}
		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'soju', price = 5000 },
			{ name = 'amer', price = 5000 },
			{ name = 'arak', price = 4000 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	--[[YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'lockpick', price = 10 }
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},]]

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'WEAPON_KNIFE', price = 50000 },
			{ name = 'WEAPON_HATCHET', price = 50000 },
			{ name = 'WEAPON_BAT', price = 50000 },
			{ name = 'WEAPON_MACHETE' , price = 50000}
			--{ name = 'WEAPON_PISTOL', price = 100000, metadata = { registered = true }, license = 'weapon' }
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	PoliceArmoury = {
		name = 'Police Shop',
		jobs = {['police'] = 13},
		inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'ammo-rifle', price = 5, },
			{ name = 'ammo-38', price = 5, },
			{ name = 'ammo-heavysniper', price = 5, },
			{ name = 'WEAPON_FLASHLIGHT', price = 5 },  
			{ name = 'WEAPON_HEAVYSNIPER', price = 100000 },
			{ name = 'WEAPON_APPISTOL', price = 50000 },
			{ name = 'WEAPON_DOUBLEACTION', price = 50000 },
			{ name = 'WEAPON_NIGHTSTICK', price = 5 },
			{ name = 'WEAPON_PISTOL_MK2', price = 100000, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_SPECIALCARBINE_MK2', price = 100000, metadata = { registered = true, serial = 'POL' }, license = 'weapon'},
			{ name = 'WEAPON_STUNGUN', price = 5, metadata = { registered = true, serial = 'POL'} }
		}, locations = {
			vector3(459.04, -978.76, 30.68)
		}, targets = {
			{ loc = vector3(459.04, -978.76, 30.68), length = 1, width = 2.0, heading = 0.56, minZ = 28.68, maxZ = 32.68, distance = 3 }
		}
	},

	MoneyWashCard = {
		name = 'Moneywash card',
		inventory = {
			{ name = 'moneywash_card', price = 500000},
		}, locations = {
			vec3(451.51, -979.44, 30.68)
		}, targets = {
			{ loc = vec3(90.15, 3752.22, 40.77), length = 1.4, width = 2.6, heading = 70, minZ = 37.57, maxZ = 41.57, distance = 6 }
		}
	},

	Medicine = {
		name = 'Toko Obat',
		jobs = { ['ambulance'] = 2 },
 		inventory = {
			{ name = 'medikit', price = 100 },
			{ name = 'bandage', price = 1000 },
			{ name = 'tiketoplas', price = 90000 },
			{ name = 'walking_stick', price = 30000 }
		}, locations = {
			vector3(-658.6051, 323.0982, 83.0832)
		}, targets = {
			{ loc = vector3(-658.6051, 323.0982, 83.0832), length = 1, width = 1.8, heading = 340.0, minZ = 81.08, maxZ = 85.08, distance = 4 }
		}
	},
	KulkasPedagang = {
		name = 'Kulkas Pedagang',
		jobs = { ['pedagang'] = 2 },
		inventory = {
			{ name = 'water', price = 50 },
			{ name = 'gula', price = 50 },
			{ name = 'bgaram', price = 50 },
			{ name = 'minyak', price = 80 },
			{ name = 'kopi_bubuk', price = 50 },
			{ name = 'packaged_chicken', price = 100 },
			{ name = 'tomat', price = 50 },
			{ name = 'cabe', price = 50 },
			{ name = 'daun_bawang', price = 50 },
			{ name = 'kentang', price = 50 },
			{ name = 'teh', price = 50 },
			{ name = 'jeruk', price = 50 },
			{ name = 'tebu', price = 50 },
			{ name = 'radio', price = 12500 },
			{ name = 'phone', price = 7500 },
			{ name = 'mie', price = 70 },
		}, locations = {
			vec3(1609.11, 3915.74, 33.95)
		}, targets = {
			{ loc = vec3(1609.11, 3915.74, 33.95), length = 1.2, width = 1.2, heading = 0, minZ=31.95, maxZ=35.95, distance = 2 }
		}
	},

	MechanicShop = {
		name = 'Mechanic Shop',
		jobs = { ['mechanic'] = 0 },
		inventory = {
			{ name = 'fixkit', price = 500 },
			{ name = 'weapon_wrench', price = 10000 },
		}, locations = {
			vec3(871.5178, -2124.9417, 30.4544)
		}, targets = {
			{ loc = vec3(871.5178, -2124.9417, 30.4544), length = 1.5, width = 1.5, heading = 0, minZ=30.88, maxZ=34.88, distance = 2 }
		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'WEAPON_PISTOL50', price = 1000000, metadata = { registered = false	}, currency = 'black_money' },
			{ name = 'WEAPON_MINISMG', price = 1300000, metadata = { registered = false }, currency = 'black_money' },
            { name = 'WEAPON_REVOLVER', price = 1850000, metadata = { registered = false	}, currency = 'black_money' },
            { name = 'WEAPON_ASSAULTRIFLE', price = 2000000, metadata = { registered = false	}, currency = 'black_money' },
            { name = 'WEAPON_CARBINERIFLE_MK2', price = 2000000, metadata = { registered = false	}, currency = 'black_money' },
            { name = 'WEAPON_MICROSMG', price = 2000000, metadata = { registered = false	}, currency = 'black_money' },
            { name = 'WEAPON_SMG', price = 2000000, metadata = { registered = false	}, currency = 'black_money' },
            { name = 'WEAPON_SNIPERRIFLE', price = 2200000, metadata = { registered = false	}, currency = 'black_money' }
		}, locations = {
			vec3(583.6544, -3114.1340, 6.0693)
		}, targets = {
            { loc = vec3(583.6544, -3114.1340, 6.0693), length = 2, width = 2, heading = 0, minZ=110.01, maxZ=120.01, distance = 2 }
		}
	},
}
