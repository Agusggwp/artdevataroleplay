local PlayerData = {}
local pedspawneado = false
local notify = true

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		for k, v in pairs(Cfg_Bikes.ubicacion) do
			local cordenadasped = GetEntityCoords(PlayerPedId())	
			local dist = #(v.Cordenadas - cordenadasped)
			
			if dist < 11 and pedspawneado == false then
				TriggerEvent('spawn:ped',v.Cordenadas,v.h)
				pedspawneado = true
			end
			if dist >= 10  then
				pedspawneado = false
				DeletePed(tunpc)
			end
		end
	end
end)

RegisterNetEvent('spawn:ped')
AddEventHandler('spawn:ped',function(coords,heading)
	local hash = GetHashKey('a_m_o_beach_01')
	if not HasModelLoaded(hash) then
		RequestModel(hash)
		Wait(10)
	end
	while not HasModelLoaded(hash) do 
		Wait(10)
	end

    pedspawneado = true
	tunpc = CreatePed(5, hash, coords, heading, false, false)
	FreezeEntityPosition(tunpc, true)
    SetBlockingOfNonTemporaryEvents(tunpc, true)
	loadAnimDict("amb@world_human_cop_idles@male@idle_b") 
	while not TaskPlayAnim(tunpc, "amb@world_human_cop_idles@male@idle_b", "idle_e", 8.0, 1.0, -1, 17, 0, 0, 0, 0) do
	Wait(1000)
	end
end)

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end



RegisterNetEvent('ttyy_callbacksewa:bmx')
AddEventHandler('ttyy_callbacksewa:bmx', function(carros)
    local renta = true
    local vehicle = carros.vehicle

    ESX.TriggerServerCallback('ttyy_callbacksewa:checkPrie', function(hasMoney)
        if hasMoney then
            if vehicle == 'bmx' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
                
            elseif  vehicle == 'cruiser' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)

            elseif vehicle ==  'fixter' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
            elseif vehicle == 'scorcher' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
            elseif vehicle == 'tribike' then 
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
            elseif vehicle == 'tribike2' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end)
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
            elseif vehicle == 'tribike3' then
                ESX.Game.SpawnVehicle(vehicle, vector3(-1029.93,-2732.96,20.05), 325.37, function(speed)
                end) 
                TriggerServerEvent('ttyy_removemoneyev:true',Cfg_Bikes.bikeprice)
            end
        else 
            notify('no tienes dinero suficiente')
            
        end
    end, Cfg_Bikes.bikepricecheck)    

end)

RegisterNetEvent('markuy-gantenk:entregarcarro')
AddEventHandler('markuy-gantenk:entregarcarro', function()
    local xPlayer = ESX.GetPlayerData()


    notify('Gracias por regresar la bike!')
    local bicis = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(bicis, true,false)
    Citizen.Wait(2000)
    ESX.Game.DeleteVehicle(bicis)
      
end)



RegisterNetEvent('markuy-gantenk:rented', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 1,
            header = "Rent cycles",
            txt = ""
        },
        {
            id = 2,
            header = "bmx",
            txt = "Rent bmx",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'bmx',
                    
                }
            }
        },
        {
            id = 3,
            header = "cruiser",
            txt = "Rent cruiser",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'cruiser',
                    
                }
            }
        },
        {
            id = 4,
            header = "fixter",
            txt = "Rent fixter",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'fixter',
                    
                }
            }
        },
        {
            id = 5,
            header = "scorcher",
            txt = "Rent scorcher",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'scorcher',
                    
                }
            }
        },
        {
            id = 6,
            header = "tribike",
            txt = "Rent tribike",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'tribike',
                    
                }
            }
        },
        {
            id = 7,
            header = "tribike2",
            txt = "Rent tribike2",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'tribike2',
                    
                }
            }
        },
        {
            id = 8,
            header = "tribike3",
            txt = "Rent tribike3",
            params = {
                event = "ttyy_callbacksewa:bmx",
                args = {
                    vehicle = 'tribike3',
                    
                }
            }
        },
        {
            id = 9,
            header = "delete bike",
            txt = "",
            params = {
                event = "markuy-gantenk:entregarcarro",
                args = {
                    
                }
            }
        },
        
    })
end)

Citizen.CreateThread(function()
    local biker = {
		`a_m_o_beach_01`
    }

    exports['qtarget']:AddTargetModel(biker, {
        options = {
            {
                event = 'markuy-gantenk:rented',
                icon = 'fas fa-glass-martini-alt',
                label = "Open cycles menu"
            },
        },
        job = {'all'},
        distance = 1.5
    })
end)

function notify(mensaje)

    if Cfg_Bikes.notitype == 'esx' then
        ESX.ShowNotification(mensaje)
    elseif Cfg_Bikes.notitype == 'mythic' then
        exports['ttyy_nuipack']:DoHudText('success', mensaje, 10000)
    end

end        

