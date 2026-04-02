Cfg_Pdg = {}
Cfg_Pdg.DrawDistance = 50.0

Cfg_Pdg.EnablePlayerManagement = true
Cfg_Pdg.EnableSocietyOwnedVehicles = false
Cfg_Pdg.EnableVaultManagement = true
Cfg_Pdg.EnableHelicopters = false
Cfg_Pdg.EnableMoneyWash = false
Cfg_Pdg.MaxInService = -1
Cfg_Pdg.Locale = 'en'

Cfg_Pdg.MissCraft = 10 -- %

Cfg_Pdg.AuthorizedVehicles = {
    { name = 'taco',  label = 'truck pedagang' },
    { name = 'dubsta3',  label = 'mobil pedagang' },
    { name = 'bagger',  label = 'motor pedagang' },
}


Cfg_Pdg.Blips = {
    Blip = {
        Pos   = {x = 1606.84, y = 3912.84, z = 33.96},
      Sprite  = 479,
      Display = 4,
      Scale   = 0.8,
      Colour  = 4,
    },
}

Cfg_Pdg.Zones = {
    Cloakrooms = {
		Pos   = {x = 0.34, y = 0.22, z = 0.0},
		Size  = {x = 1.5, y = 1.5, z = 0.4},
		Color = {r = 102, g = 102, b = 204},
		Type  = 1
    },

    Vaults = {
        Pos   = { x = 0, y = 0, z = 0 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = 0, y = 0, z = 0 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = {x = -593.31, y =  -1060.38, z =  22.34 },
        SpawnPoint   = {x = -596.16, y = -1059.0, z = 22.36},
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 93.12,
    },

    VehicleDeleters = {
        Pos   = { x = -596.16, y = -1059.0, z = 22.36},
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

    Helicopters = {
        Pos          = { x = 0, y = 0, z = 0 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    HelicopterDeleters = {
        Pos   = { x = 0, y = 0, z = 0 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

    BossActions = {
        Pos   = { x = -1205.62, y = -890.39, z = 13.0},
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------
    Flacons = {
        Pos   = { x = 2746.51, y = 3469.29, z = 55.68 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 23,
        Items = {
            { name = 'bread',      label = ('Roti'),   price = 500 },
            { name = 'hamburger',      label = ('Hamburger'),   price = 500 },
            { name = 'water',       label = ('Air Putih'),    price = 500 },
            { name = 'chocolate',     label = ('Coklat'),  price = 500 },
            { name = 'cigarett',    label = ('Rokok'), price = 500 },
            { name = 'cocacola',    label = ('Coca Cola'), price = 500 }
        },
    },

    NoAlcool = {
        Pos   = { x = 2749.34, y = 3476.36, z = 55.67 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
        Items = {
            { name = 'coffe',        label = ('Kopi'),     price = 500 },
            { name = 'contract',    label = ('Kontrak'), price = 1500 },
            { name = 'cupcake',      label = ('Kue'),   price = 500 },
            { name = 'hifi',      label = ('Radio'),   price = 500 },
            { name = 'icetea',    label = ('Es Teh'), price = 500 }
        },
    },

    Apero = {
        Pos   = { x = 2747.11, y = 3471.6, z = 55.67 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
        Items = {
            { name = 'lighter',   label = ('Korek'),    price = 500 },
            { name = 'milk',    label = ('Susu'),     price = 500 },
            { name = 'sandwich',     label = ('SandWich'),      price = 500 },
            { name = 'tequila',        label = ('Red Barel'),         price = 500 },
            { name = 'vodka',       label = ('Black Barel'),        price = 500 },
            { name = 'whisky',    label = ('Orang Muda'),     price = 500 }
        },
    },

    Ice = {
        Pos   = { x = 2747.71, y = 3473.71, z = 55.67 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 23,
        Items = {
            { name = 'gorengan',     label = ('Gorengan'),      price = 500 },
            { name = 'esbuah',     label = ('Es buah'),      price = 500 },
            { name = 'nasipadang',     label = ('Nasi padang'),      price = 500 },
            { name = 'radio',     label = ('Walkit Talkie'),      price = 5000 },
            { name = 'phone',     label = ('Handphone'),      price = 5000 },
            { name = 'beer',  label = ('Bir'),   price = 500 }
        },
    },
}

-----------------------
----- TELEPORTERS -----
Cfg_Pdg.TeleportZones = {
   --[[ 
  EnterBuilding = {
    Pos       = { x = 132.608, y = -1293.978, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = 126.742, y = -1278.386, z = 28.569 }
  },

  ExitBuilding = {
    Pos       = { x = 132.517, y = -1290.901, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_1'),
    Teleport  = { x = 131.175, y = -1295.598, z = 28.569 },
  },
  ]]--
--[[
  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Cfg_Pdg.Uniforms = {
  barman_outfit = {
    male = {
        ['tshirt_1'] = 6,  ['tshirt_2'] = 2,
        ['torso_1'] = 247,   ['torso_2'] = 25,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 37,
        ['pants_1'] = 24,   ['pants_2'] = 0,
        ['shoes_1'] = 10,   ['shoes_2'] = 0,
        ['bags_1'] = 41,  ['bags_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 8,    ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 5,
        ['pants_1'] = 44,   ['pants_2'] = 4,
        ['shoes_1'] = 0,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 2
    }},
}
