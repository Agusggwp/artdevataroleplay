
ESX = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	PlayerLoaded = true
	ESX.PlayerData = ESX.GetPlayerData()
end)



local isNearPump = false
local isFueling = false
local currentFuel = 0.0
local currentCost = 0.0
local currentCash = 1000
local fuelSynced = false
local inBlacklisted = false

function ManageFuelUsage(vehicle)
	if not DecorExistOn(vehicle, Fuel.FuelDecor) then
		SetFuel(vehicle, math.random(200, 800) / 10)
	elseif not fuelSynced then
		SetFuel(vehicle, GetFuel(vehicle))

		fuelSynced = true
	end

	if IsVehicleEngineOn(vehicle) then
		SetFuel(vehicle, GetVehicleFuelLevel(vehicle) - Fuel.FuelUsage[Round(GetVehicleCurrentRpm(vehicle), 1)] * (Fuel.Classes[GetVehicleClass(vehicle)] or 1.0) / 10)
	end
end

Citizen.CreateThread(function()
	DecorRegister(Fuel.FuelDecor, 1)

	for index = 1, #Fuel.Blacklist do
		if type(Fuel.Blacklist[index]) == 'string' then
			Fuel.Blacklist[GetHashKey(Fuel.Blacklist[index])] = true
		else
			Fuel.Blacklist[Fuel.Blacklist[index]] = true
		end
	end

	for index = #Fuel.Blacklist, 1, -1 do
		table.remove(Fuel.Blacklist, index)
	end

	while true do
		Citizen.Wait(1000)

		local ped = PlayerPedId()

		if IsPedInAnyVehicle(ped) then
			local vehicle = GetVehiclePedIsIn(ped)

			if Fuel.Blacklist[GetEntityModel(vehicle)] then
				inBlacklisted = true
			else
				inBlacklisted = false
			end

			if not inBlacklisted and GetPedInVehicleSeat(vehicle, -1) == ped then
				ManageFuelUsage(vehicle)
			end
		else
			if fuelSynced then
				fuelSynced = false
			end

			if inBlacklisted then
				inBlacklisted = false
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(250)

		local pumpObject, pumpDistance = FindNearestFuelPump()

		if pumpDistance < 2.5 then
			isNearPump = pumpObject

			if Fuel.UseESX then
				local playerData = ESX.GetPlayerData()
				for i=1, #playerData.accounts, 1 do
					if playerData.accounts[i].name == 'money' then
						currentCash = playerData.accounts[i].money
						break
					end
				end
			end
		else
			isNearPump = false

			Citizen.Wait(math.ceil(pumpDistance * 20))
		end
	end
end)

AddEventHandler('fuel:startFuelUpTick', function(pumpObject, ped, vehicle)
	currentFuel = GetVehicleFuelLevel(vehicle)

	while isFueling do
		Citizen.Wait(500)

		local oldFuel = DecorGetFloat(vehicle, Fuel.FuelDecor)
		local fuelToAdd = math.random(10, 20) / 10.0
		local extraCost = fuelToAdd / 1.5 * Fuel.CostMultiplier

		if not pumpObject then
			local petrolcan = exports.ox_inventory:Search('slots', 'WEAPON_PETROLCAN')
			for _, v in pairs(petrolcan) do
				if v.metadata.durability - fuelToAdd >= 0 then
					currentFuel = oldFuel + fuelToAdd
					TriggerServerEvent('ox_inventory:updateWeapon', 'ammo', math.floor(v.metadata.durability - fuelToAdd), v.slot)
				else
					isFueling = false
				end
			end
		else
			currentFuel = oldFuel + fuelToAdd
		end

		if currentFuel > 100.0 then
			currentFuel = 100.0
			isFueling = false
		end

		currentCost = currentCost + extraCost

		if currentCash >= currentCost then
			SetFuel(vehicle, currentFuel)
		else
			isFueling = false
		end
	end

	if pumpObject then
		TriggerServerEvent('fuel:pay', currentCost)
	end

	currentCost = 0.0
end)

