local CurrentAction, CurrentActionMsg, CurrentActionData = nil, '', {}
local HasAlreadyEnteredMarker, LastHospital, LastPart, LastPartNum
local IsBusy = false
local spawnedVehicles, isInShopMenu = {}, false
local HasPayed                = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}

local lib1_char_a, lib2_char_a, lib1_char_b, lib2_char_b, anim_start, anim_pump, anim_success = 'mini@cpr@char_a@cpr_def', 'mini@cpr@char_a@cpr_str', 'mini@cpr@char_b@cpr_def', 'mini@cpr@char_b@cpr_str', 'cpr_intro', 'cpr_pumpchest', 'cpr_success'

Citizen.CreateThread(function()
    RequestAnimDict(lib1_char_a)
    RequestAnimDict(lib2_char_a)
    RequestAnimDict(lib1_char_b)
    RequestAnimDict(lib2_char_b)
end)

function setUniform(job, playerPed)
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
			if Config.Uniforms[job].male then
				TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms[job].male)
			else
				ESX.ShowNotification(_U('no_outfit'))
			end

		else
			if Config.Uniforms[job].female then
				TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms[job].female)
			else
				ESX.ShowNotification(_U('no_outfit'))
			end

		end
	end)
end

-- TODO CONVERT TO NH CONTEXT
RegisterNetEvent('citizenwear', function ()
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		TriggerEvent('skinchanger:loadSkin', skin)
	end)
end)

RegisterNetEvent('ambwear', function ()
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		if skin.sex == 0 then
			TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
		else
			TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
		end
	end)
end)

RegisterNetEvent('bajuems', function()
	TriggerEvent('zf_context:openMenu', {
		{
			id = 1,
			header = "EMS CLOAKROOM MENU",
			txt = ""
		},
		{
			id = 2,
			header = "Baju Warga",
			txt = "MENGEMBALIKAN BAJU KE BAJU SEBELUMNYA",
			params = {
				event = "citizenwear",
				args = {
					number = 1,
					id = 2
				}
			}
		},
		{
			id = 3,
			header = "BAJU EMS",
			txt = "MEMAKAI BAJU KERJA EMS",
			params = {
				event = "ambwear",
				args = {
					number = 1,
					id = 3
				}
			}
		},
	})
end)



-- TODO : AMBULANCE ACTIONS
RegisterNetEvent('mk-ems:actionmenu')
AddEventHandler('mk-ems:actionmenu', function(job)
	TriggerEvent('bajuems')
end)

-- TODO : RADIAL MENU EVENT
RegisterNetEvent('emsrevive')
AddEventHandler('emsrevive', function ()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	IsBusy = true
	ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
		if quantity > 0 then
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			local playerPed = PlayerPedId()
				exports['ttyy_nuipack']:Alert("REVIVE", "Awaken the Victims...", 3000, 'success')
				local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
				for i=1, 15, 1 do
				Citizen.Wait(900)		
				ESX.Streaming.RequestAnimDict(lib, function()
					TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
					end)
				end
				TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
				TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
				if Config.ReviveReward > 0 then
					exports['ttyy_nuipack']:Alert("REVIVE", 'You earned $' ..Config.ReviveReward.. ' from reviving someone', 3000, 'success')
				else
					exports['ttyy_nuipack']:Alert("REVIVE", "Victim Has Awaken", 3000, 'success')
				end
			else
				exports['ttyy_nuipack']:Alert("MEDIC", "You Dont Have P3K", 3000, 'error')

			end

		IsBusy = false

	end, 'medikit')
end)

RegisterNetEvent('healkecil')
AddEventHandler('healkecil', function ()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
		if quantity > 0 then
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			local health = GetEntityHealth(closestPlayerPed)
			if health > 0 then
				local playerPed = PlayerPedId()
				IsBusy = true
				ExecuteCommand("me Menyuntikan Vitamin")
				ESX.ShowNotification(_U('heal_inprogress'))
				loadanimdict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
				TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Citizen.Wait(10000)
				ClearPedTasks(playerPed)
				TriggerServerEvent('esx_ambulancejob:removeItem', 'bandage')
				TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'small')
				ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
				IsBusy = false
			else
				ESX.ShowNotification(_U('player_not_conscious'))
			end
		else
			ESX.ShowNotification(_U('not_enough_bandage'))
		end
	end, 'bandage')
