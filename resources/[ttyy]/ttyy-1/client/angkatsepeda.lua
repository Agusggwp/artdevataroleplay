local bike = true

RegisterNetEvent('essentials:pickupbike')
AddEventHandler('essentials:pickupbike', function(data)
    local playerPed = PlayerPedId()
    local bone = GetPedBoneIndex(playerPed, 0xE5F3)
    local vehicle = data.entity
    
    AttachEntityToEntity(vehicle, playerPed, bone, 0.0, 0.24, 0.10, 340.0, 330.0, 330.0, true, true, false, true, 1, true)

    RequestAnimDict("anim@heists@box_carry@")
    while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
    TaskPlayAnim(playerPed, "anim@heists@box_carry@", "idle", 2.0, 2.0, -1, 50, 0, false, false, false)
    bike = vehicle
end)

Citizen.CreateThread(function()
    while true do
        local letsleep = 1000

        if bike ~= true then
            letsleep = 0
            ESX.ShowHelpNotification('[E] Melepaskan sepeda')

            if IsControlJustReleased(0, 38) then
                if IsEntityAttached(bike) then
                    DetachEntity(bike, nil, nil)
                    SetVehicleOnGroundProperly(bike)
                    ClearPedTasksImmediately(PlayerPedId())
                    bike = true
                end
            end

            if IsEntityPlayingAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 3) ~= 1 then
                RequestAnimDict("anim@heists@box_carry@")
                while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
                TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 2.0, 2.0, -1, 50, 0, false, false, false)
                if not IsEntityAttachedToEntity(PlayerPedId(), bike) then
                    bike = true
                    ClearPedTasksImmediately(PlayerPedId())
                end
            end
        end

        Citizen.Wait(letsleep)
    end
end)