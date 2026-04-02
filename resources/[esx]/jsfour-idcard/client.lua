local open = false

    ESX = nil

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(10)
        end
    end)

    -- Open ID card
    RegisterNetEvent('jsfour-idcard:open')
    AddEventHandler('jsfour-idcard:open', function( data, type )
        open = true
        SendNUIMessage({
            action = "open",
            array  = data,
            type   = type
        })
    end)

    -- Key events
    Citizen.CreateThread(function()
        while true do
            Wait(5)
            if open then
                if IsControlJustReleased(0, 322) or IsControlJustReleased(0, 177) then
                    SendNUIMessage({
                        action = "close"
                    })
                    open = false
                end
            else
                Wait(1000)
            end
        end
    end)