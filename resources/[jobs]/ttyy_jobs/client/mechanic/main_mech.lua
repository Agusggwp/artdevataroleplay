local HasAlreadyEnteredMarker, LastZone = false, nil
local CurrentAction, CurrentActionMsg, CurrentActionData = nil, '', {}
local CurrentlyTowedVehicle, Blips, NPCOnJob, NPCTargetTowable, NPCTargetTowableZone = nil, {}, false, nil, nil
local NPCHasSpawnedTowable, NPCLastCancel, NPCHasBeenNextToTowable, NPCTargetDeleterZone = false, GetGameTimer() - 5 * 60000, false, false
local isDead, isBusy = false, false

local ox_inventory = exports.ox_inventory

function OpenMechanicActionsMenu()
	local elements = {
		{label = _U('work_wear'),      value = 'cloakroom'},
		{label = _U('civ_wear'),       value = 'cloakroom2'},
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mechanic_actions', {
		title    = _U('mechanic'),
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		if data.current.value == 'vehicle_list' then
			if Cfg_Mecha.EnableSocietyOwnedVehicles then

				local elements = {}

				ESX.TriggerServerCallback('esx_society:getVehiclesInGarage', function(vehicles)
					for i=1, #vehicles, 1 do
						table.insert(elements, {
							label = GetDisplayNameFromVehicleModel(vehicles[i].model) .. ' [' .. vehicles[i].plate .. ']',
							value = vehicles[i]
						})
					end

					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner', {
						title    = _U('service_vehicle'),
						align    = 'top-left',
						elements = elements
					}, function(data, menu)
						menu.close()
						local vehicleProps = data.current.value

						ESX.Game.SpawnVehicle(vehicleProps.model, Cfg_Mecha.Zones.VehicleSpawnPoint.Pos, 270.0, function(vehicle)
							ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
							local playerPed = PlayerPedId()
							TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
						end)

						TriggerServerEvent('esx_society:removeVehicleFromGarage', 'mechanic', vehicleProps)
					end, function(data, menu)
						menu.close()
					end)
				end, 'mechanic')

			else

				local elements = {
					{label = _U('flat_bed'),  value = 'flatbed'},
					{label = _U('tow_truck'), value = 'towtruck2'}
				}

				if Cfg_Mecha.EnablePlayerManagement and ESX.PlayerData.job and (ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'chief' or ESX.PlayerData.job.grade_name == 'experimente') then
					table.insert(elements, {label = 'SlamVan', value = 'slamvan3'})
				end

				ESX.UI.Menu.CloseAll()

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'spawn_vehicle', {
					title    = _U('service_vehicle'),
					align    = 'top-left',
					elements = elements
				}, function(data, menu)
					if Cfg_Mecha.MaxInService == -1 then
						ESX.Game.SpawnVehicle(data.current.value, Cfg_Mecha.Zones.VehicleSpawnPoint.Pos, 90.0, function(vehicle)
							local playerPed = PlayerPedId()
							TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
						end)
					else
						ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)
							if canTakeService then
								ESX.Game.SpawnVehicle(data.current.value, Cfg_Mecha.Zones.VehicleSpawnPoint.Pos, 90.0, function(vehicle)
									local playerPed = PlayerPedId()
									TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
								end)
							else
								ESX.ShowNotification(_U('service_full') .. inServiceCount .. '/' .. maxInService)
							end
						end, 'mechanic')
					end

					menu.close()
				end, function(data, menu)
					menu.close()
					OpenMechanicActionsMenu()
				end)

			end
		elseif data.current.value == 'cloakroom' then
			menu.close()
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
				if skin.sex == 0 then
					TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
				else
					TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
				end
			end)
		elseif data.current.value == 'cloakroom2' then
			menu.close()
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
				TriggerEvent('skinchanger:loadSkin', skin)
			end)
		elseif data.current.value == 'put_stock' or data.current.value == 'get_stock' then
			ox_inventory:openInventory('stash', 'society_mechanic')
		end
	end, function(data, menu)
		menu.close()

		CurrentAction     = 'mechanic_actions_menu'
		CurrentActionMsg  = _U('open_actions')
		CurrentActionData = {}
	end)
end

RegisterNetEvent('esx_mechanicjob:onHijack')
AddEventHandler('esx_mechanicjob:onHijack', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		local chance = math.random(100)
		local alarm  = math.random(100)

		if DoesEntityExist(vehicle) then
			if alarm <= 33 then
				SetVehicleAlarm(vehicle, true)
				StartVehicleAlarm(vehicle)
			end

			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)

			Citizen.CreateThread(function()
				exports['ttyy_nuipack']:Start("Hijacking Vehicle..", 20000)
				Citizen.Wait(10000)
				if chance <= 66 then
					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)
					ESX.ShowNotification(_U('veh_unlocked'))
				else
					ESX.ShowNotification(_U('hijack_failed'))
					ClearPedTasksImmediately(playerPed)
				end
			end)
		end
	end