end)

function loadanimdict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname) 
		while not HasAnimDictLoaded(dictname) do 
			Citizen.Wait(1)
		end
	end
end

RegisterNetEvent('esx_ambulancejob:heal')
AddEventHandler('esx_ambulancejob:heal', function(healType, quiet)
	local playerPed = PlayerPedId()
	local maxHealth = GetEntityMaxHealth(playerPed)

	if healType == 'small' then
		local health = GetEntityHealth(playerPed)
		local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 8))
		SetEntityHealth(playerPed, newHealth)
	elseif healType == 'big' then
		SetEntityHealth(playerPed, maxHealth)
	end

	if not quiet then
		ESX.ShowNotification(_U('healed'))
	end
end)

RegisterNetEvent('healbesar')
AddEventHandler('healbesar',function()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
		if quantity > 0 then
			local closestPlayerPed = GetPlayerPed(closestPlayer)
			local health = GetEntityHealth(closestPlayerPed)
			if health > 0 then
				local playerPed = PlayerPedId()
				IsBusy = true
				ExecuteCommand("me Memberikan Treatment")
				ESX.ShowNotification(_U('heal_inprogress'))
				loadanimdict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
				TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
				Citizen.Wait(10000)
				ClearPedTasks(playerPed)
				TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
				TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'big')
				ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
				IsBusy = false
			else
				ESX.ShowNotification(_U('player_not_conscious'))
			end
		else
			ESX.ShowNotification(_U('not_enough_medikit'))
		end
	end, 'medikit')
end)

RegisterNetEvent('masukkinkenems')
AddEventHandler('masukkinkenems', function ()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	ExecuteCommand("me Memasukan Paksa")
	TriggerServerEvent('esx_ambulancejob:putInVehicle', GetPlayerServerId(closestPlayer))
end)

RegisterNetEvent('keluarkanems')
AddEventHandler('keluarkanems', function ()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	ExecuteCommand("me Mengeluarkan Paksa")
	TriggerServerEvent('esx_ambulancejob:OutVehicle', GetPlayerServerId(closestPlayer))
end)

RegisterNetEvent('masukbool')
AddEventHandler('masukbool',function()
  SetEntityCoords(PlayerPedId(),1066.17, -3183.46, -39.16)
end)

RegisterNetEvent('keluarweed')
AddEventHandler('keluarweed',function()
  SetEntityCoords(PlayerPedId(),952.39, -1711.84, 30.33)
end)

exports.qtarget:AddBoxZone('weedin', vector3(951.02, -1711.6, 30.7), 2.0, 2.4, {
    name="weedin",
    heading=265,
    --debugPoly=true,
    minZ=28.5,
    maxZ=32.5
	}, {
	options = {
		{
			event = "masukbool",
			icon = "far fas fa-tshirt",
			label = "Enter Weed",
		},
	},
	distance = 2.0
})

exports.qtarget:AddBoxZone('getoutweed', vector3(1066.76, -3183.48, -39.16), 1, 2.0, {
    name="getoutweed",
	heading=270,
	--debugPoly=true,
	minZ=-41.56,
	maxZ=-37.56
	}, {
	options = {
		{
			event = "keluarweed",
			icon = "far fas fa-tshirt",
			label = "Out Weed",
		},
	},
	distance = 2.0
})

-- TODO : LIFT EMS
RegisterNetEvent('liftkeatas')
AddEventHandler('liftkeatas',function()
  SetEntityCoords(PlayerPedId(),-665.1747, 327.0718, 140.1227)
end)

RegisterNetEvent('liftkebawah')
AddEventHandler('liftkebawah',function()
  SetEntityCoords(PlayerPedId(),-665.0191, 327.4467, 140.1227)
end)