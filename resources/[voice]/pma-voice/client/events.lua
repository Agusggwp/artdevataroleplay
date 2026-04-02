function handleInitialState()
	local voiceModeData = Cfg.voiceModes[mode]
	MumbleSetTalkerProximity(voiceModeData[1] + 0.0)
	MumbleClearVoiceTarget(voiceTarget)
	MumbleSetVoiceTarget(voiceTarget)
	MumbleSetVoiceChannel(playerServerId)

	while MumbleGetVoiceChannelFromServerId(playerServerId) ~= playerServerId do
		Wait(250)
	end

	MumbleAddVoiceTargetChannel(voiceTarget, playerServerId)

	addNearbyPlayers()
end

AddEventHandler('mumbleConnected', function(address, isReconnecting)
	logger.info('Connected to mumble server with address of %s, is this a reconnect %s', GetConvarInt('voice_hideEndpoints', 1) == 1 and 'HIDDEN' or address, isReconnecting)

	logger.log('Connecting to mumble, setting targets.')
	-- don't try to set channel instantly, we're still getting data.
	local voiceModeData = Cfg.voiceModes[mode]
	LocalPlayer.state:set('proximity', {
		index = mode,
		distance =  voiceModeData[1],
		mode = voiceModeData[2],
	}, true)

	handleInitialState()

	logger.log('Finished connection logic')
end)

AddEventHandler('mumbleDisconnected', function(address)
	logger.info('Disconnected from mumble server with address of %s', GetConvarInt('voice_hideEndpoints', 1) == 1 and 'HIDDEN' or address)
end)

-- TODO: Convert the last Cfg to a Convar, while still keeping it simple.
AddEventHandler('pma-voice:settingsCallback', function(cb)
	cb(Cfg)
end)

RegisterCommand('vsync', function()
    -- local newGrid = getGridZone()
    print(('[vsync] Forcing zone from %s to %s and resetting voice targets.'):format(currentGrid, newGrid))
    if GetConvar('voice_externalAddress', '') ~= '' and GetConvarInt('voice_externalPort', 0) ~= 0 then
        MumbleSetServerAddress(GetConvar('voice_externalAddress', ''), GetConvarInt('voice_externalPort', 0))
        while not MumbleIsConnected() do
            Wait(250)
        end
    end
    -- NetworkSetVoiceChannel(newGrid + 100)
    -- reset the players voice targets
    MumbleSetVoiceTarget(0)
    MumbleClearVoiceTarget(1)
    MumbleSetVoiceTarget(1)
    MumbleClearVoiceTargetPlayers(1)
    -- force a zone update.
    exports.ttyy_nuipack:SendAlert('success', 'Voice Reset')
end)