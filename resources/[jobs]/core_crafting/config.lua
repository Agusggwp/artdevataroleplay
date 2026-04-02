Config = {

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Workbench',

UseLimitSystem = false, -- Enable if your esx uses limit system

CraftingStopWithDistance = true, -- Crafting will stop when not near workbench

ExperiancePerCraft = 5, -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = true, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {


['weapons'] = {
	Label = 'WEAPONS',
	Image = 'WEAPONS',
	Jobs = {'mafia'}
},

['armor'] = {
	Label = 'ARMOR',
	Image = 'ARMOR',
	Jobs = {'gang','gang2', 'gang3'}
},

['ammo'] = {
	Label = 'AMMO',
	Image = 'clip',
	Jobs = {'mafia'}
},

['makanan'] = {
	Label = 'Makanan',
	Image = 'burger',
	Jobs = {'pedagang'}
}

--[[[['medical'] = {
	Label = 'MEDICAL',
	Image = 'bandage',
	Jobs = {'mafia'}
}]]


},

PermanentItems = { -- Items that dont get removed when crafting
	['wrench'] = true
},

Recipes = { -- Enter Item name and then the speed value! The higher the value the more torque

['burger'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 2, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['packaged_chicken'] = 4, -- item name and count, adding items that dont exist in database will crash the script
		['tomat'] = 4,
		['minyak'] = 4
	}
}, 

['satekulit'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['packaged_chicken'] = 10, -- item name and count, adding items that dont exist in database will crash the script
		['tomat'] = 8,
		['minyak'] = 3
	}
}, 

['nasikatsu'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['packaged_chicken'] = 10, -- item name and count, adding items that dont exist in database will crash the script
		['tomat'] = 7,
		['minyak'] = 3
	}
}, 

['pizza'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['kentang'] = 7, -- item name and count, adding items that dont exist in database will crash the script
		['tomat'] = 7,
		['daun_bawang'] =9,
		['cabe'] = 5
	}
}, 

['ramen'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['water'] = 2, -- item name and count, adding items that dont exist in database will crash the script
		['mie'] = 3,
		['daun_bawang'] = 10,
		['cabe'] = 7
	}
}, 

['sushi'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 95, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['water'] = 2, -- item name and count, adding items that dont exist in database will crash the script
		['mie'] = 2,
		['daun_bawang'] = 10,
		['cabe'] = 7
	}
}, 

['jusjeruk'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 95, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['jeruk'] = 4, -- item name and count, adding items that dont exist in database will crash the script
		['tebu'] =8,
		['water'] = 4,
		['gula'] = 4
	}
}, 

['icetea'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 95, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['teh'] = 4, -- item name and count, adding items that dont exist in database will crash the script
		['tebu'] = 8,
		['water'] = 4,
		['gula'] = 6
	}
}, 

['kopi'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'makanan', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'pedagang'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 4, -- The amount that will be crafted
	SuccessRate = 95, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['kopi_bubuk'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['water'] = 4,
		['gula'] = 4
	}
}, 
------------------------------------------------------------GANG, GANG2, GANG3------------------------------------------------------------------------------------------------
['HEAVYARMOR'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'armor', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'gang','gang2','gang3'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 35, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 20,
		['diamond'] = 12,
		['iron'] = 30,
		['leather'] = 2
	}
},
------------------------------------------------------------------MAFIA-----------------------------------------------------------------------------------------------

['WEAPON_PISTOL50'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 25, -- item name and count, adding items that dont exist in database will crash the script
		['packaged_wood'] = 25,
		['gold'] = 12,
		['diamond'] = 5,
		['iron'] = 20
	}
},

['WEAPON_MICROSMG'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 35, -- item name and count, adding items that dont exist in database will crash the script
		['packaged_wood'] = 20,
		['gold'] = 15,
		['diamond'] = 8,
		['iron'] = 25
	}
},


