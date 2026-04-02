Config = {}

Config.Debug = true
-- For the main chunk of config use sv_config.lua

Config.IllegalTaskBlacklist = {
    -- Jobs in here cannot perform illegal tasks, if the script checks for it. Such as drug collection / selling.
    police = {},
    ambulance = {},
    mechanic = {}
}

Config.Zones = {
    Depot = {x = 1206.6942, y = -1262.4476, z = 35.2267, rad = 30},
    VehSpawn = {x = 1206.6942, y = -1262.4476, z = 35.2267, length = 1.5, width = 1.5, heading = 340, minZ = 33.2267, maxZ = 37.2267, vehHeading = 175.2},
}

Config.Uniform = {
    hat = {
        male = { drawable = 145,  texture = 0 },
        female = { drawable = 144,  texture = 0 }
    },

    glasses = {
        male = { drawable = 25,  texture = 0 },
        female = { drawable = 27,  texture = 0 }
    },

    jacket = {
        male = { drawable = 226,  texture = 0 },
        female = { drawable = 286,  texture = 0 }
    },

    arm = {
        male = { drawable = 30,  texture = 0 },
        female = { drawable = 31,  texture = 0 }
    },
    shirt = {
        male = { drawable = 181,  texture = 0 },
        female = { drawable = 36,  texture = 1 }
    },
    pants = {
        male = { drawable = 144,  texture = 0 },
        female = { drawable = 25,  texture = 0 }
    },
    shoes = {
        male = { drawable = 99,  texture = 3 },
        female = { drawable = 4,  texture = 0 }
    },
    mask = {
        male = { drawable = 185,  texture = 0 },
        female = { drawable = 185,  texture = 0 }
    }
}

Config.Vehicles = {
    {name = 'cruiser80', label = 'Suv', desc = 'Jangan Lupa Dibawa Pulang'}, -- Boxville
    {name = 'elsapek', label = 'Pickup', desc = 'Jangan Lupa Dibawa Pulang'}, -- Speedo
}


Config.Recipes = {
	['washed_stone'] = {
		Amount = 4,
		Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Anim = "machinic_loop_mechandplayer",
		Required = { 
			['stone'] = 4,
		}
	},

    ['cutted_wood'] = {
		Amount = 3,
		Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Anim = "machinic_loop_mechandplayer",
		Required = { 
			['wood'] = 1,
		}
	},

    ['packaged_wood'] = {
		Amount = 1,
		Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Anim = "machinic_loop_mechandplayer",
		Required = { 
			['cutted_wood'] = 3,
		}
	},

    ['petrol_raffin'] = {
		Amount = 1,
		Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Anim = "machinic_loop_mechandplayer",
		Required = { 
			['petrol'] = 1,
		}
	},

    ['essence'] = {
		Amount = 1,
		Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Anim = "machinic_loop_mechandplayer",
		Required = { 
			['petrol_raffin'] = 1,
		}
	},
}

-------------------sell config

Config.Invincible = true
Config.Frozen = true
Config.Stoic = true
Config.FadeIn = true
Config.DistanceSpawn = 20.0


Config.GenderNumbers = {
    ['male'] = 4,
    ['female'] = 5
}

Config.PedList = {
    {
        model = `a_m_m_rurmeth_01`,
        coords = vector4(464.8719, -743.8241, 26.3622, 94.3720), --export
        gender = 'male'
    },

    {
        model = `a_m_m_rurmeth_01`,
        coords = vector4(1321.0709, 4314.7148, 37.1477, 84.6804), -- illgal
        gender = 'male'
    },

    {
        model = `a_m_m_rurmeth_01`,
        coords = vector4(1477.1555, 2723.5627, 36.5677, 32.53), -- depot buah sandyshores
        gender = 'male'
    },
}

