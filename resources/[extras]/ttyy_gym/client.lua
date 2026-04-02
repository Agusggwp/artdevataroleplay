ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	blip = AddBlipForCoord(-1201.2257, -1568.8670, 4.6101)
	SetBlipSprite(blip, 311)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipColour(blip, 7)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Gym")

end)

RegisterNetEvent('ttyy_gym:Menu', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 1,
            header = "Gym Menu",
            txt = ""
        },
        
        {
            id = 2,
            header = "🏋️‍♀️ Lift weights",
            txt = "",
            params = {
                event = "ttyy_gym:dumbbells",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "💪 Do push-ups",
            txt = "",
            params = {
                event = "ttyy_gym:flex",
                args = {
                    number = 1,
                    id = 3
                }
            }
        },
        {
            id = 4,
            header = "🏌️‍♂️ Abdominals",
            txt = "",
            params = {
                event = "ttyy_gym:abdominal",
                args = {
                    number = 1,
                    id = 4
                }
            }
        },
        {
            id = 6,
            header = "🧘‍♀️ Yoga",
            txt = "",
            params = {
                event = "ttyy_gym:yoga",
                args = {
                    number = 1,
                    id = 5
                }
            }
        },
    })
end)



Citizen.CreateThread(function()
    local dumbbells = {
		`prop_weight_squat`,
        `prop_muscle_bench_05`
    }

    exports['qtarget']:AddTargetModel(dumbbells, {
        options = {
            {
                event = 'ttyy_gym:Menu',
                icon = 'fas fa-dumbbell',
                label = "Open Menu Gym"
            },
        },
        job = {'all'},
        distance = 2.5
    })

end)

RegisterNetEvent("ttyy_gym:dumbbells")
AddEventHandler("ttyy_gym:dumbbells", function()
    local playerPed = PlayerPedId()
	TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", 0, true)
    TriggerClientEvent('esx_status:add', source, 'stress', 50000)
	
	Citizen.Wait(15000)
	ClearPedTasksImmediately(playerPed)
    exports['ttyy_nuipack']:DoHudText('success', 'Kamu terasa lebih sehat')
end)

RegisterNetEvent("ttyy_gym:flex")
AddEventHandler("ttyy_gym:flex", function()
    local playerPed = PlayerPedId()
	TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
    TriggerClientEvent('esx_status:add', source, 'stress', 50000)
	
	Citizen.Wait(15000)
	ClearPedTasksImmediately(playerPed)
    exports['ttyy_nuipack']:DoHudText('success', 'Kamu terasa lebih sehat')
end)

RegisterNetEvent("ttyy_gym:abdominal")
AddEventHandler("ttyy_gym:abdominal", function()
    local playerPed = PlayerPedId()
	TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SIT_UPS", 0, true)
    TriggerClientEvent('esx_status:add', source, 'stress', 50000)
	
	Citizen.Wait(15000)
	ClearPedTasksImmediately(playerPed)
    exports['ttyy_nuipack']:DoHudText('success', 'Kamu terasa lebih sehat')
end)

RegisterNetEvent("ttyy_gym:yoga")
AddEventHandler("ttyy_gym:yoga", function()
    local playerPed = PlayerPedId()
	TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_YOGA", 0, true)
    TriggerClientEvent('esx_status:add', source, 'stress', 50000)
	
	Citizen.Wait(15000)
	ClearPedTasksImmediately(playerPed)
    exports['ttyy_nuipack']:DoHudText('success', 'Kamu terasa lebih sehat')
end)




function notify(mensaje)

    if Config.notitype == 'esx' then
        ESX.ShowNotification(mensaje)
    elseif Config.notitype == 'mythic' then
        exports['ttyy_nuipack']:SendAlert('success', mensaje, 10000)
    end

end  