--['WEAPON_SMG'] = {
	--Level = 3, -- From what level this item will be craftable
	--Category = 'weapons', -- The category item will be put in
	--isGun = false, -- Specify if this is a gun so it will be added to the loadout
	--Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	--JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	--Amount = 1, -- The amount that will be crafted
	--SuccessRate = 100, --  100% you will recieve the item
	--requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	--Time = 10, -- Time in seconds it takes to craft this item
	--Ingredients = { -- Ingredients needed to craft this item
		--['copper'] = 15, -- item name and count, adding items that dont exist in database will crash the script
		--['wood'] = 5,
		--['gold'] = 10,
		--['diamond'] = 5,
		--['iron'] = 15
	

--['WEAPON_SMG_MK2'] = {
	--Level = 3, -- From what level this item will be craftable
	--Category = 'weapons', -- The category item will be put in
	--isGun = false, -- Specify if this is a gun so it will be added to the loadout
	--Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	--JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	--Amount = 1, -- The amount that will be crafted
	--SuccessRate = 100, --  100% you will recieve the item
	--requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	--Time = 10, -- Time in seconds it takes to craft this item
	--Ingredients = { -- Ingredients needed to craft this item
		--['copper'] = 15, -- item name and count, adding items that dont exist in database will crash the script
		--['wood'] = 5,
		--['gold'] = 10,
		--['diamond'] = 5,
		--['iron'] = 15

['AMMO-50'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'ammo', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 10, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 35, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 12,
		['diamond'] = 10,
		['iron'] = 25
	}
},

['AMMO-44'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'ammo', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 10, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 5,
		['diamond'] = 5,
		['iron'] = 5
	}
},

['AMMO-9'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'ammo', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 10, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 5,
		['diamond'] = 5,
		['iron'] = 5
	}
},

['AMMO-RIFLE'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'ammo', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'yakuza'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 10, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 5,
		['diamond'] = 5,
		['iron'] = 5
	}
},

['AMMO-RIFLE2'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'ammo', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'yakuza'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 10, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 5, -- item name and count, adding items that dont exist in database will crash the script
		['gold'] = 5,
		['diamond'] = 5,
		['iron'] = 5
	}
},

['WEAPON_MACHINEPISTOL'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'yakuza'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 15, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 5,
		['gold'] = 10,
		['diamond'] = 7,
		['iron'] = 15
	}
},


--[[['WEAPON_MINISMG'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 15, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 5,
		['gold'] = 10,
		['diamond'] = 5,
		['iron'] = 15
	}]]


['WEAPON_REVOLVER_MK2'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'mafia'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 35, -- item name and count, adding items that dont exist in database will crash the script
		['packaged_wood'] = 30,
		['gold'] = 20,
		['diamond'] = 10,
		['iron'] = 30
	}
}

},

Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access

		{coords = vector3(2328.0642, 2570.0171, 46.6769), jobs = {'mafia'}, blip = false, recipes = {}, radius = 3.0 },

		{coords = vector3(1607.0, 3916.2, 33.96), jobs = {'pedagang'}, blip = false, recipes = {}, radius = 3.0 },

		{coords = vector3(1544.56, -2134.82, 77.81), jobs = {'gang','gang2','gang3'}, blip = false, recipes = {}, radius = 3.0 }
},
 

Text = {

    ['not_enough_ingredients'] = 'You dont have enough ingredients',
    ['you_cant_hold_item'] = 'You cant hold the item',
    ['item_crafted'] = 'Item crafted!',
    ['wrong_job'] = 'You cant open this workbench',
    ['workbench_hologram'] = '[~b~E~w~] Workbench',
    ['wrong_usage'] = 'Wrong usage of command',
    ['inv_limit_exceed'] = 'Inventory limit exceeded! Clean up before you lose more',
    ['crafting_failed'] = 'You failed to craft the item!'

}

}



function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['ttyy_nuipack']:Alert('inform', msg)

end
