-- Based off Scully's Sling Script
local currentWeapon, weapons = nil, {}
local holsters = {{},{},{},{},{},{}}

local WEAPONS = {
--  [`WEAPON_NAME`]					 = { objectName = 'model',					itemName = "WEAPON_NAME",				allowed = { pistol,back1,back2,melee1,melee2,meleeback}},
	[`WEAPON_EMPLAUNCHER`]			 = { objectName = 'w_lr_compactml', 		itemName = "WEAPON_EMPLAUNCHER",		allowed = {true,false,false,false,false,false, }},	
	[`WEAPON_PISTOL`]				 = { objectName = 'w_pi_pistol', 			itemName = "WEAPON_PISTOL",				allowed = {true,false,false,false,false,false, }},
	[`WEAPON_PISTOL50`]	 			 = { objectName = 'w_pi_pistol50', 			itemName = "WEAPON_PISTOL50",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_PISTOL_MK2`]			 = { objectName = 'w_pi_pistolmk2', 		itemName = "WEAPON_PISTOL_MK2",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_STUNGUN`]	 			 = { objectName = 'w_pi_stungun', 			itemName = "WEAPON_STUNGUN",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_STUNGUN_MP2`]			 = { objectName = 'w_pi_stungun_mp', 		itemName = "WEAPON_STUNGUN_MP2",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_VINTAGEPISTOL`]		 = { objectName = 'w_pi_vintage_pistol',	itemName = "WEAPON_VINTAGEPISTOL",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_NAVYREVOLVER`]			 = { objectName = 'w_pi_wep1_gun', 			itemName = "WEAPON_NAVYREVOLVER",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_APPISTOL`]	 			 = { objectName = 'w_pi_appistol', 			itemName = "WEAPON_APPISTOL",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_CERAMICPISTOL`]		 = { objectName = 'w_pi_ceramic_pistol', 	itemName = "WEAPON_CERAMICPISTOL",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_COMBATPISTOL`]			 = { objectName = 'w_pi_combatpistol', 		itemName = "WEAPON_COMBATPISTOL",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_COMPACTRIFLE`]			 = { objectName = 'w_ar_assaultrifle_smg', 	itemName = "WEAPON_COMPACTRIFLE",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_SMG_MK2`]	 			 = { objectName = 'w_sb_smgmk2', 			itemName = "WEAPON_SMG_MK2",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_FLAREGUN`]	 			 = { objectName = 'w_pi_flaregun', 			itemName = "WEAPON_FLAREGUN",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_HEAVYPISTOL`]			 = { objectName = 'w_pi_heavypistol', 		itemName = "WEAPON_HEAVYPISTOL",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_MICROSMG`]	 			 = { objectName = 'w_sb_microsmg', 			itemName = "WEAPON_MICROSMG",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_MINISMG`]	 			 = { objectName = 'w_sb_minismg', 			itemName = "WEAPON_MINISMG",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_RAYPISTOL`]			 = { objectName = 'w_pi_raygun', 			itemName = "WEAPON_RAYPISTOL",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_REVOLVER`]	 			 = { objectName = 'w_pi_revolver', 			itemName = "WEAPON_REVOLVER",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_REVOLVER_MK2`]			 = { objectName = 'w_pi_revolvermk2', 		itemName = "WEAPON_REVOLVER_MK2",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_SNSPISTOL`]			 = { objectName = 'w_pi_sns_pistol', 		itemName = "WEAPON_SNSPISTOL",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_SNSPISTOL_MK2`]		 = { objectName = 'w_pi_sns_pistolmk2', 	itemName = "WEAPON_SNSPISTOL_MK2",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_MARKSMANPISTOL`]		 = { objectName = 'w_pi_singleshot', 		itemName = "WEAPON_MARKSMANPISTOL",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_DOUBLEACTION`]	 		 = { objectName = 'w_pi_wep1_gun', 			itemName = "WEAPON_DOUBLEACTION",		allowed = {true,false,false,false,false,false, }},
	[`WEAPON_DBSHOTGUN`]	 		 = { objectName = 'w_sg_doublebarrel', 		itemName = "WEAPON_DBSHOTGUN",			allowed = {true,false,false,false,false,false, }},
	[`WEAPON_ADVANCEDRIFLE`]		 = { objectName = 'w_ar_advancedrifle',		itemName = "WEAPON_ADVANCEDRIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_ASSAULTRIFLE`]	 		 = { objectName = 'w_ar_assaultrifle', 		itemName = "WEAPON_ASSAULTRIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_ASSAULTRIFLE_MK2`]		 = { objectName = 'w_ar_assaultriflemk2', 	itemName = "WEAPON_ASSAULTRIFLE_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_ASSAULTSHOTGUN`]		 = { objectName = 'w_sg_assaultshotgun', 	itemName = "WEAPON_ASSAULTSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_ASSAULTSMG`]	 		 = { objectName = 'w_sb_assaultsmg',		itemName = "WEAPON_ASSAULTSMG",			allowed = {false,true,false,false,false,false, }},
	[`WEAPON_BULLPUPRIFLE`]	 		 = { objectName = 'w_ar_bullpuprifle', 		itemName = "WEAPON_BULLPUPRIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_BULLPUPRIFLE_MK2`]		 = { objectName = 'w_ar_bullpupriflemk2', 	itemName = "WEAPON_BULLPUPRIFLE_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_BULLPUPSHOTGUN`]		 = { objectName = 'w_sg_bullpupshotgun', 	itemName = "WEAPON_BULLPUPSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_CARBINERIFLE`]	 		 = { objectName = 'w_ar_carbinerifle', 		itemName = "WEAPON_CARBINERIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_CARBINERIFLE_MK2`]		 = { objectName = 'w_ar_carbineriflemk2', 	itemName = "WEAPON_CARBINERIFLE_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_COMBATMG`]	 			 = { objectName = 'w_mg_combatmg', 			itemName = "WEAPON_COMBATMG",			allowed = {false,true,false,false,false,false, }},
	[`WEAPON_COMBATMG_MK2`]	 		 = { objectName = 'w_mg_combatmgmk2', 		itemName = "WEAPON_COMBATMG_MK2",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_GRENADELAUNCHER`]		 = { objectName = 'w_lr_grenadelauncher', 	itemName = "WEAPON_GRENADELAUNCHER",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_GUSENBERG`]	 		 = { objectName = 'w_sb_gusenberg', 		itemName = "WEAPON_GUSENBERG",			allowed = {false,true,false,false,false,false, }},
	[`WEAPON_HEAVYSHOTGUN`]	 		 = { objectName = 'w_sg_heavyshotgun', 		itemName = "WEAPON_HEAVYSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_COMBATSHOTGUN`]		 = { objectName = 'w_sg_pumpshotgunh4', 	itemName = "WEAPON_COMBATSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_HEAVYSNIPER`]	 		 = { objectName = 'w_sr_heavysniper', 		itemName = "WEAPON_HEAVYSNIPER",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_HEAVYSNIPER_MK2`]		 = { objectName = 'w_sr_heavysnipermk2', 	itemName = "WEAPON_HEAVYSNIPER_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SWEEPERSHOTGUN`]		 = { objectName = 'w_sg_sweeper', 			itemName = "WEAPON_SWEEPERSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_MARKSMANRIFLE`]		 = { objectName = 'w_sr_marksmanrifle', 	itemName = "WEAPON_MARKSMANRIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_MARKSMANRIFLE_MK2`]	 = { objectName = 'w_sr_marksmanriflemk2',  itemName = "WEAPON_MARKSMANRIFLE_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_MG`]	 				 = { objectName = 'w_mg_mg', 				itemName = "WEAPON_MG",					allowed = {false,true,false,false,false,false, }},
	[`WEAPON_MUSKET`]	 			 = { objectName = 'w_ar_musket', 			itemName = "WEAPON_MUSKET",				allowed = {false,true,false,false,false,false, }},
	[`WEAPON_COMBATPDW`]	 		 = { objectName = 'w_sb_pdw', 				itemName = "WEAPON_COMBATPDW",			allowed = {false,true,false,false,false,false, }},
	[`WEAPON_PUMPSHOTGUN`]	 		 = { objectName = 'w_sg_pumpshotgun', 		itemName = "WEAPON_PUMPSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_PUMPSHOTGUN_MK2`]		 = { objectName = 'w_sg_pumpshotgunmk2', 	itemName = "WEAPON_PUMPSHOTGUN_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SAWNOFFSHOTGUN`]		 = { objectName = 'w_sg_sawnoff', 			itemName = "WEAPON_SAWNOFFSHOTGUN",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SNIPERRIFLE`]	 		 = { objectName = 'w_sr_sniperrifle', 		itemName = "WEAPON_SNIPERRIFLE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SPECIALCARBINE`]		 = { objectName = 'w_ar_specialcarbine', 	itemName = "WEAPON_SPECIALCARBINE",		allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SPECIALCARBINE_MK2`]	 = { objectName = 'w_ar_specialcarbinemk2', itemName = "WEAPON_SPECIALCARBINE_MK2",	allowed = {false,true,false,false,false,false, }},
	[`WEAPON_RAYCARBINE`]	 	 	 = { objectName = 'w_ar_srifle', 			itemName = "WEAPON_RAYCARBINE",			allowed = {false,true,false,false,false,false, }},
	[`WEAPON_SMG`]	 	 	 		 = { objectName = 'w_sb_smg', 				itemName = "WEAPON_SMG",				allowed = {false,true,false,false,false,false, }},
	[`WEAPON_HOMINGLAUNCHER`]	 	 = { objectName = 'w_lr_homing', 			itemName = "WEAPON_HOMINGLAUNCHER",		allowed = {false,false,true,false,false,false, }},
	[`WEAPON_RPG`]	 	 			 = { objectName = 'w_lr_rpg', 				itemName = "WEAPON_RPG",				allowed = {false,false,true,false,false,false, }},
	[`WEAPON_STONE_HATCHET`]	 	 = { objectName = 'w_me_stonehatchet', 		itemName = "WEAPON_STONE_HATCHET",		allowed = {false,false,false,true,false,false, }},
	[`WEAPON_CROWBAR`]	 	 		 = { objectName = 'w_me_crowbar',	 		itemName = "WEAPON_CROWBAR",			allowed = {false,false,false,true,false,false, }},
	[`WEAPON_WRENCH`]	 		 	 = { objectName = 'w_me_wrench', 			itemName = "WEAPON_WRENCH",				allowed = {false,false,false,true,false,false, }},
	[`WEAPON_HAMMER`]				 = { objectName = 'w_me_hammer', 			itemName = "WEAPON_HAMMER",				allowed = {false,false,false,true,false,false, }},
	[`WEAPON_HATCHET`]	 			 = { objectName = 'w_me_hatchet', 			itemName = "WEAPON_HATCHET",			allowed = {false,false,false,true,false,false, }},
	[`WEAPON_BATTLEAXE`]	 		 = { objectName = 'w_me_battleaxe', 		itemName = "WEAPON_BATTLEAXE",			allowed = {false,false,false,true,false,false, }},
	[`WEAPON_SWITCHBLADE`]	 		 = { objectName = 'w_me_switchblade', 		itemName = "WEAPON_SWITCHBLADE",		allowed = {false,false,false,false,true,false, }},
	[`WEAPON_KNIFE`]	 			 = { objectName = 'w_me_knife_01', 			itemName = "WEAPON_KNIFE",				allowed = {false,false,false,false,true,false, }},
	[`WEAPON_DAGGER`]	 			 = { objectName = 'w_me_dagger', 			itemName = "WEAPON_DAGGER",				allowed = {false,false,false,false,true,false, }},
	[`WEAPON_MACHETE`]	 			 = { objectName = 'w_me_machette_lr', 		itemName = "WEAPON_MACHETE",			allowed = {false,false,false,false,true,false, }},
	[`WEAPON_BAT`]	 				 = { objectName = 'w_me_bat', 				itemName = "WEAPON_BAT",				allowed = {false,false,false,false,false,true, }},
	[`WEAPON_POOLCUE`]	 			 = { objectName = 'w_me_poolcue', 			itemName = "WEAPON_POOLCUE",			allowed = {false,false,false,false,false,true, }},
	[`WEAPON_GOLFCLUB`]	 			 = { objectName = 'w_me_gclub', 			itemName = "WEAPON_GOLFCLUB",			allowed = {false,false,false,false,false,true, }},
	[`WEAPON_GOLFCLUB`]	 			 = { objectName = 'w_me_gclub', 			itemName = "WEAPON_GOLFCLUB",			allowed = {false,false,false,false,false,true, }},
	
	[`WEAPON_KATANAS`]	 			 = { objectName = 'w_me_katana_02', 				itemName = "WEAPON_KATANAS",				allowed = {false,false,false,false,false,true, }},
--	[`WEAPON_BOTTLE`] 				 = { objectName = 'w_me_bottle', 			itemName = "WEAPON_BOTTLE", 			allowed = {false,false,false,false,true,false, }}, (looks weird.)
}

