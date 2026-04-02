ESX = nil

local cachedBins = {}

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)
        Citizen.Wait(1000)
    end
end)

RegisterNetEvent('ttyybottle:ambil')
AddEventHandler('ttyybottle:ambil',function()
    OpenTrashCan()
end)