end)

RegisterNetEvent('esx_mechanicjob:onCarokit')
AddEventHandler('esx_mechanicjob:onCarokit', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		if DoesEntityExist(vehicle) then
			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_HAMMERING', 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(10000)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification(_U('body_repaired'))
			end)
		end
	end
end)

RegisterNetEvent('esx_mechanicjob:onFixkit')
AddEventHandler('esx_mechanicjob:onFixkit', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		if DoesEntityExist(vehicle) then
			TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
			Citizen.CreateThread(function()
				exports['rprogress']:Start("Memperbaiki Kendaraan", 20000)
				Citizen.Wait(20000)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				SetVehicleUndriveable(vehicle, false)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification(_U('veh_repaired'))
			end)
		end
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('esx_mechanicjob:hasEnteredEntityZone', function(entity)
	local playerPed = PlayerPedId()

	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'mechanic' and not IsPedInAnyVehicle(playerPed, false) then
		CurrentAction     = 'remove_entity'
		CurrentActionMsg  = _U('press_remove_obj')
		CurrentActionData = {entity = entity}
	end
end)

AddEventHandler('esx_mechanicjob:hasExitedEntityZone', function(entity)
	if CurrentAction == 'remove_entity' then
		CurrentAction = nil
	end
end)

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	local specialContact = {
		name       = _U('mechanic'),
		number     = 'mechanic',
		base64Icon = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAA4BJREFUWIXtll9oU3cUx7/nJA02aSSlFouWMnXVB0ejU3wcRteHjv1puoc9rA978cUi2IqgRYWIZkMwrahUGfgkFMEZUdg6C+u21z1o3fbgqigVi7NzUtNcmsac40Npltz7S3rvUHzxQODec87vfD+/e0/O/QFv7Q0beV3QeXqmgV74/7H7fZJvuLwv8q/Xeux1gUrNBpN/nmtavdaqDqBK8VT2RDyV2VHmF1lvLERSBtCVynzYmcp+A9WqT9kcVKX4gHUehF0CEVY+1jYTTIwvt7YSIQnCTvsSUYz6gX5uDt7MP7KOKuQAgxmqQ+neUA+I1B1AiXi5X6ZAvKrabirmVYFwAMRT2RMg7F9SyKspvk73hfrtbkMPyIhA5FVqi0iBiEZMMQdAui/8E4GPv0oAJkpc6Q3+6goAAGpWBxNQmTLFmgL3jSJNgQdGv4pMts2EKm7ICJB/aG0xNdz74VEk13UYCx1/twPR8JjDT8wttyLZtkoAxSb8ZDCz0gdfKxWkFURf2v9qTYH7SK7rQIDn0P3nA0ehixvfwZwE0X9vBE/mW8piohhl1WH18UQBhYnre8N/L8b8xQvlx4ACbB4NnzaeRYDnKm0EALCMLXy84hwuTCXL/ExoB1E7qcK/8NCLIq5HcTT0i6u8TYbXUM1cAyyveVq8Xls7XhYrvY/4n3gC8C+dsmAzL1YUiyfWxvHzsy/w/dNd+KjhW2yvv/RfXr7x9QDcmo1he2RBiCCI1Q8jVj9szPNixVfgz+UiIGyDSrcoRu2J16d3I6e1VYvNSQjXpnucAcEPUOkGYZs/l4uUhowt/3kqu1UIv9n90fAY9jT3YBlbRvFTD4fw++wHjhiTRL/bG75t0jI2ITcHb5om4Xgmhv57xpGOg3d/NIqryOR7z+r+MC6qBJB/ZB2t9Om1D5lFm843G/3E3HI7Yh1xDRAfzLQr5EClBf/HBHK462TG2J0OABXeyWDPZ8VqxmBWYscpyghwtTd4EKpDTjCZdCNmzFM9k+4LHXIFACJN94Z6FiFEpKDQw9HndWsEuhnADVMhAUaYJBp9XrcGQKJ4qFE9k+6r2+MG3k5N8VQ22TVglbX2ZwOzX2VvNKr91zmY6S7N6zqZicVT2WNLyVSehESaBhxnOALfMeYX+K/S2yv7wmMAlvwyuR7FxQUyf0fgc/jztfkJr7XeGgC8BJJgWNV8ImT+AAAAAElFTkSuQmCC'
	}

	TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
end)

-- Create Blips
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(Cfg_Mecha.Zones.MechanicActions.Pos.x, Cfg_Mecha.Zones.MechanicActions.Pos.y, Cfg_Mecha.Zones.MechanicActions.Pos.z)

	SetBlipSprite (blip, 446)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(_U('mechanic'))
	EndTextCommandSetBlipName(blip)
