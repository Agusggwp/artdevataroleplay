local isBarman, hintIsShowed = false, false, false, false, false
local LastZone, CurrentAction, CurrentActionMsg
local CurrentActionData, Blips, PlayerData = {}, {}, {}
local hintToDisplay = "no hint to display"
function IsJobTrue()
    if PlayerData ~= nil then
        local IsJobTrue = false
        if PlayerData.job ~= nil and PlayerData.job.name == 'pedagang' then
            IsJobTrue = true
        end
        return IsJobTrue
    end
end

function IsGradeBoss()
    if PlayerData ~= nil then
        local IsGradeBoss = false
        if PlayerData.job.grade_name == 'boss' or PlayerData.job.grade_name == 'viceboss' then
            IsGradeBoss = true
        end
        return IsGradeBoss
    end
end

function SetVehicleMaxMods(vehicle)
  local props = {
    modEngine = 0,
    modBrakes = 0,
    modTransmission = 0,
    modSuspension = 0,
    modTurbo = false,
  }

  ESX.Game.SetVehicleProperties(vehicle, props)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function cleanPlayer(playerPed)
  ClearPedBloodDamage(playerPed)
  ResetPedVisibleDamage(playerPed)
  ClearPedLastWeaponDamage(playerPed)
  ResetPedMovementClipset(playerPed, 0)
end

function setClipset(playerPed, clip)
  RequestAnimSet(clip)
  while not HasAnimSetLoaded(clip) do
    Citizen.Wait(0)
  end
  SetPedMovementClipset(playerPed, clip, true)
end

function setUniform(job, playerPed)
  TriggerEvent('skinchanger:getSkin', function(skin)

    if skin.sex == 0 then
      if Cfg_Pdg.Uniforms[job].male ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Cfg_Pdg.Uniforms[job].male)
      else
        ESX.ShowNotification(_U('no_outfit'))
      end
      if job ~= 'citizen_wear' and job ~= 'barman_outfit' then
        setClipset(playerPed, "MOVE_M@POSH@")
      end
    else
      if Cfg_Pdg.Uniforms[job].female ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Cfg_Pdg.Uniforms[job].female)
      else
        ESX.ShowNotification(_U('no_outfit'))
      end
      if job ~= 'citizen_wear' and job ~= 'barman_outfit' then
        setClipset(playerPed, "MOVE_F@POSH@")
      end
    end
  end)
end

function OpenCloakroomMenu()
  local playerPed = PlayerPedId()

  local elements = {
    {label = _U('citizen_wear'), value = 'citizen_wear'},
    {label = _U('barman_outfit'), value = 'barman_outfit'},
  }

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'cloakroom', {
      title    = _U('cloakroom'),
      align    = 'top-left',
      elements = elements,
    }, function(data, menu)

      isBarman = false
      cleanPlayer(playerPed)

      if data.current.value == 'citizen_wear' then
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
          TriggerEvent('skinchanger:loadSkin', skin)
        end)
      end

      if data.current.value == 'barman_outfit' then
        setUniform(data.current.value, playerPed)
        isBarman = true
      end

      if
        data.current.value == 'dancer_outfit_1' or
        data.current.value == 'dancer_outfit_2' or
        data.current.value == 'dancer_outfit_3' or
        data.current.value == 'dancer_outfit_4' or
        data.current.value == 'dancer_outfit_5' or
        data.current.value == 'dancer_outfit_6' or
        data.current.value == 'dancer_outfit_7'
      then
        setUniform(data.current.value, playerPed)
      end

      CurrentAction = 'menu_cloakroom'
      CurrentActionMsg = _U('open_cloackroom')
      CurrentActionData = {}
    end, function(data, menu)
      menu.close()
      CurrentAction = 'menu_cloakroom'
      CurrentActionMsg = _U('open_cloackroom')
      CurrentActionData = {}
    end)
end

function OpenFridgeMenu()
    local elements = {
      --{label = _U('get_object'), value = 'get_stock'},
      {label = 'Buka Kulkas', value = 'Inventory'},
      --{label = _U('put_object'), value = 'put_stock'}
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fridge', {
        title    = _U('fridge'),
        align    = 'top-left',
        elements = elements,
      }, function(data, menu)

        if data.current.value == 'Inventory' then
          OpenPedInven()
          menu.close()
        end
        if data.current.value == 'get_stock' then
           OpenGetFridgeStocksMenu()
        end
      end, function(data, menu)

        menu.close()

        CurrentAction     = 'menu_fridge'
        CurrentActionMsg  = _U('open_fridge')
        CurrentActionData = {}
      end)
end

function OpenPedInven()
  TriggerEvent("esx_inventoryhud:openStorageInventory", "society_pedagang")
end

