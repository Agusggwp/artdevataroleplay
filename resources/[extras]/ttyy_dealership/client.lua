local dealership = nil
local atDisplay
local atDealerZone
local atTestDriveReturn
local displayvehicles = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	ESX.PlayerData = ESX.GetPlayerData()
end)

local function Blips(coords, type, label, blipOptions)
    if job then return end
    if blip == false then return end
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, blipOptions.sprite or 357)
    SetBlipScale(blip, blipOptions.scale or 0.8)
    SetBlipColour(blip, blipOptions.colour ~= nil and blipOptions.colour or type == 'car' and Config.BlipColors.Car or type == 'boat' and Config.BlipColors.Boat or Config.BlipColors.Aircraft)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(label)
    EndTextCommandSetBlipName(blip)
end

function Split(s, delimiter)
    if s ~= nil then
        result = {};
        for match in (s..delimiter):gmatch("(.-)"..delimiter) do
            table.insert(result, match);
        end
        return result;
    end
end

function splitByChunk(text, chunkSize)
    local s = {}
    for i=1, #text, chunkSize do
        s[#s+1] = text:sub(i,i+chunkSize - 1)
    end
    return s
end

function comma_value(amount)
	local formatted = amount
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
			break
		end
	end
	return formatted
end

---------------
-- Polyzones --
---------------

function onEnter(self)
	if Config.Dealerships[self.name] ~= nil and  Config.Dealerships[self.name].zone.name == self.name then
		dealership = self.name
		Citizen.Wait(10)
		TriggerServerEvent('ttyy_dealerships:playerEnteredDealership', dealership)
		TriggerServerEvent('ttyy_dealerships:getDisplays', dealership)
	end
	Citizen.Wait(100)
	if dealership ~= nil then
		if dealership.." TestDriveReturn" == self.name then
			TriggerEvent('ttyy_dealerships:atTestDriveReturn')
			atTestDriveReturn = true
		end
		for k2, v2 in pairs(Config.Dealerships[dealership].displayPoints) do
			if dealership.." Display "..v2.id == self.name then
				print("Entered "..dealership.." Display "..v2.id)
				atDisplay = true
				Citizen.Wait(100)
				TriggerEvent('ttyy_dealerships:atDisplay', dealership.." Display " ..v2.id)
				break
			end
		end
		if Config.Dealerships[dealership].dealerZones ~= nil and ESX.GetPlayerData().job.name == Config.Dealerships[dealership].job then
			for k3, v3 in pairs(Config.Dealerships[dealership].dealerZones) do
				if dealership.." dealerZone "..v3.id == self.name then
					-- print("Entered "..dealership.." Display "..v3.id)
					atDealerZone = true
					Citizen.Wait(100)
					TriggerEvent('ttyy_dealerships:atDealerZone')
					break
				end
			end
		end
	end
end

function onExit(self)
	lib.hideTextUI()
	if Config.Dealerships[self.name] ~= nil and  Config.Dealerships[self.name].zone.name == self.name then
		TriggerServerEvent('ttyy_dealerships:playerLeftDealership')
		dealership = nil
		displayvehicles = {}
	end
	if dealership ~= nil then
		atTestDriveReturn = false
		atDisplay = false
		atDealerZone = false
	end
end

function insideZone(self)
end

for k, v in pairs(Config.Dealerships) do
	if Config.OxTarget and v.dealerTargetZones ~= nil then
		for k2, v2 in pairs(v.dealerTargetZones) do
			exports.ox_target:addBoxZone({
				coords = vec3(v2.x, v2.y, v2.z),
				size = vec3(v2.l, v2.w, v2.height),
				rotation = v2.h,
				debug = false,
				options = {
					{
						name = k.." Zone "..v2.id,
						event = 'ttyy_dealerships:targetDealerZone',
						icon = "fa-solid fa-desktop",
						label = "Open Employee Catalog",
						canInteract = function(entity, distance, coords, name)
							if v.job == ESX.GetPlayerData().job.name then
								return true
							end
						end,
						distance = 2.5
					},
				}
			})
		end
	end
	lib.zones.box({
		coords = vec3(v.zone.x, v.zone.y, v.zone.z),
		size = vec3(v.zone.w, v.zone.l, 50),
		rotation = v.zone.h,
		debug = false,
		inside = insideZone,
		onEnter = onEnter,
		onExit = onExit,
		name = v.zone.name,
	})

	if v.testDriveReturn ~= nil then
		lib.zones.box({
			coords = vec3(v.testDriveReturn.x, v.testDriveReturn.y, v.testDriveReturn.z),
			size = vec3(v.testDriveReturn.w, v.testDriveReturn.l, 10),
			rotation = v.testDriveReturn.h,
			debug = false,
			inside = insideZone,
			onEnter = onEnter,
			onExit = onExit,
			name = v.zone.name.." TestDriveReturn",
		})
	end

	for k2, v2 in pairs(v.displayPoints) do
		lib.zones.sphere({
			coords = vec3(v2.x, v2.y, v2.z),
			radius = v2.radius,
			debug = false,
			inside = insideZone,
			onEnter = onEnter,
			onExit = onExit,
			name = v.zone.name.." Display "..v2.id,
		})
	end

	if not Config.OxTarget or v.dealerTargetZones == nil then
		if v.dealerZones ~= nil then
			for k3, v3 in pairs(v.dealerZones) do
				lib.zones.box({
					coords = vec3(v3.x, v3.y, v3.z),
					size = vec3(v3.w, v3.l, 10),
					rotation = v3.h,
					debug = false,
					inside = insideZone,
					onEnter = onEnter,
					onExit = onExit,
					name = v.zone.name.." dealerZone "..v3.id,
				})
			end
		end
	end

    if v.blip ~= false then
        Blips(vector3(v.zone.x, v.zone.y, v.zone.z), v.type, v.label, v.blip)
    end
end

RegisterNetEvent('ttyy_dealerships:showMenu')
AddEventHandler('ttyy_dealerships:showMenu', function (menu, context)
	if not context then
		lib.showMenu(menu)
	else 
		lib.showContext(menu)
	end
end)

RegisterNetEvent("ttyy_dealerships:updateTable")
AddEventHandler("ttyy_dealerships:updateTable", function(display)
    for k, v in pairs(displayvehicles) do
        if v.display == display then
            table.remove(displayvehicles, k)
            break
        end
    end
end)

RegisterNetEvent('ttyy_dealerships:notification')
AddEventHandler('ttyy_dealerships:notification', function (title, description, alertType)
	lib.notify({
		title = title,
		description = description,
		status = alertType
	})
end)

--------------
-- Displays --
--------------

RegisterNetEvent('ttyy_dealerships:targetDealerZone')
AddEventHandler('ttyy_dealerships:targetDealerZone', function ()
	TriggerServerEvent('ttyy_dealerships:getDealershipVehicles', dealership)
end)

RegisterNetEvent('ttyy_dealerships:atDealerZone')
AddEventHandler('ttyy_dealerships:atDealerZone', function ()
	lib.showTextUI("[E] Employee Catalog", {icon = "fa-solid fa-car"})
    Citizen.CreateThread(function ()
        while atDealerZone do
            if IsControlJustReleased(0, 54) then
				TriggerServerEvent('ttyy_dealerships:getDealershipVehicles', dealership)
			end
            Citizen.Wait(0)
        end
    end)
end)

RegisterNetEvent('ttyy_dealerships:atDisplay')
AddEventHandler('ttyy_dealerships:atDisplay', function (display)
	lib.showTextUI("[E] Browse Catalog", {icon = "fa-solid fa-car"})
    Citizen.CreateThread(function ()
        while atDisplay do
            if IsControlJustReleased(0, 54) then
                TriggerServerEvent('ttyy_dealerships:getDealershipVehicles', dealership, display)
            end
            Citizen.Wait(0)
        end 
    end)
end)

RegisterNetEvent('ttyy_dealerships:sendDisplays')
AddEventHandler('ttyy_dealerships:sendDisplays', function(data)
	if #data > 1 then
		for k, v in pairs(Config.Dealerships) do
			if v.zone.name == dealership then
				for k2, v2 in pairs(v.displayPoints) do
					for k3, v3 in pairs(data) do

						if v2.id == v3.display then
							TriggerEvent('ttyy_dealerships:spawnVehicle', v2, v3.vehicleName, false)
						end
					end
				end
			end
		end
	else 
		for k, v in pairs(Config.Dealerships) do
			if v.zone.name == dealership then
				for k2, v2 in pairs(v.displayPoints) do
					local displayVehicle = math.random(1, #v.dealershipVehicles)
					TriggerEvent('ttyy_dealerships:spawnVehicle', v2, v.dealershipVehicles[displayVehicle], true)
				end
			end
		end
	end
end)

RegisterNetEvent('ttyy_dealerships:viewDealershipVehicles')
AddEventHandler('ttyy_dealerships:viewDealershipVehicles', function (data, display)
	local classVehicles = {}
	local classesAvailable = {}
	for k, v in pairs(Config.ClassList) do
		for k2, v2 in pairs(data) do
			if GetVehicleClassFromName(v2.name) == k then
				table.insert(classesAvailable,  {label = Config.ClassList[GetVehicleClassFromName(v2.name)], args = GetVehicleClassFromName(v2.name)})
				break
			end
		end
	end

	table.sort(classesAvailable, function (k1, k2) return k1.label < k2.label end )
	lib.registerMenu({
		id = 'vehicle_class_select_menu',
		title = 'Classes',
		position = 'top-left',
		onSideScroll = function(selected, scrollIndex, args)
		end,
		onSelected = function(selected, scrollIndex, args)
		end,
		onClose = function()
		end,
		options = classesAvailable
	}, function(selected, scrollIndex, args)
		ESX.TriggerServerCallback('ttyy_dealerships:dealearCheck', function(success)
			if success then
				for k, v in pairs(data) do
					if GetVehicleClassFromName(v.name) == args then
						table.insert(classVehicles,  {
							label = GetLabelText(GetDisplayNameFromVehicleModel(v.name)),
							description = "Price: $"..comma_value(v.price),
							args = {name = v.name, price = v.price}
						})
					end
				end
			else
				for k, v in pairs(data) do
					if GetVehicleClassFromName(v.name) == args then
						table.insert(classVehicles,  {
							label = GetLabelText(GetMakeNameFromVehicleModel(v.name)).."  "..GetLabelText(GetDisplayNameFromVehicleModel(v.name)),
							description = "Price: $"..comma_value(math.floor(v.price * Config.Dealerships[dealership].noDealerUpcharge)),
							args = {name = v.name, price = math.floor(v.price * Config.Dealerships[dealership].noDealerUpcharge)}
						})
					end
				end
			end
		end, Config.Dealerships[dealership].job)		
		Citizen.Wait(100)
		TriggerEvent('ttyy_dealerships:viewClassVehicles', classVehicles, display)
	end)

	Citizen.Wait(100)
	TriggerEvent('ttyy_dealerships:showMenu', "vehicle_class_select_menu")
end)

RegisterNetEvent('ttyy_dealerships:viewClassVehicles')
AddEventHandler('ttyy_dealerships:viewClassVehicles', function (menu, display)
	local menu = menu
	local display = display

	table.sort(menu, function (k1, k2) return k1.args.price < k2.args.price end )

	Citizen.Wait(100)
	lib.registerMenu({
		id = 'vehicle_class_menu',
		title = 'Classes',
		position = 'top-left',
		onSideScroll = function(selected, scrollIndex, args)
		end,
		onSelected = function(selected, scrollIndex, args)
			if display ~= nil then
				local display_id = Split(display, " ")
				local veh
				for k, v in pairs(Config.Dealerships[display_id[1]].displayPoints) do
					if v.id == display_id[3] then
						veh = lib.getClosestVehicle(vector3(v.x, v.y, v.z), 4, false)

						if DoesEntityExist(veh) then
							TriggerEvent('ttyy_dealerships:deleteVehicle', veh, display_id[1], display_id[3], true)
						end
						TriggerEvent('ttyy_dealerships:spawnVehicle', v, args.name, true)
						break
					end
				end
			end
		end,
		onClose = function()
		end,
		options = menu
	}, function(selected, scrollIndex, args)
		if display ~= nil then
			TriggerEvent('ttyy_dealerships:confirmPurchase', args, display)
		else 
			TriggerEvent('ttyy_dealerships:dealerOptions', args)
		end
	end)

	Citizen.Wait(10)
	TriggerEvent('ttyy_dealerships:showMenu', "vehicle_class_menu")
end)

RegisterNetEvent('ttyy_dealerships:spawnVehicle')
AddEventHandler('ttyy_dealerships:spawnVehicle', function(data, Vehicle, addToServerTable)
	local veh
	lib.requestModel(Vehicle)
	veh = lib.getClosestVehicle(vector3(data.x, data.y, data.z), 4, false)

	if not DoesEntityExist(veh) then
		displayVehicle = CreateVehicle(Vehicle, data.x, data.y, data.z, data.h, true, true)
		SetVehicleDirtLevel(displayVehicle, 0.0)
	
		SetVehicleNumberPlateText(displayVehicle, "DISPLAY")
		SetEntityAsMissionEntity(displayVehicle, true, true)
		FreezeEntityPosition(displayVehicle, true)

		table.insert(displayvehicles,  {
			dealership = dealership,
			display = data.id,
			vehicleName = Vehicle,
			vehicle = displayVehicle
		})
	end

	if addToServerTable == true then
		local vehicleData = {
			dealership = dealership,
			display = data.id,
			vehicleName = Vehicle,
		}
		TriggerServerEvent('ttyy_dealerships:setDisplayVehicle', vehicleData)
	end
end)

RegisterNetEvent('ttyy_dealerships:deleteVehicle')
AddEventHandler('ttyy_dealerships:deleteVehicle', function(vehicle, dealership, display, tableremove)
	DeleteEntity(vehicle)
	if tableremove then
		Citizen.Wait(100)
		TriggerServerEvent('ttyy_dealerships:removeDisplayVehicle', dealership, display)
	end
end)

-------------------
--Dealer Options --
-------------------

-- TriggerEvent('chat:addSuggestion', '/dealermenu', 'Open dealer selling and financing options')
-- RegisterCommand('dealermenu', function()
-- 	TriggerServerEvent('ttyy_dealerships:getDealershipVehicles', dealership)
-- end, false)

RegisterNetEvent('ttyy_dealerships:dealerOptions')
AddEventHandler('ttyy_dealerships:dealerOptions', function (data)
	lib.registerContext({
		id = 'dealer_options_menu',
		title = 'Dealer Purchase',
		onExit = function()
		end,
		options = {
			{
				title = 'Sell Vehicle',
				description = "Who want's a new car?",
				icon = "hand-holding-dollar",
				onSelect = function(args)
					local input = lib.inputDialog('Sell Vehicle', {
						{ type = "input", label = 'Customer ID', icon = "user", placeholder = "123"},
						{ type = "checkbox", label = "Finance: "..(Config.financeInterest * 100).."% interest applied per week", checked = false },
						{ type = 'number', label = 'Finance Length', placeholder = Config.minFinanceLength.."-"..Config.maxFinanceLength, min = Config.minFinanceLength, max = Config.maxFinanceLength},
						{ type = "number", label = 'Downpayment', placeholder = Config.minDownpayment.."%-"..Config.maxDownpayment.."%", min = Config.minDownpayment, max = Config.maxDownpayment},

					})
					if not input then return end
					local player = tonumber(input[1])
					TriggerServerEvent('ttyy_dealerships:confirmCustomerPurchase', data, player, input[2], input[3], input[4])
				end,
			},
			{
				title = 'Testdrive',
				description = "How's this one",
				icon = "car-side",
				onSelect = function(args)
					lib.requestModel(data.name)

					testdrive = CreateVehicle(data.name, Config.Dealerships[dealership].purchaseSpawn.x, Config.Dealerships[dealership].purchaseSpawn.y, Config.Dealerships[dealership].purchaseSpawn.z, Config.Dealerships[dealership].purchaseSpawn.h, true, true)
					SetVehicleDirtLevel(testdrive, 0.0)
					SetVehicleNumberPlateText(testdrive, "TESTDRVE")
				end,
			},
		}
	})

	TriggerEvent('ttyy_dealerships:showMenu', "dealer_options_menu", true)
end)

RegisterNetEvent('ttyy_dealerships:atTestDriveReturn')
AddEventHandler('ttyy_dealerships:atTestDriveReturn', function ()
	local showing = false
	local vehicle = 0
	local sleep = 0
	local ped = PlayerPedId()
    Citizen.CreateThread(function ()
        while atTestDriveReturn do
			if IsPedInAnyVehicle(ped, false) and Config.Dealerships[dealership].job == ESX.GetPlayerData().job.name then
				sleep = 0
				if vehicle ~= 0 then
					if GetVehicleNumberPlateText(vehicle) == "TESTDRVE" then
						if not showing then 
							lib.showTextUI("[E] Retun Test Drive", {icon = "fa-solid fa-car"})
						end
						if IsControlJustReleased(0, 54) then
							DeleteVehicle(vehicle)
						end
					end
				else
					vehicle = GetVehiclePedIsIn(ped, false)
				end
			else
				lib.hideTextUI()
				vehicle = 0 
				showing = false
				sleep = 2000
			end
            Citizen.Wait(sleep)
        end
    end)
end)

----------------
-- Purchasing --
----------------

RegisterNetEvent('ttyy_dealerships:confirmPurchase')
AddEventHandler('ttyy_dealerships:confirmPurchase', function (data, display, financed, financeLength, downPayment, fromDealer, dealerID)
	local description
	local metadata
	if financed ~= nil then
		local downPayment = downPayment / 100
		downPayment = math.floor(downPayment * data.price)
		local weeklyPayment = math.floor((((data.price - (downPayment)) * (1 + (Config.financeInterest * financeLength))) / financeLength))
		description = "$"..comma_value(data.price*  (1 + (Config.financeInterest * financeLength)))
		metadata = {
			{label = 'Financed', value = "You better pay this :|"},
			{label = 'Downpayment', value = "$"..comma_value(downPayment)},
			{label = 'Weekly Payment', value =  "$"..comma_value(weeklyPayment).." for "..financeLength.." weeks"},
		}
	else
		description = "$"..comma_value(data.price)
	end
	lib.registerContext({
		id = 'purchase_confirmation_menu',
		title = 'Confirm Purchase',
		onExit = function()
		end,
		options = {
			{
				title = 'Accept Offer',
				description = description,
				icon = "check",
				onSelect = function(args)
					if financed ~= nil then
						TriggerEvent('ttyy_dealerships:financeVehicle', Config.Dealerships[dealership], data, financeLength, downPayment, dealerID)
					else
						TriggerEvent('ttyy_dealerships:purchaseVehicle', Config.Dealerships[dealership], data, dealerID)
					end
				end,
				metadata = metadata
			},
			{
				title = 'Deny Offer',
				description = "That's a bit much",
				icon = "ban",
				onSelect = function(args)
					if display ~= nil then
						TriggerEvent('ttyy_dealerships:showMenu', "vehicle_class_menu")
					end
				end,
			},
		}
	})
	Citizen.Wait(10)
	TriggerServerEvent('ttyy_dealerships:checkPeopleWorking', Config.Dealerships[dealership].job, fromDealer)
end)

RegisterNetEvent('ttyy_dealerships:purchaseVehicle')
AddEventHandler('ttyy_dealerships:purchaseVehicle', function (data, vehicle, dealerID)
	local generatedPlate = GeneratePlate()
	ESX.TriggerServerCallback('ttyy_dealerships:buyVehicle', function(success)
		if success then
			lib.requestModel(vehicle.name)

			displayVehicle = CreateVehicle(vehicle.name, data.purchaseSpawn.x, data.purchaseSpawn.y, data.purchaseSpawn.z, data.purchaseSpawn.h, true, true)
			SetVehicleDirtLevel(displayVehicle, 0.0)
			SetVehicleNumberPlateText(displayVehicle, generatedPlate)
		else
			TriggerEvent("ttyy_dealerships:notification", "Not enough money in your bank account!", nil, "error")
		end
	end, vehicle.name, generatedPlate, data.type, Config.Dealerships[dealership], GetLabelText(GetDisplayNameFromVehicleModel(vehicle.name)), dealerID)
end)

---------------
-- Financing --
---------------

TriggerEvent('chat:addSuggestion', '/finances', 'View and manage financed vehicles')
RegisterCommand('finances', function()
	TriggerServerEvent('ttyy_dealerships:getFinancedVehicles')
end, false)

RegisterNetEvent('ttyy_dealerships:finaceCheckMenu')
AddEventHandler('ttyy_dealerships:finaceCheckMenu', function (data, data2)
	local metadata = {}

	if #data > 0 then
		for i=1, #data, 1 do
			local vehicle = json.decode(data[i].vehicle)
			local vehicleMake = GetLabelText(GetMakeNameFromVehicleModel(vehicle.model))
			local vehicleModel = GetLabelText(GetDisplayNameFromVehicleModel(vehicle.model))
			local date = splitByChunk(tostring(data[i].nextpayment), 2)

			table.insert(metadata,  {
				title = "Financed: "..vehicleMake.."  "..vehicleModel,
				description = "Plate: "..data[i].plate,
				metadata = {
					{label = 'Next Payment',  value = date[3].."/"..date[4].."/"..date[1]..date[2]},
					{label = 'Amount',        value = "$"..comma_value(data[i].weeklypayment)},
					{label = 'Payments Left', value = data[i].rempayments},
				},
				onSelect = function(args)
					TriggerEvent('ttyy_dealerships:finacePayMenu', data[i], vehicleMake, vehicleModel)
				end,
			})
		end

		if #data2 > 0 then
			for i=1, #data2, 1 do
				local vehicle = json.decode(data2[i].vehicle)
				local vehicleMake = GetLabelText(GetMakeNameFromVehicleModel(vehicle.model))
				local vehicleModel = GetLabelText(GetDisplayNameFromVehicleModel(vehicle.model))
				print(data2[i].rempayments, data2[i].weeklypayment)

				table.insert(metadata,  {
					title = "Repoed: "..vehicleMake.."  "..vehicleModel,
					description = "Plate: "..data2[i].plate,
					metadata = {
						{label = 'Balance Owed',  value = "$"..comma_value((data2[i].rempayments * data2[i].weeklypayment) * Config.repoFine)},
					},
					onSelect = function(args)
						TriggerEvent('ttyy_dealerships:repoedVehicleMenu', data2[i], vehicleMake, vehicleModel)
					end,
				})
			end
		end

		table.sort(metadata, function (k1, k2) return k1.title < k2.title end )

		lib.registerContext({
			id = 'finaceCheckMenu',
			title = 'Financed Vehicles',
			onExit = function()
			end,
			options = metadata
		})
		Citizen.Wait(10)
		TriggerEvent('ttyy_dealerships:showMenu', "finaceCheckMenu", true)
	else
		TriggerEvent("ttyy_dealerships:notification", "No financed vehicles", nil, "error")
	end
end)

RegisterNetEvent('ttyy_dealerships:finacePayMenu')
AddEventHandler('ttyy_dealerships:finacePayMenu', function (data, vehicleMake, vehicleModel)
	lib.registerContext({
		id = 'finacePayMenu',
		title = vehicleModel..": "..data.plate,
		menu = "finaceCheckMenu",
		onExit = function()
		end,
		options = {
			{
				title = "Make next payment early",
				description = "I've got some extra money laying around",
				icon = "money-check-dollar",
				onSelect = function(args)
					TriggerServerEvent('ttyy_dealerships:makePayment', data.plate, data.weeklypayment, data.identifier, vehicleModel)
				end,
			},
			{
				title = "Pay remaining balance",
				description = "Finally done with it",
				icon = "money-check-dollar",
				onSelect = function(args)
					TriggerServerEvent('ttyy_dealerships:makePayment', data.plate, data.weeklypayment, data.identifier, vehicleModel, true)
				end,
			},
			{
				title = "Cancel Finance",
				description = "Vehicle will be repoed",
				icon = "ban",
				onSelect = function(args)
					TriggerServerEvent('ttyy_dealerships:repoVehicle', data.plate)
				end,
			},
		}
	})
	Citizen.Wait(10)
	TriggerEvent('ttyy_dealerships:showMenu', "finacePayMenu", true)
end)

RegisterNetEvent('ttyy_dealerships:financeVehicle')
AddEventHandler('ttyy_dealerships:financeVehicle', function (data, vehicle, financeLength, downPayment, dealerID)
	local generatedPlate = GeneratePlate()
	ESX.TriggerServerCallback('ttyy_dealerships:financeVehicle', function(success)
		if success then
			lib.requestModel(vehicle.name)

			displayVehicle = CreateVehicle(vehicle.name, data.purchaseSpawn.x, data.purchaseSpawn.y, data.purchaseSpawn.z, data.purchaseSpawn.h, true, true)
			SetVehicleDirtLevel(displayVehicle, 0.0)
			SetVehicleNumberPlateText(displayVehicle, generatedPlate)
		else
			TriggerEvent("ttyy_dealerships:notification", "Not enough money in your bank account!", nil, "error")
		end
	end, vehicle.name, generatedPlate, data.type, financeLength, downPayment, GetLabelText(GetDisplayNameFromVehicleModel(vehicle.name)), dealerID)
end)

RegisterNetEvent('ttyy_dealerships:repoedVehicleMenu')
AddEventHandler('ttyy_dealerships:repoedVehicleMenu', function (data, vehicleMake, vehicleModel)
	lib.registerContext({
		id = 'repoedVehicleMenu',
		title = vehicleModel..": "..data.plate,
		menu = "finaceCheckMenu",
		onExit = function()
		end,
		options = {
			{
				title = "Recover Vehicle",
				description = "Recovery Cost $"..comma_value((data.rempayments * data.weeklypayment) * Config.repoFine),
				icon = "check",
				onSelect = function(args)
					TriggerServerEvent('ttyy_dealerships:recoverRepoedVehicle', data.plate, vehicleModel)
				end,
			},
			{
				title = "Abandon Vehicle",
				description = "I don't want this anymore",
				icon = "ban",
				onSelect = function(args)
					TriggerServerEvent('ttyy_dealerships:abandonRepoedVehicle', data.plate)
				end,
			},
		}
	})
	Citizen.Wait(10)
	TriggerEvent('ttyy_dealerships:showMenu', "repoedVehicleMenu", true)
end)

------------------------------------
-- Give Vehicle To Another Player --
------------------------------------

TriggerEvent('chat:addSuggestion', '/givecarkeys', 'Transfers car to the nearest person')
RegisterCommand("givecarkeys", function(source, args, rawCommand)
	TriggerEvent('ttyy_dealerships:keys')
end, false)

RegisterNetEvent("ttyy_dealerships:keys")
AddEventHandler("ttyy_dealerships:keys", function()
	giveCarKeys()
end)

function giveCarKeys()
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	local vehicle = lib.getClosestVehicle(vector3(coords.x, coords.y, coords.z), 6, true)
	local plate = GetVehicleNumberPlateText(vehicle)
	local vehicleProps = lib.getVehicleProperties(vehicle)
	ESX.TriggerServerCallback('ttyy_dealerships:requestPlayerCars', function(isOwnedVehicle)
		if isOwnedVehicle then
			local closestPlayer = lib.getClosestPlayer(coords, 4, false)
			if closestPlayer ~= nil then
				TriggerEvent("ttyy_dealerships:notification", "Succesfully transfered vehicle", "Plate: "..vehicleProps.plate, "success")
				TriggerServerEvent('ttyy_dealerships:setVehicleOwnedPlayerId', GetPlayerServerId(closestPlayer), vehicleProps)
			else
				TriggerEvent("ttyy_dealerships:notification", "No one nearby!", nil, "error")
			end
		end
	end, GetVehicleNumberPlateText(vehicle))
end

-----------
-- Plate --
-----------

local NumberCharset = {}
local Charset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function GeneratePlate()
	local generatedPlate
	local doBreak = false
	while true do
		Citizen.Wait(2)
		math.randomseed(GetGameTimer())
		generatedPlate = string.upper(GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1)..GetRandomPlate(1))
		ESX.TriggerServerCallback('ttyy_dealerships:isPlateTaken', function(isPlateTaken)
			if not isPlateTaken then
				doBreak = true
			end
		end, generatedPlate)

		if doBreak then
			break
		end
	end
	return generatedPlate
end

-- mixing async with sync tasks
function IsPlateTaken(plate)
	local callback = 'waiting'
	ESX.TriggerServerCallback('ttyy_dealerships:isPlateTaken', function(isPlateTaken)
		callback = isPlateTaken
	end, plate)
	while type(callback) == 'string' do
		Citizen.Wait(0)
	end
	return callback
end

function GetRandomPlate(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	local digit = math.random(1,36)
	if digit <= 26 and length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	elseif digit <= 36 and length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomNumber(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomLetter(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end