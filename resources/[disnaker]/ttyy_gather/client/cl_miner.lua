
local onGoing = false

--- step prosesss
RegisterNetEvent('ttyy_jobs:Progress')
AddEventHandler('ttyy_jobs:Progress', function(item)
    if (not onGoing) then 
        onGoing = true
        TriggerServerEvent('ttyy_jobs:checkCanCraft', item)
    else
        print('stop exploit gan')
    end
end)

RegisterNetEvent('ttyy_jobs:prosesKayu')
AddEventHandler('ttyy_jobs:prosesKayu', function()
    if (not onGoing) then 
        onGoing = true
        TriggerServerEvent('ttyy_jobs:checkCanCraft', 'cutted_wood')
    else
        print('stop exploit gan')
    end
end)

----- exploit check
RegisterNetEvent('ttyy_jobs:exploit')
AddEventHandler('ttyy_jobs:exploit', function()
    onGoing = false
end)
---

--------- Animation proses
RegisterNetEvent('ttyy_jobs:jobAnimation')
AddEventHandler('ttyy_jobs:jobAnimation',function(Dict, Anim)
    exports.ox_inventory:Progress({
        duration = 10000,
        label = 'Doing task',
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = Dict,
            clip = Anim,
            flags = 1,
        },
    }, function(cancel)
        if not cancel then
            onGoing = false
        end
    end)
end)
--------------------- packing proses

RegisterNetEvent('ttyy_jobs:packbatu')
AddEventHandler('ttyy_jobs:packbatu', function()
    local ped = cache.ped
    local coords = GetEntityCoords(ped)
    local pcoords = vector3(1111.9309, -2009.5969, 31.8661)

    if #(coords - pcoords) < 5.0 then
        if (not onGoing) then 
            onGoing = true
            TriggerServerEvent('ttyy_jobs:miner:lastProsess', 'washed_stone')
        else
            print('stop exploit gan')
        end
    end
end)

RegisterNetEvent('ttyy_jobs:packingKayu')
AddEventHandler('ttyy_jobs:packingKayu', function()
    if (not onGoing) then 
        onGoing = true
        TriggerServerEvent('ttyy_jobs:checkCanCraft', 'packaged_wood')
    else
        print('stop exploit gan')
    end
end)