end)

-- Start Of Export And Events Mecha

exports('Mechanic_FixkitItems',function (data,slot)
    exports.ox_inventory:useItem(data, function(data)
        if data then
            local item = exports.ox_inventory:Items("fixkit")
            if item then
                TriggerEvent('esx_mechanicjob:onFixkit',item)
            end
        end
    end)
end)

exports('Mechanic_BlowPipeItems',function (data,slot) --- TODO ADD ITEMS OX INVENTORY
    exports.ox_inventory:useItem(data, function(data)
        if data then
            local item = exports.ox_inventory:Items("blowpipe")
            if item then
                TriggerEvent('esx_mechanicjob:onHijack',item)
            end
        end
    end)
end)

AddEventHandler('esx:onPlayerDeath', function(data) isDead = true end)
AddEventHandler('esx:onPlayerSpawn', function(spawn) isDead = false end)

RegisterNetEvent('billingmeka')
AddEventHandler('billingmeka',function()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing', {
		title = 'Invoice Amount : '
	}, function(data, menu)
		local amount = tonumber(data.value)
		if amount == nil or amount < 0 then
			exports['ttyy_nuipack']:SendAlert('error', 'Wrong Input')
		else
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer == -1 or closestDistance > 3.0 then
				exports['ttyy_nuipack']:SendAlert('error', 'No players nearby')
			else
				menu.close()
				playAnim('missheistdockssetup1clipboard@base', 'base', 2500)
				Citizen.Wait(2500)
				ExecuteCommand('me Memberi Tagihan')
				TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_mechanic', _U('mechanic'), amount)
			end
		end
	end, function(data, menu)
		menu.close()
	end)
end)

RegisterNetEvent('mechabaju', function ()
	OpenMechanicActionsMenu()
end)

-- TODO RADIAL MENU EVENT 
RegisterNetEvent('bobolmecha')
AddEventHandler('bobolmecha', function ()
	local playerPed = PlayerPedId()
	local vehicle   = ESX.Game.GetVehicleInDirection()
	local coords    = GetEntityCoords(playerPed)
	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('inside_vehicle'))
		return
	end
	if DoesEntityExist(vehicle) then
			isBusy = true
			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
			
			ExecuteCommand("me Membobol Kendaraan")
			exports.rprogress:Custom({
				Label = "",
				Duration = 10000,
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},
			})
			Citizen.CreateThread(function()
				Citizen.Wait(10000)

				SetVehicleDoorsLocked(vehicle, 1)
				SetVehicleDoorsLockedForAllPlayers(vehicle, false)
				ClearPedTasksImmediately(playerPed)

				ESX.ShowNotification(_U('vehicle_unlocked'))
				isBusy = false
			end)
	else
		ESX.ShowNotification(_U('no_vehicle_nearby'))
	end
end)

RegisterNetEvent('repairmech')
AddEventHandler('repairmech', function ()
	local playerPed = PlayerPedId()
	local vehicle   = ESX.Game.GetVehicleInDirection()
	local coords    = GetEntityCoords(playerPed)
	if IsPedSittingInAnyVehicle(playerPed) then
		local vehiclein = GetVehiclePedIsIn(playerPed, false)
		ESX.ShowNotification(_U('inside_vehicle'))
		TaskLeaveVehicle(PlayerPedId(), vehiclein, 0)
		return
	end
	if DoesEntityExist(vehicle) then
			isBusy = true
			loadanimdict('mini@repair')
			TaskPlayAnim(playerPed, 'mini@repair', "fixing_a_ped", 8.0, 0.6, -1, 49, 0, 0, 0, 0 )
			--TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
			exports.rprogress:Custom({
				Label = "",
				Duration = 20000,
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},
			})
			Citizen.CreateThread(function()
				Citizen.Wait(20000)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				SetVehicleUndriveable(vehicle, false)
				SetVehicleEngineOn(vehicle, true, true)
				ClearPedSecondaryTask(playerPed)

				ESX.ShowNotification(_U('vehicle_repaired'))
				isBusy = false
			end)
	else
		ESX.ShowNotification(_U('no_vehicle_nearby'))
	end
end)

RegisterNetEvent('cleanmech')
AddEventHandler('cleanmech', function ()
	local playerPed = PlayerPedId()
	local vehicle   = ESX.Game.GetVehicleInDirection()
	local coords    = GetEntityCoords(playerPed)
	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('inside_vehicle'))
		return
	end
	if DoesEntityExist(vehicle) then
		ExecuteCommand("me Mencuci Kendaraan")
		isBusy = true
		TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_MAID_CLEAN', 0, true)
		Citizen.CreateThread(function()
			exports.rprogress:Custom({
				Label = "",
				Duration = 10000,
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},
			})
			Citizen.Wait(10000)

			SetVehicleDirtLevel(vehicle, 0)
			ClearPedTasksImmediately(playerPed)

			ESX.ShowNotification(_U('vehicle_cleaned'))
			isBusy = false
		end)
	else
		ESX.ShowNotification(_U('no_vehicle_nearby'))
	end