function unsling(slot, weaponHash)
	holsters[slot].weapon = weaponHash
	if DoesEntityExist(holsters[slot].weaponIsSlinged) then
		DeleteObject(holsters[slot].weaponIsSlinged)
		SetModelAsNoLongerNeeded(holsters[slot].weaponIsSlinged)
	end
	holsters[slot].weaponIsSlinged = false
end

function slingWeapon(slot, weaponHash)
	local playerPed = cache.ped
	local playerCoords = GetEntityCoords(playerPed)

	if type(slot) ~= 'number' or slot < 1 or slot > 6 or not WEAPONS[weaponHash] then
		print('[^1Error:^7] Invalid slot ^5'..tostring(slot)..'^7.')
		return
	end

	local model = WEAPONS[weaponHash].objectName

	holsters[slot].weapon = weaponHash

	RequestModel(model)
	while not HasModelLoaded(model) do Wait(0) end

	local weaponHandle = CreateObject(model, playerCoords.xyz, true, true, false)
	while not DoesEntityExist(weaponHandle) do Wait(0) end

	if slot == 1 then
		AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), -0.09, 0.0, -0.23, 90.0, 20.0, 180.0, 1, 1, 0, 0, 2, 1)
		weapons[1] = hash

	else
		AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 0x8CBD), 0.0, 0.0, 0.0, 90.0, 270.0, 0.0, 1, 1, 0, 1, 1, 0)

		if slot == 2 then
			unsling(3, weapons[3])
			AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), 0.4, -0.18, 0.1, 0.0, 158.0, 0.0, 1, 1, 0, 0, 2, 1)
			weapons[2] = hash

		elseif slot == 3 then
			unsling(2, weapons[2])
			AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), 0.4, -0.18, 0.1, 0.0, -20.0, 0.0, 1, 1, 0, 0, 2, 1)
			weapons[3] = hash

		elseif slot == 4 then
			AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), -0.4, -0.1, 0.22, 90.0, -10.0, 120.0, 1, 1, 0, 0, 2, 1)
			unsling(5, weapons[5])
			weapons[4] = hash

		elseif slot == 5 then
			AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), -0.05, 0.1, 0.22, -90.0, -10.0, 120.0, 1, 1, 0, 0, 2, 1)
			unsling(4, weapons[4])
			weapons[5] = hash

		elseif slot == 6 then
			AttachEntityToEntity(weaponHandle, playerPed, GetPedBoneIndex(playerPed, 24816), 0.0, -0.15, 0.18, 0.0, 115.0, 0.0, 1, 1, 0, 0, 2, 1)
			weapons[6] = hash
		end
	end

	holsters[slot].weaponIsSlinged = weaponHandle
