-- https://forge.plebmasters.de/objects
Config.CircleZones = {
    -- Rarity (1-5), 1 = guaranteed, 2 = very common, 5 = rare.
    -- Don't use 1 if you want different types of items to spawn.

    -- spacing: how far apart the objects should be.
    -- tool: should a tool be required? if so, what name.
    -- maxCount: how many objects can be in an area.
    -- blipInfo: if there should be a blip. Use examples below for help.
    -- minQty/maxQty: how much you may get from gathering from a node.

    Padi = {
        coords = vector3(257.5439, 6461.5698, 31.3273), radius = 20.0, spacing = 3, tool = nil, maxCount = 12,
        blipInfo = {label = 'Kebun Padi', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        info = {{model = 'prop_fib_plant_02', target = `prop_fib_plant_02`, item = 'padi', label = 'Padi', minQty = 2, maxQty = 5, rarity = 1}}
    },
    
    Kentang = {
        coords = vector3(2063.2, 4930.47, 41.07), radius = 20.0, spacing = 3, tool = nil, maxCount = 12,
        blipInfo = {label = 'Kebun kentang', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        info = {{model = 'prop_plant_cane_01a', target = `prop_plant_cane_01a`, item = 'potatoe', label = 'kentang', minQty = 2, maxQty = 5, rarity = 1}}
    },

    Apel = {
        coords = vector3(2094.03, 4836.9, 41.74), radius = 20.0, spacing = 3, tool = nil, maxCount = 12,
        blipInfo = {label = 'Kebun Apel', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        info = {{model = 'prop_tree_birch_05', target = `prop_tree_birch_05`, item = 'apel', label = 'Apel', minQty = 2, maxQty = 5, rarity = 1}}
    },

    Lettuce = {
        coords = vector3(572.3945, 6483.9575, 30.6971), radius = 15.0, spacing = 1, tool = nil, maxCount = 20,
        blipInfo = {label = 'Kebun Selada', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        info = {{model = 'prop_veg_crop_03_cab', target = `prop_veg_crop_03_cab`, item = 'lettuce', label = 'Selada', minQty = 2, maxQty = 5, rarity = 1}}
    },

    Strawberry = {
        coords = vector3(2019.6752, 4892.0415, 41.5037), radius = 20.0, spacing = 3, tool = nil, maxCount = 12,
        blipInfo = {label = 'Kebun Strawberry', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        info = {{model = 'prop_veg_crop_02', target = `prop_veg_crop_02`, item = 'strawberry', label = 'Strawberry', minQty = 2, maxQty = 5, rarity = 1}}
    },

    Kelapa = {
        coords = vector3(775.0781, 6623.2329, 1.7159), radius = 40.0, spacing = 15, tool = 'WEAPON_HATCHET', maxCount = 12,
        blipInfo = {label = 'Kebun Kelapa', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'plyr_front_takedown', dict = 'melee@hatchet@streamed_core'},
        toolInfo = {toolModel = 'prop_w_me_hatchet', xPos = 0.08, yPos = -0.1, zPos = -0.03, xRot = -75.0, yRot = 0.0, zRot = 10.0},
        info = {{model = 'prop_veg_crop_tr_02', target = `prop_veg_crop_tr_02`, item = 'coconut', label = 'Kelapa', minQty = 2, maxQty = 5, rarity = 1}}
    },

    Trees = {
        coords = vector3(1980.6299, 3424.7935, 42.4227), radius = 40.0, spacing = 8, tool = 'WEAPON_HATCHET', maxCount = 16,
        blipInfo = {label = 'Penebangan Pohon', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'plyr_front_takedown', dict = 'melee@hatchet@streamed_core'},
        toolInfo = {toolModel = 'prop_w_me_hatchet', xPos = 0.08, yPos = -0.1, zPos = -0.03, xRot = -75.0, yRot = 0.0, zRot = 10.0},
        info = {
            {model = 'prop_tree_fallen_pine_01', target = `prop_tree_fallen_pine_01`, item = 'wood', label = 'Pine Log', minQty = 2, maxQty = 5, rarity = 2},
            {model = 'prop_tree_olive_cr2', target = `prop_tree_olive_cr2`, item = 'wood', label = 'Olive Log', minQty = 2, maxQty = 5, rarity = 3},
            {model = 'prop_tree_eng_oak_cr2', target = `prop_tree_eng_oak_cr2`, item = 'wood', label = 'Oak Log', minQty = 2, maxQty = 5, rarity = 4}        
        }
    },
    Ores = {
        coords = vector3(2948.56, 2795.15, 40.74), radius = 20.0, spacing = 5, tool = 'WEAPON_PICKAXE', maxCount = 16,
        blipInfo = {label = 'Pertambangan', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'ground_attack_on_spot', dict = 'melee@large_wpn@streamed_core'},
        toolInfo = {toolModel = 'prop_tool_pickaxe', xPos = 0.08, yPos = -0.1, zPos = -0.03, xRot = -75.0, yRot = 0.0, zRot = 10.0},
        info = {
            {model = 'prop_rock_4_b', target = `prop_rock_4_b`, item = 'stone', label = 'Ore', minQty = 4, maxQty = 4, rarity = 1},
        }
    },
    Oil = {
        coords = vector3(643.84, 3015.16, 43.28), radius = 20.0, spacing = 5, tool = nil, maxCount = 16,
        blipInfo = {label = 'Tambang Minyak', blipSprite = 479, blipColour = 5},
        animInfo = {anim = 'machinic_loop_mechandplayer', dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'},
        --toolInfo = {toolModel = 'prop_tool_pickaxe', xPos = 0.08, yPos = -0.1, zPos = -0.03, xRot = -75.0, yRot = 0.0, zRot = 10.0},
        info = {
            {model = 'prop_barrel_01a', target = `prop_barrel_01a`, item = 'petrol', label = 'Oil Drum', minQty = 4, maxQty = 4, rarity = 1},
        }
    }
}