end)

RegisterNetEvent('sitamech')
AddEventHandler('sitamech', function ()
	local playerPed = PlayerPedId()
	local vehicle = ESX.Game.GetVehicleInDirection()
	if IsPedSittingInAnyVehicle(playerPed) then
		local vehiclein = GetVehiclePedIsIn(playerPed, false)
		ESX.ShowNotification(_U('inside_vehicle'))
		TaskLeaveVehicle(PlayerPedId(), vehiclein, 0)
		return
	end
	if DoesEntityExist(vehicle) then
		local vehicle = ESX.Game.GetVehicleInDirection()
		ExecuteCommand("me Mengasuransikan Kendaraan")
		exports.rprogress:Custom({
			Label = "",
			Duration = 10000,
			DisableControls = {
				Mouse = false,
				Player = true,
				Vehicle = true
			},
		})
		TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
		Citizen.Wait(10000)
		ClearPedTasks(playerPed)
		ESX.ShowNotification(_U('vehicle_impounded'))
		ESX.Game.DeleteVehicle(vehicle)
	else
		ESX.ShowNotification(_U('must_near'))
	end
end)

RegisterNetEvent('towing')
AddEventHandler('towing', function ()
	local playerPed = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(playerPed, true)
	local towmodel = GetHashKey('flatbed')
	local isVehicleTow = IsVehicleModel(vehicle, towmodel)
	if isVehicleTow then
		local targetVehicle = ESX.Game.GetVehicleInDirection()
		if CurrentlyTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerPed, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, -0.5, -5.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						CurrentlyTowedVehicle = targetVehicle
						ESX.ShowNotification(_U('vehicle_success_attached'))
					else
						ESX.ShowNotification(_U('cant_attach_own_tt'))
					end
				end
			else
				ESX.ShowNotification(_U('no_veh_att'))
			end
		else
			AttachEntityToEntity(CurrentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(CurrentlyTowedVehicle, true, true)
			CurrentlyTowedVehicle = nil
			ESX.ShowNotification(_U('veh_det_succ'))
		end
	else
		ESX.ShowNotification(_U('imp_flatbed'))
	end
end)

RegisterNetEvent('mechabos', function ()
	TriggerEvent('esx_society:boss', 'mechanic', function(data, menu)
		menu.close()
	end, { wash = false }) -- disable washing money
end)

RegisterNetEvent('nh-context:DutyMecha', function()
	TriggerEvent('zf_context:openMenu', {
		{
			id = 1,
			header = "Mechanic Duty",
			txt = ""
		},
		{
			id = 2,
			header = "⚠️On Duty",
			txt = "ON DUTY MECHANIC",
			params = {
				event = "mk-duty:onoff",
				args = {
					number = 1,
					id = 2
				}
			}
		},
		{
			id = 3,
			header = "⚠️Off Duty",
			txt = "OFF DUTY MECHANIC",
			params = {
				event = "mk-duty:onoff",
				args = {
					number = 1,
					id = 3
				}
			}
		},
	})
  end)


-- TODO : TARGET EXPORT 
exports.qtarget:AddBoxZone("bajumecha", vector3(82.42, 6523.93, 32.90), 2, 2, {
	name="bajumecha",
	heading=0,
	--debugPoly=true,
	minZ=11.95,
	maxZ=15.95
	}, {
		options = {
			{
				event = "mechabaju",
				icon = "fas fa-sign-in-alt",
				label = "Cloakroom Menu",
                job = "mechanic"
			},
		},
		distance = 2
})

exports.qtarget:AddBoxZone("bossmecha", vector3(876.2648, -2097.4597, 30.4797), 1.2, 1.2, {
	name="bossmecha",
	heading=355,
	--debugPoly=true,
	minZ=36.4,
	maxZ=40.4
	}, {
		options = {
			{
		        event = "mechanicboss",
                icon = "far fas fa-tshirt",
                label = "Employee Management",
                job = {
                    ["mechanic"] = 4,
                }
			},
		},
		distance = 2
})

exports.qtarget:AddBoxZone("dutymecha", vector3(875.6696, -2100.2686, 30.4796), 2.2, 2.8, {
	name="dutymecha",
	heading=355,
	--debugPoly=true,
	minZ=26.87,
	maxZ=30.87
	}, {
		options = {
			{
				event = "nh-context:DutyMecha",
				icon = "fas fa-sign-in-alt",
				label = "Duty Management",
                job = {
					["mechanic"] = 0,
					["offmechanic"] = 0,
				}
			},
		},
		distance = 2
})