AddEventHandler('fuel:refuelFromPump', function(pumpObject, ped, vehicle)
	TaskTurnPedToFaceEntity(ped, vehicle, 1000)
	Citizen.Wait(1000)
	SetCurrentPedWeapon(ped, -1569615261, true)
	LoadAnimDict("timetable@gardener@filling_can")
	TaskPlayAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 2.0, 8.0, -1, 50, 0, 0, 0, 0)

	TriggerEvent('fuel:startFuelUpTick', pumpObject, ped, vehicle)

	while isFueling do
		for _, controlIndex in pairs(Fuel.DisableKeys) do
			DisableControlAction(0, controlIndex)
		end

		local vehicleCoords = GetEntityCoords(vehicle)

		if pumpObject then
			local stringCoords = GetEntityCoords(pumpObject)
			local extraString = ""

			if Fuel.UseESX then
				extraString = "\n" .. Fuel.Strings.TotalCost .. ": ~g~$" .. Round(currentCost, 1)
			end

			DrawText3Ds(stringCoords.x, stringCoords.y, stringCoords.z + 1.2, Fuel.Strings.CancelFuelingPump .. extraString)
			DrawText3Ds(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 0.5, Round(currentFuel, 1) .. "%")
		else
			local petrolcan = exports.ox_inventory:Search('slots', 'WEAPON_PETROLCAN')
			local durability = 0
			for _, v in pairs(petrolcan) do
				durability = v.metadata.durability
			end
			DrawText3Ds(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 0.5, Fuel.Strings.CancelFuelingJerryCan .. "\nGas can: ~g~" .. Round(durability) .. "% | Vehicle: " .. Round(currentFuel, 1) .. "%")
		end

		if not IsEntityPlayingAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 3) then
			TaskPlayAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
		end

		if IsControlJustReleased(0, 38) or DoesEntityExist(GetPedInVehicleSeat(vehicle, -1)) or (isNearPump and GetEntityHealth(pumpObject) <= 0) then
			isFueling = false
		end

		Citizen.Wait(0)
	end

	ClearPedTasks(ped)
	RemoveAnimDict("timetable@gardener@filling_can")
end)

if Fuel.ShowNearestGasStationOnly then
	Citizen.CreateThread(function()
		local currentGasBlip = 0

		while true do
			local coords = GetEntityCoords(PlayerPedId())
			local closest = 1000
			local closestCoords

			for _, gasStationCoords in pairs(Fuel.GasStations) do
				local dstcheck = GetDistanceBetweenCoords(coords, gasStationCoords)

				if dstcheck < closest then
					closest = dstcheck
					closestCoords = gasStationCoords
				end
			end

			if DoesBlipExist(currentGasBlip) then
				RemoveBlip(currentGasBlip)
			end

			currentGasBlip = CreateBlip(closestCoords)

			Citizen.Wait(10000)
		end
	end)
elseif Fuel.ShowAllGasStations then
	Citizen.CreateThread(function()
		for _, gasStationCoords in pairs(Fuel.GasStations) do
			CreateBlip(gasStationCoords)
		end
	end)
end