end

local previousWeapon = `WEAPON_UNARMED`
AddEventHandler('ox_inventory:currentWeapon', function(data)
	if data then
		currentWeapon = data.hash
	else
		currentWeapon = false
	end

	if currentWeapon then
		previousWeapon = currentWeapon
	end

	for hash, v in pairs(WEAPONS) do
		if hash == previousWeapon then
			for i=1, 6 do
				if WEAPONS[hash].allowed[i] then
					if currentWeapon then
						-- If player just unholstered a weapon
						if holsters[i].weaponIsSlinged then
							unsling(i, hash)
							if i == 2 or i == 4 then
								unsling(i+1, weapons[i+1])
							elseif i == 3 or i == 5 then
								unsling(i-1, weapons[i-1])
							end
							return
						end
					else
						if not holsters[i].weaponIsSlinged then
							-- If player just holstered a weapon
							slingWeapon(i, hash)
							if i == 2 or i == 4 then
								unsling(i+1, weapons[i+1])
							elseif i == 3 or i == 5 then
								unsling(i-1, weapons[i-1])
							end
							return
						end
					end
				end
			end
			return
		end
	end
end)

-- RESET HOLSTERS
local function resetHolsters()
	for i=1, 6 do
		unsling(i, weapons[i])
	end
	holsters = {{},{},{},{},{},{}}
