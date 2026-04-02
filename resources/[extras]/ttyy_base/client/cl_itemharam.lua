ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
--SetPedMovementClipset(cache.ped, "move_m@quick", true)

RegisterNetEvent('nat:oxygenmask')
AddEventHandler('nat:oxygenmask', function()
	local playerPed = cache.ped
	local coords = GetEntityCoords(playerPed)
	local boneIndex = GetPedBoneIndex(playerPed, 12844)
	local boneIndex2 = GetPedBoneIndex(playerPed, 24818)

	ESX.Game.SpawnObject('p_s_scuba_mask_s', {
		x = coords.x,
		y = coords.y,
		z = coords.z - 3
	}, function(object)
		ESX.Game.SpawnObject('p_s_scuba_tank_s', {
			x = coords.x,
			y = coords.y,
			z = coords.z - 3
		}, function(object2)
			AttachEntityToEntity(object2, playerPed, boneIndex2, -0.30, -0.22, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			AttachEntityToEntity(object, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			SetPedDiesInWater(playerPed, false)

      exports['ttyy_nuipack']:DoHudText('success', 'Berhasil menggunakan tabung oksigen!')

			Citizen.Wait(50000)
      exports['ttyy_nuipack']:DoHudText('success', 'Tersisa 50%')

			Citizen.Wait(25000)
      exports['ttyy_nuipack']:DoHudText('success', 'Tersisa 25%')

			Citizen.Wait(25000)
      exports['ttyy_nuipack']:DoHudText('error', 'Oksigen habis!')

			SetPedDiesInWater(playerPed, true)
			DeleteObject(object)
			DeleteObject(object2)
			ClearPedSecondaryTask(playerPed)
		end)
	end)
end)

RegisterNetEvent('kypo-drug-effect:onLsd')
AddEventHandler('kypo-drug-effect:onLsd', function()
  
  local playerPed = cache.ped
  local playerPed = cache.ped
  
    RequestAnimSet("move_m@buzzed") 
    while not HasAnimSetLoaded("move_m@buzzed") do
      Citizen.Wait(0)
    end    
    exports['ttyy_nuipack']:DoHudText('success', 'You took some Weed!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@buzzed", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("Rampage", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(cache.ped, 200)
    SetPedArmour(playerPed, 50)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(50000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(cache.ped, false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(cache.ped)
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('kypo-drug-effect:onMeth')
AddEventHandler('kypo-drug-effect:onMeth', function()
  
  local playerPed = cache.ped
  local playerPed = cache.ped
  
    RequestAnimSet("move_m@drunk@slightlydrunk") 
    while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
      Citizen.Wait(0)
    end    
    exports['ttyy_nuipack']:DoHudText('success', 'You took some Meth!')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("SuccessMichael", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(cache.ped, 200)
    SetPedArmour(playerPed, 50)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(50000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(cache.ped, false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(cache.ped)
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

-- TODO : EFEK ITEM ARMOR
RegisterNetEvent('armor:armor2', function()
  local playerPed = cache.ped
  TriggerServerEvent('deleteitem', 'heavyarmor', 1)
  TriggerEvent('ox_inventory:closeInventory')
      exports.ox_inventory:Progress({
          duration = 8000,
          label = 'Using Armor...',
          useWhileDead = false,
          canCancel = true,
          disable = {
              move = false,
              car = false,
              combat = false,
              mouse = false
          },
          anim = {
              dict = 'clothingtie',
              clip = 'try_tie_positive_a'
          },
      }, function(cancel)
          if not cancel then
            SetPedArmour(playerPed, 100)
          end
      end)
end)