function OpenVehicleSpawnerMenu()
  local vehicles = Cfg_Pdg.Zones.Vehicles

  ESX.UI.Menu.CloseAll()

  if Cfg_Pdg.EnableSocietyOwnedVehicles then
    local elements = {}

    ESX.TriggerServerCallback('esx_society:getVehiclesInGarage', function(garageVehicles)

      for i=1, #garageVehicles, 1 do
        table.insert(elements, {label = GetDisplayNameFromVehicleModel(garageVehicles[i].model) .. ' [' .. garageVehicles[i].plate .. ']', value = garageVehicles[i]})
      end

      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner', {
          title    = _U('vehicle_menu'),
          align    = 'top-left',
          elements = elements,
        }, function(data, menu)

          menu.close()

          local vehicleProps = data.current.value
          ESX.Game.SpawnVehicle(vehicleProps.model, vehicles.SpawnPoint, vehicles.Heading, function(vehicle)
              ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
              local playerPed = PlayerPedId()
              --TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)  -- teleport into vehicle
          end)            

          TriggerServerEvent('esx_society:removeVehicleFromGarage', 'pedagang', vehicleProps)
        end, function(data, menu)

          menu.close()

          CurrentAction     = 'menu_vehicle_spawner'
          CurrentActionMsg  = _U('vehicle_spawner')
          CurrentActionData = {}

        end)
    end, 'pedagang')
  else
    local elements = {}

    for i=1, #Cfg_Pdg.AuthorizedVehicles, 1 do
      local vehicle = Cfg_Pdg.AuthorizedVehicles[i]
      table.insert(elements, {label = vehicle.label, value = vehicle.name})
    end

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner', {
        title    = _U('vehicle_menu'),
        align    = 'top-left',
        elements = elements,
      }, function(data, menu)

        menu.close()

        local model = data.current.value

        local vehicle = GetClosestVehicle(vehicles.SpawnPoint.x,  vehicles.SpawnPoint.y,  vehicles.SpawnPoint.z,  3.0,  0,  71)

        if not DoesEntityExist(vehicle) then

          local playerPed = PlayerPedId()

          if Cfg_Pdg.MaxInService == -1 then

            ESX.Game.SpawnVehicle(model, {
              x = vehicles.SpawnPoint.x,
              y = vehicles.SpawnPoint.y,
              z = vehicles.SpawnPoint.z
            }, vehicles.Heading, function(vehicle)
              --TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1) -- teleport into vehicle
              SetVehicleMaxMods(vehicle)
              SetVehicleDirtLevel(vehicle, 0)
            end)
          else
            ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)

              if canTakeService then
                ESX.Game.SpawnVehicle(model, {
                  x = vehicles[partNum].SpawnPoint.x,
                  y = vehicles[partNum].SpawnPoint.y,
                  z = vehicles[partNum].SpawnPoint.z
                }, vehicles[partNum].Heading, function(vehicle)
                  --TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)  -- teleport into vehicle
                  SetVehicleMaxMods(vehicle)
                  SetVehicleDirtLevel(vehicle, 0)
                end)
              else
                ESX.ShowNotification(_U('service_max') .. inServiceCount .. '/' .. maxInService)
              end
            end, 'pedagang')
          end
        else
          ESX.ShowNotification(_U('vehicle_out'))
        end
      end, function(data, menu)

        menu.close()

        CurrentAction = 'menu_vehicle_spawner'
        CurrentActionMsg = _U('vehicle_spawner')
        CurrentActionData = {}
      end)
  end
end

function OpenBillingMenu()
  ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing', {
      title = _U('billing_amount')
    }, function(data, menu)
    
      local amount = tonumber(data.value)
      local player, distance = ESX.Game.GetClosestPlayer()

      if player ~= -1 and distance <= 3.0 then
        menu.close()

        if amount == nil then
            ESX.ShowNotification(_U('amount_invalid'))
        else
            TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_pedagang', _U('billing'), amount)
        end
      else
        ESX.ShowNotification(_U('no_players_nearby'))
      end
    end, function(data, menu)
        menu.close()
    end)
end

-- Create blips
Citizen.CreateThread(function()
    local blipMarker = Cfg_Pdg.Blips.Blip
    local blipCoord = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)

    SetBlipSprite (blipCoord, blipMarker.Sprite)
    SetBlipDisplay(blipCoord, blipMarker.Display)
    SetBlipScale  (blipCoord, blipMarker.Scale)
    SetBlipColour (blipCoord, blipMarker.Colour)
    SetBlipAsShortRange(blipCoord, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(_U('map_blip'))
    EndTextCommandSetBlipName(blipCoord)
end)

-- EVENT FOR TARGET @TTYYYY
RegisterNetEvent('ttyy-ped:openbaju')
AddEventHandler('ttyy-ped:openbaju',function()
    OpenCloakroomMenu()
end)

RegisterNetEvent('ttyy-ped:billing')
AddEventHandler('ttyy-ped:billing',function()
  OpenBillingMenu()
end)

RegisterNetEvent('pedboss', function ()
	TriggerEvent('esx_society:boss', 'pedagang', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

exports.qtarget:AddBoxZone('pedboss', vector3(1608.65, 3915.00, 33.94), 1.2, 1.2, {
  name="pedboss",
  heading=0,
  --debugPoly=true,
  minZ=31.95,
  maxZ=35.95
  }, {
      options = {
          {
              event = "pedboss",
              icon = "far fas fa-tshirt",
              label = "Employee Management!",
              job = {
                  ["pedagang"] = 3,
              }
          },
      },
      distance = 3.0
})

-- MULUNG
function OpenTrashCan()
  TriggerEvent("ttyy_robbery:client:progress", {
      name = "searching",
      duration = 10000,
      label = "Searching...",
      useWhileDead = false,
      canCancel = false,
      controlDisables = {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
      },
      animation = {
          task = "PROP_HUMAN_BUM_BIN",
      },
      prop = {
      }
  }, function(status)
      if not status then
          -- Do Something If Event Wasn't Cancelled
      end
  end)
  Citizen.Wait(10000)
  ClearPedTasksImmediately(PlayerPedId())
  TriggerServerEvent("ttyy-bottle:retrieveBottle")
end

RegisterNetEvent('ttyybottle:ambil')
AddEventHandler('ttyybottle:ambil',function()
  OpenTrashCan()
end)

Citizen.CreateThread(function()
  local sampah = {
    1437508529,
    4164154385,
    1329570871
  }

  exports.qtarget:AddTargetModel(sampah, {
    options = {
      {
        event = "ttyybottle:ambil",
        icon = "fas fa-bottle",
        label = "Mulung",
      },
    },
      job = {'all'},
      distance = 1.5
  })
end)