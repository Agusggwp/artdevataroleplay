local job = "unemployed"
local grade = 0

AddEventHandler('esx:nui_ready', function()
	print('TTYY core_jobutilities READY')
    BuatFrame('core_jobutilities', 'nui://' .. GetCurrentResourceName() .. '/modules/core_jobutilities/data/html/ui.html')
end)

Citizen.CreateThread(
    function()
        while ESX == nil do
            TriggerEvent(
                "esx:getSharedObject",
                function(obj)
                    ESX = obj
                end
            )
            Citizen.Wait(0)
        end

        while ESX.GetPlayerData().job == nil do
            Citizen.Wait(10)
        end

        job = ESX.GetPlayerData().job.name
        grade = ESX.GetPlayerData().job.grade
    end
)

RegisterNetEvent("esx:setJob")
AddEventHandler(
    "esx:setJob",
    function(j)
        job = j.name
        grade = j.grade
        
    end
)

function openCenter()
   
            TriggerScreenblurFadeIn(1000)

            PokusFrame('core_jobutilities', true, true)
            KirimFrameMessage('core_jobutilities', {
                    type = "openCenter",
                    job = {job = job, grade = grade},
                    center = json.encode(Config_Core.DefaultJobsInJobCenter)
                }
            
    )
end

function openBossMenu(j, l)
    ESX.TriggerServerCallback(
        "core_jobutilities:getBossMenuData",
        function(grades, employees, fund, gradename)
            if Config_Core.BossMenuUsers[gradename] ~= nil and job == j then
                PokusFrame('core_jobutilities', true, true)
                KirimFrameMessage('core_jobutilities', {
                        type = "openBoss",
                        job = {job = job, grade = grade},
                        employees = employees,
                        grades = grades,
                        fund = fund,
                        bossJob = j,
                        bossLabel = l,
                        perms = Config_Core.BossMenuUsers[gradename]
                    }
                )
            else
                SendTextMessage(Config_Core.Text["cant_access_bossmenu"])
            end
        end,
        j
    )
end

RegisterNUICallback(
    "close",
    function(data)
        TriggerScreenblurFadeOut(1000)
        SetNuiFocus(false, false)
    end
)

RegisterNUICallback(
    "deposit",
    function(data)
        local job = data["job"]
        local amount = data["amount"]

        TriggerServerEvent("core_jobutilities:deposit", job, amount)
    end
)

RegisterNUICallback(
    "withdraw",
    function(data)
        local job = data["job"]
        local amount = data["amount"]

        TriggerServerEvent("core_jobutilities:withdraw", job, amount)
    end
)

RegisterNUICallback(
    "hire",
    function(data)
        local id = data["id"]
        local job = data["job"]

        TriggerServerEvent("core_jobutilities:hire", id, job)
    end
)

RegisterNUICallback(
    "fire",
    function(data)
        local identifier = data["identifier"]
        local job = data["job"]

        TriggerServerEvent("core_jobutilities:fire", identifier, job)
    end
)

RegisterNUICallback(
    "givebonus",
    function(data)
        local identifier = data["identifier"]
        local amount = data["amount"]
         local job = data["job"]

        TriggerServerEvent("core_jobutilities:givebonus", identifier, amount, job)
    end
)

RegisterNUICallback(
    "setrank",
    function(data)
        local identifier = data["identifier"]
        local job = data["job"]
        local rank = data["rank"]

        TriggerServerEvent("core_jobutilities:setRank", identifier, job, rank)
    end
)

RegisterNUICallback(
    "removejob",
    function(data)
        TriggerServerEvent("core_jobutilities:removeJob", data["job"], data["grade"])
    end
)

RegisterNUICallback(
    "addjob",
    function(data)
        TriggerServerEvent("core_jobutilities:addJob", data["job"])
    end
)

RegisterNUICallback(
    "changejob",
    function(data)
        TriggerServerEvent("core_jobutilities:changeJob", data["job"], data["grade"])
    end
)


RegisterNetEvent("core_jobutilities:sendMessage")
AddEventHandler(
    "core_jobutilities:sendMessage",
    function(msg)
        SendTextMessage(msg)
    end
)

RegisterNetEvent('policeboss')
AddEventHandler('policeboss', function ()
    openBossMenu('police', "LSPD")
end)

RegisterNetEvent('emsboss')
AddEventHandler('emsboss', function ()
    openBossMenu('ambulance', "EMS")
end)

RegisterNetEvent('pedboss')
AddEventHandler('pedboss', function ()
    openBossMenu('pedagang', "PEDAGANG")
end)

RegisterNetEvent('mechabos', function()
    openBossMenu('mechanic', "MECHANIC")
end)

RegisterNetEvent('mafiaboss', function()
    openBossMenu('mafia', "MAFIA")
end)

RegisterNetEvent('gangboss', function()
    openBossMenu('gang', "GANGSTER")
end)

RegisterNetEvent('cartelboss', function()
    openBossMenu('cartel', "CARTEL")
end)