Config.Locations = {
    legion = {
        location = vector3(464.8719, -743.8241, 27.3622), -- Location of the NPC.
        heading = 94.3720, -- Direction of NPC.
        model = `a_m_m_hillbilly_01`, -- Model of the NPC for the qtarget use.
        zcoords = {26.5, 28.5},
        blip = {label = 'Pasar Modern', sprite = 207, colour = 2}, -- Blip info.
        event = nil,
        sellableitems = { -- Items that you're able to sell.
            packaged_wood = {icon = 'fas fa-tree', label = 'Packaged Wood ', reqamount = 1, costeach = 250}, -- butcher ayam
            gold = {icon = 'fas fa-coins', label = 'Gold ', reqamount = 1, costeach = 200},
            iron = {icon = 'fas fa-coins', label = 'Iron ', reqamount = 1, costeach = 150},
            copper = {icon = 'fas fa-coin', label = 'Copper ', reqamount = 1, costeach = 100},
            diamond = {icon = 'fas fa-gem', label = 'Diamond ', reqamount = 1, costeach = 1500},
            packaged_chicken = {icon = 'fa-solid fa-drumstick', label = 'Ayam Fillet', reqamount = 1, costeach = 150},
            essence = {icon = 'fas fa-oil', label = 'Pelumas', reqamount = 1, costeach = 300},
            meat = {icon = 'fas fa-steak', label = 'Daging Rusa', reqamount = 1, costeach = 85},
            leather = {icon = 'fas fa-steak', label = 'Kulit Rusa', reqamount = 1, costeach = 500},
            sususapi = {icon = 'fas fa-steak', label = 'Susu Sapi', reqamount = 1, costeach = 150},


            -- fish legal
            mackerel = {icon = 'fas fa-fish', label = 'Mackerel fish ', reqamount = 1, costeach = 50},
            codfish = {icon = 'fas fa-fish', label = 'Cod fish ', reqamount = 1, costeach = 55},
            bass = {icon = 'fas fa-fish', label = 'Bass fish ', reqamount = 1, costeach = 60},
            flounder = {icon = 'fas fa-fish', label = 'Flounder fish ', reqamount = 1, costeach = 65},
            stingray = {icon = 'fas fa-fish', label = 'Stingray fish ', reqamount = 1, costeach = 65},

            -- 
            metalscrap = {icon = 'fas fa-coins', label = 'Exchange Metal Scrap ', reqamount = 1, costeach = 50},
            metalore = {icon = 'fas fa-coins', label = 'Exchange Metal Ore ', reqamount = 1, costeach = 75}, 

        }
    },

    illegalfish = {
        location = vector3(1321.0709, 4314.7148, 38.1477), -- Location of the NPC.
        heading = 84.6804, -- Direction of NPC.
        model = `a_m_m_hillbilly_01`, -- Model of the NPC for the qtarget use.
        zcoords = {37.1, 39.1},
        blip = {label = 'Pasar Modern', sprite = 207, colour = 2}, -- Blip info.
        event = nil,
        sellableitems = { -- Items that you're able to sell.
            -- fish ilegal
            dolphin = {icon = 'fas fa-fish', label = 'Dolphin fish', reqamount = 1, costeach = 4000},
            sharktiger = {icon = 'fas fa-fish', label = 'SharktTger fish ', reqamount = 1, costeach = 5000},
            sharkhammer = {icon = 'fas fa-fish', label = 'SharkHammer fish ', reqamount = 1, costeach = 6000},
            killerwhale = {icon = 'fas fa-fish', label = 'KillerWhale fish ', reqamount = 1, costeach = 10000},

            --- robbery item
            goldbar = {icon = 'fas fa-coins', label = 'Exchange Gold ', reqamount = 1, costeach = 750},
            band = {icon = 'fas fa-coins', label = 'Exchange Money ', reqamount = 1, costeach = 0.8},
            dia_box = {icon = 'fas fa-coins', label = 'Exchange Diamond ', reqamount = 1, costeach = 750},

            -- Illegal item
            metalingot = {icon = 'fas fa-coins', label = 'Exchange Metal Ingot ', reqamount = 1, costeach = 250},
            coral = {icon = 'fa-solid fa-seedling', label = 'Rumput Laut', reqamount = 1, costeach = 100},
        }
    },

    tokobuah = {
        location = vector3(1477.1555, 2723.5627, 37.5677), -- Location of the NPC.
        heading = 32.53, -- Direction of NPC.
        model = `a_m_m_hillbilly_01`, -- Model of the NPC for the qtarget use.
        zcoords = {36.5, 38.5},
        blip = {label = 'Depot Buah', sprite = 365, colour = 2}, -- Blip info.
        event = nil,
        sellableitems = { -- Items that you're able to sell.
            -- fish ilegal
            strawberry = {icon = 'fa-solid fa-strawberry', label = 'Strawberry', reqamount = 1, costeach = 200},
            apel = {icon = 'fa-solid fa-strawberry', label = 'Apel', reqamount = 1, costeach = 200},
            padi = {icon = 'fa-solid fa-wheat', label = 'Padi ', reqamount = 1, costeach = 200},
            potatoe = {icon = 'fa-solid fa-wheat', label = 'Kentang ', reqamount = 1, costeach = 200},
            lettuce = {icon = 'fa-solid fa-salad', label = 'Selada', reqamount = 1, costeach = 200},
            coconut = {icon = 'fa-solid fa-coconut', label = 'Kelapa', reqamount = 1, costeach = 200},

        }
    },
}

Config.ChickenField = vector3(2298.5176, 4933.2822, 41.4146)


Config.pedselllist = {
    'ig_abigail',
    'csb_abigail',
    'u_m_y_abner',
    'a_m_m_afriamer_01',
    'ig_mp_agent14',
    'csb_mp_agent14',
    'csb_agent',
    's_f_y_airhostess_01',
    's_m_y_airworker',
    'u_m_m_aldinapoli',
    'ig_amandatownley',
    'cs_amandatownley',
    's_m_y_ammucity_01',
    's_m_m_ammucountry',
    'ig_andreas',
    'cs_andreas',
    'csb_anita',
    'u_m_y_antonb',
}