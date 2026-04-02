local carryingBackInProgress = false
local carryAnimNamePlaying = ""
local carryAnimDictPlaying = ""
local carryControlFlagPlaying = 0

RegisterCommand("carry",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'missfinale_c2mcs_1'
		anim1 = 'fin_c2_mcs_1_camman'
		lib2 = 'nm'
		anim2 = 'firemans_carry'
		distans = 0.15
		distans2 = 0.27
		height = 0.63
		spin = 0.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			carryingBackInProgress = true
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			drawNativeNotification("No one nearby to carry!")
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
	end
end,false)

RegisterCommand("carry2",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'timetable@amanda@ig_3'
		anim1 = 'ig_3_base_tracy'
		lib2 = 'timetable@ron@ig_3_couch'
		anim2 = 'base'
		distans = 0.1
		distans2 = 0.05
		height = 0.8
		spin = 0.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			carryingBackInProgress = true
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			drawNativeNotification("No one nearby to carry2!")
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
	end
end,false)

RegisterCommand("carry3",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()	
	lib = 'anim@heists@box_carry@'
		anim1 = 'idle'
		lib2 = 'timetable@reunited@ig_10'
		anim2 = 'base_amanda'
		distans = 0.5
		distans2 = -0.65
		height = 0.5
		spin = 90.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			carryingBackInProgress = true
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			drawNativeNotification("No one nearby to carry3!")
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
	end
end,false)

RegisterCommand("gendong1",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'move_m@hiking'
		anim1 = 'idle'
		lib2 = 'timetable@ron@ig_3_couch'
		anim2 = 'base'
		distans = 0.4
		distans2 = 0.00
		height = 1.6
		spin = 0.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			carryingBackInProgress = true
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			drawNativeNotification("No one nearby to gendong1!")
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
	end
end,false)

RegisterCommand("gendong2",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()	
		lib = 'amb@world_human_drinking@coffee@male@base'
		anim1 = 'base'
		lib2 = 'timetable@tracy@ig_14@'
		anim2 = 'ig_14_base_tracy'
		distans = 0.0
		distans2 = 0.2
		height = 1.6
		spin = 0.0		
		length = 100000
		controlFlagMe = 49
		controlFlagTarget = 33
		animFlagTarget = 1
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if closestPlayer ~= -1 and closestPlayer ~= nil then
			carryingBackInProgress = true
			TriggerServerEvent('CarryPeople:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		else
			drawNativeNotification("No one nearby to gendong2!")
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		local closestPlayer = GetClosestPlayer(3)
		target = GetPlayerServerId(closestPlayer)
		if target ~= 0 then 
			TriggerServerEvent("CarryPeople:stop",target)
		end
	end
end,false)

RegisterNetEvent('CarryPeople:syncTarget')
AddEventHandler('CarryPeople:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	carryingBackInProgress = true
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(PlayerPedId(), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	carryAnimNamePlaying = animation2
	carryAnimDictPlaying = animationLib
	carryControlFlagPlaying = controlFlag
end)

RegisterNetEvent('CarryPeople:syncMe')
AddEventHandler('CarryPeople:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = PlayerPedId()
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	carryAnimNamePlaying = animation
	carryAnimDictPlaying = animationLib
	carryControlFlagPlaying = controlFlag
end)

RegisterNetEvent('CarryPeople:cl_stop')
AddEventHandler('CarryPeople:cl_stop', function()
	carryingBackInProgress = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)

Citizen.CreateThread(function()
	while true do
		if carryingBackInProgress then 
			while not IsEntityPlayingAnim(PlayerPedId(), carryAnimDictPlaying, carryAnimNamePlaying, 3) do
				TaskPlayAnim(PlayerPedId(), carryAnimDictPlaying, carryAnimNamePlaying, 8.0, -8.0, 100000, carryControlFlagPlaying, 0, false, false, false)
				Citizen.Wait(0)
			end
		else
			Citizen.Wait(500)
		end
		Wait(0)
	end
end)

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	--print("closest player is dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

function drawNativeNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Damage
function DamageSenjataKintil()
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.25)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.25) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.25)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGHT"), 0.10)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNUCKLE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HATCHET"), 0.25)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SWITCHBLADE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTRIFLE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTSMG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ADVANCEDRIFLE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER"), 0.35)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER_MK2"), 0.25)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GUSENBERG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL50"), 0.8)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_APPISTOL"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHINEPISTOL"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL_MK2"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMOKEGRENADE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BZGAS"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MINISMG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMPACTRIFLE"), 1.0)
	N_0x4757f00bc6323cfe(GetHashKey("weapon_machete"), 0.25)
	N_0x4757f00bc6323cfe(GetHashKey("weapon_knife"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_combatpdw"), 1.0)
	N_0x4757f00bc6323cfe(GetHashKey("weapon_marksmanpistol"), 1.0)
	N_0x4757f00bc6323cfe(GetHashKey("weapon_specialcarbine"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_bullpuprifle"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_bullpushotgun"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_doubleaction"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNIPERRIFLE"), 1.0)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HEAVYSNIPER"), 1.0)
end
-- End of Damage Function