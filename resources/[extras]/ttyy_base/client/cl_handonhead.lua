local handsupstate = false

function handsup()
    if handsupstate == false then
        RequestAnimDict("random@mugging3")
        while not HasAnimDictLoaded("random@mugging3") do
            Citizen.Wait(5)
        end

        if not IsPedInAnyVehicle(PlayerPedId(), false) and not IsPedSwimming(PlayerPedId()) and not IsPedShooting(PlayerPedId()) and not IsPedClimbing(PlayerPedId()) and not IsPedCuffed(PlayerPedId()) and not IsPedDiving(PlayerPedId()) and not IsPedFalling(PlayerPedId()) and not IsPedJumping(PlayerPedId()) and not IsPedJumpingOutOfVehicle(PlayerPedId()) and IsPedOnFoot(PlayerPedId()) and not IsPedUsingAnyScenario(PlayerPedId()) and not IsPedInParachuteFreeFall(PlayerPedId()) then
            TaskPlayAnim(PlayerPedId(), "random@mugging3", "handsup_standing_base", 2.0, 2.0, -1, 50, 0, false, false, false)
        end
        handsupstate = true
    elseif handsupstate == true then
        ClearPedTasks(PlayerPedId())
        handsupstate = false
    end
end

RegisterCommand("handsup", function() handsup() end)
RegisterKeyMapping('handsup', 'Mengangkat Tangan', 'keyboard', 'X')

Citizen.CreateThread(function()
	while true do
        local letsleep = 3000
        
		if handsupstate == true then
            letsleep = 0
            if IsEntityPlayingAnim(PlayerPedId(), "random@mugging3", "handsup_standing_base", 3) then
                DisablePlayerFiring(PlayerId(), true)
                DisableControlAction(0, 25, true)
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
                SetPedPathCanUseLadders(PlayerPedId(), false)
                if IsPedInAnyVehicle(PlayerPedId(), false) then
                    DisableControlAction(0, 59, true)
                end
            end
		end

        Citizen.Wait(letsleep)
	end
end)