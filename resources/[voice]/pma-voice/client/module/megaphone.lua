local megaphone = false

function setMegaphoneTalking(plySource, enabled)
	if enabled and GetPlayerServerId(PlayerId()) ~= plySource then
		MumbleSetVolumeOverrideByServerId(plySource, enabled and 80/100)
		-- MumbleSetSubmixForServerId(plySource, megaphoneEffectId)
		MumbleSetSubmixForServerId(plySource, radioEffectId)
	elseif GetPlayerServerId(PlayerId()) ~= plySource then
		MumbleSetVolumeOverrideByServerId(plySource, -1.0)
		MumbleSetSubmixForServerId(plySource, -1)
	end
end

RegisterNetEvent('pma-voice:setMegaphoneTalking', setMegaphoneTalking)

RegisterNetEvent('esx:onPlayerDeath', function()
	TriggerEvent('pma-voice:disableMegaphone')
end)

RegisterNetEvent('pma-voice:disableMegaphone', function()
	TriggerServerEvent('pma-voice:setMegaphoneTalking', false)
	exports['pma-voice']:clearProximityOverride()
end)

local spawnedProp
local megaphone = false

RegisterNetEvent('megaphone', function()
	megaphone = not megaphone
	if megaphone then
		local playerPed = PlayerPedId()
		local prop = GetHashKey('prop_megaphone_01')
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			--[[RequestModel(prop)
			while not HasModelLoaded(prop) do
				Wait(100)
			RequestModel(prop)
			end]]--
			--spawnedProp = CreateObject(prop, GetEntityCoords(playerPed), true, true, true)
			--AttachEntityToEntity(spawnedProp, playerPed, GetPedBoneIndex(playerPed, 28422), 0.075, 0.025, -0.025, -120.55, -80.5, -10.95, true, true, true, false, 1, true)
			RequestAnimDict("anim@holding_megaphone")
			while not HasAnimDictLoaded("anim@holding_megaphone") do
			Wait(100)
			end
			TaskPlayAnim(playerPed, "anim@holding_megaphone", "holding_megaphone", 8.0, 1.0, -1, 49)
			RemoveAnimDict("anim@holding_megaphone")
			TriggerServerEvent('pma-voice:setMegaphoneTalking', true)
			-- setProximityState(20.0, true)
			exports['pma-voice']:overrideProximityRange(20.0, false)
		else
			RequestModel(prop)
			while not HasModelLoaded(prop) do
				Wait(100)
			RequestModel(prop)
			end
			spawnedProp = CreateObject(prop, GetEntityCoords(playerPed), true, true, true)
			AttachEntityToEntity(spawnedProp, playerPed, GetPedBoneIndex(playerPed, 28422), 0.075, 0.025, -0.025, -120.55, -80.5, -10.95, true, true, true, false, 1, true)
			RequestAnimDict("anim@holding_megaphone")
			while not HasAnimDictLoaded("anim@holding_megaphone") do
			Wait(100)
			end
			TaskPlayAnim(playerPed, "anim@holding_megaphone", "holding_megaphone", 8.0, 1.0, -1, 49)
			RemoveAnimDict("anim@holding_megaphone")
			TriggerServerEvent('pma-voice:setMegaphoneTalking', true)
			-- setProximityState(20.0, true)
			exports['pma-voice']:overrideProximityRange(20.0, false)
		end
	else
		ClearPedTasks(PlayerPedId())
		DeleteObject(spawnedProp)
		spawnedProp = nil
		TriggerServerEvent('pma-voice:setMegaphoneTalking', false)
		local voiceModeData = Cfg.voiceModes[mode]
		-- setProximityState(voiceModeData[1], false)
		exports['pma-voice']:clearProximityOverride()
	end
end)
