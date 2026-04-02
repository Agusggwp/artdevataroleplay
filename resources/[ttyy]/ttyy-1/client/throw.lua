local attachedProp = nil

Citizen.CreateThread(function ()
	exports['qtarget']:AddTargetModel(Config.Throwables, {
		options = {
			{
                eventside = "client",
				event = "qrp_throw:pickup",
				icon = "fas fa-hand-paper",
				label = "Pick up to Throw",
			},
		},
		distance = 3.0
	})
end)

RegisterNetEvent('qrp_throw:pickup')
AddEventHandler('qrp_throw:pickup',function(data)
	local playerPed = PlayerPedId()
	local prop = data.entity
	if attachedProp ~= nil then return end
	if DoesEntityExist(prop) and attachedProp == nil then
		SetEntityAsMissionEntity(prop)
		AttachEntityToEntity(prop,playerPed, GetPedBoneIndex(playerPed,6286),0,0,0, 0,0,0)
		attachedProp = prop
		ClearPedTasks(playerPed)
		RequestAnimDict('anim@heists@narcotics@trash')
		while not HasAnimDictLoaded('anim@heists@narcotics@trash') do 
			Citizen.Wait(5)
		end 
		TaskPlayAnim(playerPed, 'anim@heists@narcotics@trash', 'walk', 1.0, -1.0,-1,49,0,0, 0,0 )
	end
end)

RegisterNetEvent('qrp_throw:createprop')
AddEventHandler('qrp_throw:createprop',function(prop)
	local playerPed = PlayerPedId()
	local object = GetHashKey(prop)
	if attachedProp ~= nil then return end
	RequestModel(object)
	while not HasModelLoaded(object) do 
		Citizen.Wait(1)
	end 
	local pos = GetWorldPositionOfEntityBone(playerPed,6286)
	local obj = CreateObject(object, pos.x, pos.y, pos.z, true, true, true)
	Citizen.Wait(50)
	SetEntityAsMissionEntity(obj)
	AttachEntityToEntity(obj,playerPed, GetPedBoneIndex(playerPed,6286),0,0,0, 0,0,0)
	attachedProp = obj
	SetModelAsNoLongerNeeded(object)
	ClearPedTasks(playerPed)
	RequestAnimDict('anim@heists@narcotics@trash')
	while not HasAnimDictLoaded('anim@heists@narcotics@trash') do 
		Citizen.Wait(5)
	end 
	TaskPlayAnim(playerPed, 'anim@heists@narcotics@trash', 'walk', 1.0, -1.0,-1,49,0,0, 0,0 )
end)

ThrowAttachedObject = function(object)
	local playerPed = PlayerPedId()
	local animDict = "melee@unarmed@streamed_variations"
	local anim = "plyr_takedown_front_slap"
	while (not HasAnimDictLoaded(animDict)) do
		RequestAnimDict(animDict)
		Citizen.Wait(5)
	end
	ClearPedTasks(playerPed)
	TaskPlayAnim(playerPed, animDict, anim, 8.0, -8.0, -1, 0, 0.0, false, false, false)
	Citizen.Wait(500)
	DetachEntity(object)
	attachedProp = nil
	local forwardVector = GetEntityForwardVector(playerPed)
	local force = randomFloat(Config.MinThrowForce,Config.MaxThrowForce)
	ApplyForceToEntity(object,1,forwardVector.x*force,forwardVector.y*force,forwardVector.z,0,0,0,0,false,true,true,false,true)
	Citizen.Wait(5000)
	object = SetEntityAsNoLongerNeeded()

end

function randomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end

Citizen.CreateThread(function()
    while true do
        local letsleep = 1000

        if attachedProp ~= nil then
			letsleep = 0
            ESX.ShowHelpNotification('[E] Melempar')

            if IsControlJustReleased(0, 38) then
                ThrowAttachedObject(attachedProp)
            end
        end

		Citizen.Wait(letsleep)
    end
end)