ESX                           = nil
local PlayerData                = {}
local menuIsShowed 				 = false
local hasAlreadyEnteredMarker 	 = false
local hasAlreadyEnteredMarkerr 	 = false
local lastZone 					 = nil
local bet = 0
local tekst = 0
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('ramen:intisusu')
AddEventHandler('ramen:intisusu', function()
	exports.ox_inventory:Progress({
		duration = 1000,
		label = 'Memeras SusuSapi',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true
		},
		anim = {
			dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
			clip = "machinic_loop_mechandplayer",
			flags = 49,
		},
	}, function(cancel)
	ngumpulin()
	Wait(150)
	
	end)
end)

function ngumpulin()
TriggerServerEvent('ramen:ambilsusu')
end

local sapi = {
	`a_c_cow`
}

-- Animal handler
exports['qtarget']:AddTargetModel(sapi, {
	options = {
		{
			event = "ramen:intisusu",
			icon = "fas fa-steak",
			label = "Take",
			--job = 'slaughterer',
		},
	},
	distance = 3.5
})


RegisterNetEvent('ramen:animperassusu')
AddEventHandler('ramen:animperassusu', function()
	playerPed = PlayerPedId()	
	ClearPedTasks(PlayerPedId())
	FreezeEntityPosition(playerPed, true)
end)

RegisterNetEvent('ramen:animselesai')
AddEventHandler('ramen:animselesai', function()
	playerPed = PlayerPedId()
	FreezeEntityPosition(playerPed, false)
	ClearPedTasks(PlayerPedId())

Citizen.Wait(500)

end)


RegisterNetEvent('ramen:animmemeras')
AddEventHandler('ramen:animmemeras', function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
Citizen.Wait(15000)
end)



function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(10)
	end
end

Citizen.CreateThread(function()
  RequestModel(GetHashKey("a_c_cow"))
	while not HasModelLoaded(GetHashKey("a_c_cow")) do
		Wait(155)
	end

	local ped =  CreatePed(4, GetHashKey("a_c_cow"), 2441.06, 4755.95, 33.35, -149.404, false, true)
		FreezeEntityPosition(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
	while true do
		Citizen.Wait(10000)
		TaskPedSlideToCoord(ped, 2441.76, 4755.95, 33.45, -149.404, 10)
	end
end)

Citizen.CreateThread(function()
  RequestModel(GetHashKey("a_c_cow"))
	while not HasModelLoaded(GetHashKey("a_c_cow")) do
		Wait(155)
	end

		local ped =  CreatePed(4, GetHashKey("a_c_cow"), 2443.96, 4764.95, 33.35, -349.404, false, true)
		FreezeEntityPosition(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		while true do
			Citizen.Wait(10000)
			TaskPedSlideToCoord(ped, 2443.76, 4764.95, 33.45, -349.404, 10)
		end
end)

Citizen.CreateThread(function()
  RequestModel(GetHashKey("a_c_cow"))
	while not HasModelLoaded(GetHashKey("a_c_cow")) do
		Wait(155)
	end

		local ped =  CreatePed(4, GetHashKey("a_c_cow"), 2434.76, 4764.95, 33.35, 149.404, false, true)
		FreezeEntityPosition(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		while true do
			Citizen.Wait(10000)
			TaskPedSlideToCoord(ped, 2434.76, 4764.95, 33.45, 749.404, 10)
		end
end)

Citizen.CreateThread(function()
  RequestModel(GetHashKey("a_c_cow"))
	while not HasModelLoaded(GetHashKey("a_c_cow")) do
		Wait(155)
	end

		local ped =  CreatePed(4, GetHashKey("a_c_cow"), 2430.76, 4773.95, 33.45, 749.404, false, true)
		
		SetBlockingOfNonTemporaryEvents(ped, true)
		while true do
			Citizen.Wait(10000)

		end
end)

local blips = {

	{title="Peternakan Sapi", colour=4, id=141, x = 2438.240, y = 4765.890, z = 35.00},

} 

Citizen.CreateThread(function()
   for _, info in pairs(blips) do
	 info.blip = AddBlipForCoord(info.x, info.y, info.z)
	 SetBlipSprite(info.blip, info.id)
	 SetBlipDisplay(info.blip, 4)
	 SetBlipScale(info.blip, 1.0)
	 SetBlipColour(info.blip, info.colour)
	 SetBlipAsShortRange(info.blip, true)
	 BeginTextCommandSetBlipName("STRING")
	 AddTextComponentString(info.title)
	 EndTextCommandSetBlipName(info.blip)
   end

end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