if Fuel.EnableHUD then
	local function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
		SetTextFont(6)
		SetTextProportional(0)
		SetTextScale(sc, sc)
		N_0x4e096588b13ffeca(jus)
		SetTextColour(r, g, b, a)
		SetTextDropShadow(0, 0, 0, 0,255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(x - 0.1+w, y - 0.02+h)
	end

	local mph = 0
	local kmh = 0
	local fuel = 0
	local displayHud = false

	local x = 0.01135
	local y = 0.002

	Citizen.CreateThread(function()
		while true do
			local ped = PlayerPedId()

			if IsPedInAnyVehicle(ped) and not (Fuel.RemoveHUDForBlacklistedVehicle and inBlacklisted) then
				local vehicle = GetVehiclePedIsIn(ped)
				local speed = GetEntitySpeed(vehicle)

				mph = tostring(math.ceil(speed * 2.236936))
				kmh = tostring(math.ceil(speed * 3.6))
				fuel = tostring(math.ceil(GetVehicleFuelLevel(vehicle)))

				displayHud = true
			else
				displayHud = false

				Citizen.Wait(500)
			end

			Citizen.Wait(50)
		end
	end)

	Citizen.CreateThread(function()
		while true do
			if displayHud then
				DrawAdvancedText(0.130 - x, 0.77 - y, 0.005, 0.0028, 0.6, mph, 255, 255, 255, 255, 6, 1)
				DrawAdvancedText(0.174 - x, 0.77 - y, 0.005, 0.0028, 0.6, kmh, 255, 255, 255, 255, 6, 1)
				DrawAdvancedText(0.2195 - x, 0.77 - y, 0.005, 0.0028, 0.6, fuel, 255, 255, 255, 255, 6, 1)
				DrawAdvancedText(0.148 - x, 0.7765 - y, 0.005, 0.0028, 0.4, "mp/h              km/h              Fuel", 255, 255, 255, 255, 6, 1)
			else
				Citizen.Wait(750)
			end

			Citizen.Wait(0)
		end
	end)
end


RegisterNetEvent('fuel:buyjerrycan', function()
	local ped = PlayerPedId()
	if currentCash >= Fuel.JerryCanCost then
		TriggerServerEvent('bengsing:kasih')
		TriggerServerEvent('fuel:pay', Fuel.JerryCanCost)
		currentCash = ESX.GetPlayerData().money
	else
		exports.ttyy_nuipack:SendAlert('error', 'Kamu tidak memiliki uang')
	end
end)

RegisterNetEvent('mk-bensing:bensin')
AddEventHandler('mk-bensing:bensin',function()
	local vehicle = GetPlayersLastVehicle()
	if GetVehicleFuelLevel(vehicle) < 95 then
		if currentCash > 0 then
			TriggerEvent('mk-bensing:startbensin')
		else
			exports['ttyy_nuipack']:SendAlert('error', 'You dont have enough money')
			--exports['mk-notify']:Alert("Fuel", "Kamu Ga Punya Uang", 3000, 'error')
		end
	else
		exports['ttyy_nuipack']:SendAlert('error', 'Your vehicle is full')
		--exports['mk-notify']:Alert("Fuel", "Your vehicle is full", 3000, 'error')
	end
end)

RegisterNetEvent('mk-bensing:isiulangjerigen')
AddEventHandler('mk-bensing:isiulangjerigen',function()
	local petrolcan = exports.ox_inventory:Search('slots', 'WEAPON_PETROLCAN')
	local durability = -1
	for _, v in pairs(petrolcan) do
		durability = v.metadata.durability
	end
	if Fuel.UseESX then
		local refillCost = Round(Fuel.RefillCost * (1 - durability / 100))

		if refillCost > 0 then
			if currentCash >= refillCost then

				TriggerServerEvent('fuel:pay', refillCost)

				for _, v in pairs(petrolcan) do
					TriggerServerEvent('ox_inventory:updateWeapon', 'ammo', 100, v.slot)
				end
			else
				exports['ttyy_nuipack']:SendAlert('error', 'You dont have enough money')
			end
		else
			exports['ttyy_nuipack']:SendAlert('error', 'Jerrycan fuel')
		end
	end
end)


RegisterNetEvent('mk-bensing:startbensin')
AddEventHandler('mk-bensing:startbensin',function()
	local ped = PlayerPedId()

	if not isFueling and ((isNearPump and GetEntityHealth(isNearPump) > 0)) then
		if IsPedInAnyVehicle(ped) and GetPedInVehicleSeat(GetVehiclePedIsIn(ped), -1) == ped then
			local pumpCoords = GetEntityCoords(isNearPump)

			DrawText3Ds(pumpCoords.x, pumpCoords.y, pumpCoords.z + 1.2, Fuel.Strings.ExitVehicle)
		else
			local vehicle = GetPlayersLastVehicle()
			local vehicleCoords = GetEntityCoords(vehicle)

			if DoesEntityExist(vehicle) and GetDistanceBetweenCoords(GetEntityCoords(ped), vehicleCoords) < 2.5 then
				if not DoesEntityExist(GetPedInVehicleSeat(vehicle, -1)) then
					local stringCoords = GetEntityCoords(isNearPump)
					local canFuel = true

					if GetSelectedPedWeapon(ped) == 883325847 then
						stringCoords = vehicleCoords

						if GetAmmoInPedWeapon(ped, 883325847) < 100 then
							canFuel = false
						end
					end

				if GetVehicleFuelLevel(vehicle) < 95 and canFuel then
					if currentCash > 0 then
						isFueling = true
						TriggerEvent('fuel:refuelFromPump', isNearPump, ped, vehicle)
						LoadAnimDict("timetable@gardener@filling_can")
					end
				else
					exports['ttyy_nuipack']:SendAlert('error', 'You dont have enough money')
					--exports['mk-notify']:Alert("Fuel", "Kamu Ga Punya Uang", 3000, 'error')
				end
			elseif not canFuel then
				exports['ttyy_nuipack']:SendAlert('error', 'Cant refuel vehicle')
				--exports['mk-notify']:Alert("Fuel", "Cant refuel vehicle", 3000, 'error')
			else
				exports['ttyy_nuipack']:SendAlert('error', 'Your vehicle is full')
				--exports['mk-notify']:Alert("Fuel", "Your vehicle is full", 3000, 'error')
			end
		else
			Citizen.Wait(250)
		end
	end
end
end)






Citizen.CreateThread(function()
	local pombensin = {
        1339433404,
		-469694731,
		1694452750,
		-164877493,
		-462817101,
		-2007231801,
		1933174915,
    }
    exports['qtarget']:AddTargetModel(pombensin, {
			options = {
            {
                event = "mk-bensing:bensin",
                icon = "fas fa-gas-pump",
                label = "Refueling Vehicle",
				canInteract = function()
					local ped = PlayerPedId()
					local vehicle = GetPlayersLastVehicle()
					local vehicleCoords = GetEntityCoords(vehicle)
					if DoesEntityExist(vehicle) and GetDistanceBetweenCoords(GetEntityCoords(ped), vehicleCoords) < 2.5 then 
						return true
					else 
						return false
					end 
				end,	

            },
			{
                event = "fuel:buyjerrycan", --BUY JERRYCAN
                icon = "fas fa-oil-can",
                label = "Buy Jerrycan",
				canInteract = function()
					local ped = PlayerPedId()
					if not HasPedGotWeapon(ped, 883325847) then 
						return true
					else 
						return false
					end 
				end,
            },

			{
                event = "mk-bensing:isiulangjerigen",
                icon = "fas fa-oil-can",
                label = "Refueling Jerrycan",
				canInteract = function()
					local ped = PlayerPedId()
					if HasPedGotWeapon(ped, 883325847) then 
						return true
					else 
						return false
					end 
				end,
            },

            {
                event = "mk-bensing:batalkanbensin",
                icon = "fas fa-times",
                label = "Cancel Refueling Vehicle",
				canInteract = function()
					if isFueling then 
						return true
					else 
						return false
					end 
				end,
            },
        },
        distance = 1.5
    })
end)

RegisterNetEvent('isibensinnya', function()
	local ped = PlayerPedId()
	local petrolcan = exports.ox_inventory:Search('slots', 'WEAPON_PETROLCAN')
	local durability = -1
	local count = 0
	for _, v in pairs(petrolcan) do
		durability = v.metadata.durability
		count = count + v.count
	end
	if HasPedGotWeapon(ped, 883325847) and count >= 1 then
		print(count)
		local vehicle = GetPlayersLastVehicle()
		local vehicleCoords = GetEntityCoords(vehicle)

		if DoesEntityExist(vehicle) and GetDistanceBetweenCoords(GetEntityCoords(ped), vehicleCoords) < 2.5 then
			if not DoesEntityExist(GetPedInVehicleSeat(vehicle, -1)) then
				local stringCoords = GetEntityCoords(isNearPump)
				local canFuel = true
				if durability ~= -1 then
					stringCoords = vehicleCoords

					if durability < 1 then
						canFuel = false
					end
				end

				if GetVehicleFuelLevel(vehicle) < 95 and canFuel then
					if currentCash > 0 then
						--DrawText3Ds(stringCoords.x, stringCoords.y, stringCoords.z + 1.2, Fuel.Strings.EToRefuel)
					
						isFueling = true

						TriggerEvent('fuel:refuelFromPump', isNearPump, ped, vehicle)
						LoadAnimDict("timetable@gardener@filling_can")
					
					else
						DrawText3Ds(stringCoords.x, stringCoords.y, stringCoords.z + 1.2, Fuel.Strings.NotEnoughCash)
					end
				elseif not canFuel then
					DrawText3Ds(stringCoords.x, stringCoords.y, stringCoords.z + 1.2, Fuel.Strings.JerryCanEmpty)
				else
					--DrawText3Ds(stringCoords.x, stringCoords.y, stringCoords.z + 1.2, Fuel.Strings.FullTank)
				end
			end
			
		else
			Citizen.Wait(250)
		end
	else
		Citizen.Wait(250)
	end

	Citizen.Wait(0)
end)