end
RegisterCommand('unholster', resetHolsters)

AddEventHandler('onResourceStop', function(resource)
	if GetCurrentResourceName() ~= resource then return end
    resetHolsters()
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
	resetHolsters()
end)

--[[RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
 	ESX.PlayerLoaded = true
	resetHolsters()
end)]]

local item, model = nil, nil
SetInterval(function()
	for hash, v in pairs(WEAPONS) do
		for i=1, 6 do
			if holsters[i].weaponIsSlinged then
				model = GetEntityModel(holsters[i].weaponIsSlinged)
				model2 = GetHashKey(WEAPONS[hash].objectName)
				if model ==  model2 then
					item = WEAPONS[hash].itemName
					count = exports.ox_inventory:Search(2, WEAPONS[hash].itemName)
					--slots = exports.ox_inventory:Search(1, WEAPONS[hash].itemName)
					--if count == 0 or slots == nil then
					if count == 0 then
						unsling(i,WEAPONS[hash])
					end
				end
			end
		end
	end
end, 1000)

--[[CreateThread(function()
	while true do
		Wait(1000)
		for hash, v in pairs(WEAPONS) do
			for i=1, 6 do
				if holsters[i].weaponIsSlinged then
					model = GetEntityModel(holsters[i].weaponIsSlinged)
					model2 = GetHashKey(WEAPONS[hash].objectName)
					if model ==  model2 then
						item = WEAPONS[hash].itemName
						count = exports.ox_inventory:Search(2, WEAPONS[hash].itemName)
						slots = exports.ox_inventory:Search(1, WEAPONS[hash].itemName)
						if count == 0 or slots == 0 then
							unsling(i,WEAPONS[hash])
						end
					end
				end
			end
		end
	end
end)]]