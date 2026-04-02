RegisterNetEvent('OT_vending:buyclient')
AddEventHandler('OT_vending:buyclient', function(data)
    ESX.TriggerServerCallback('vending_machines:canAfford', function(allow)
        if allow then
            local ped = PlayerPedId()
            local position = GetOffsetFromEntityInWorldCoords(data.entity, 0.0, -0.97, 0.05)
            TaskTurnPedToFaceEntity(ped, data.entity, -1)
            ReqAnimDict("mini@sprunk")
            RequestAmbientAudioBank("VENDING_MACHINE")
            HintAmbientAudioBank("VENDING_MACHINE", 0, -1)
            SetPedCurrentWeaponVisible(ped, false, true, 1, 0)
            SetPedResetFlag(ped, 322, true)
            if not IsEntityAtCoord(ped, position, 0.1, 0.1, 0.1, false, true, 0) then
                TaskGoStraightToCoord(ped, position, 1.0, 20000, GetEntityHeading(data.entity), 0.1)
                while not IsEntityAtCoord(ped, position, 0.1, 0.1, 0.1, false, true, 0) do
                    Citizen.Wait(0)
                end
            end
            TaskTurnPedToFaceEntity(ped, data.entity, -1)
            Citizen.Wait(1000)
            TaskPlayAnim(ped, "mini@sprunk", "plyr_buy_drink_pt1", 8.0, 5.0, -1, true, 1, 0, 0, 0)
            Citizen.Wait(2500)
            ClearPedTasks(ped)
            ReleaseAmbientAudioBank()
            TriggerServerEvent('OT_vending:buy', data.item, data.price)
        end
    end, data.price)
end)

function ReqAnimDict(animDict)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(0)
	end
end