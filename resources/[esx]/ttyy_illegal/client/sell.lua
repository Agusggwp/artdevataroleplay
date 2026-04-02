Citizen.CreateThread(function()
    for k, v in pairs (Config.SellLocation) do

        local modelHash = GetHashKey('g_m_m_korboss_01')
		RequestModel(modelHash)
		while not HasModelLoaded(modelHash) do
			Wait(1)
		end

		local ped = CreatePed(4,  modelHash, v.coords.x, v.coords.y, v.coords.z, v.heading, false, true)

		Citizen.Wait(3000)
		PlaceObjectOnGroundProperly(ped)
		FreezeEntityPosition(ped, true)
		DisablePedPainAudio(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		StopPedSpeaking(ped,true)

        local opts = {}
        if v.index == 'weed' then
            opts = {
                action = function(_)

                    if lib.progressCircle({
                        duration = 3000,
                        position = 'middle',
                        useWhileDead = false,
                        canCancel = true,
                        disable = {
                            move = true,
                        },
                        anim = {
                            dict = 'timetable@gardener@filling_can',
                            clip = 'gar_ig_5_filling_can',
                            flags = 1,
                        },
                        prop = {},                      
                    }) then 
                        TriggerServerEvent('bluecity_drugs:SellDrugs', 'weed')
                    end
                end,
                icon = "fas fa-scissors",
                label = "Penjualan Weed",
            }
        elseif v.index == 'meth' then 
            opts = {
                action = function(_)

                    if lib.progressCircle({
                        duration = 3000,
                        position = 'middle',
                        useWhileDead = false,
                        canCancel = true,
                        disable = {
                            move = true,
                        },
                        anim = {
                            dict = 'timetable@gardener@filling_can',
                            clip = 'gar_ig_5_filling_can',
                            flags = 1,
                        },
                        prop = {},                      
                    }) then 
                        TriggerServerEvent('bluecity_drugs:SellDrugs', 'meth')
                    end
                end,
                icon = "fas fa-scissors",
                label = "Penjualan Meth",
            }
        end
        exports.qtarget:AddBoxZone(v.index, v.coords, 5.0, 5.0, {
            name= v.index,
            debugPoly=false,
            minZ=v.coords.z-1,
            maxZ=v.coords.z+1,
            }, {
            options = {
                {
                    type = "client",
                    action = opts.action,
                    icon = opts.icon,
                    label = opts.label,
                },
            },
            distance = 3.5
        })
    end
end)