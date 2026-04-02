ESX = nil
local maxPlayers = GetConvar("sv_maxclients", "8")
local player_fps = 0
local fps_calc = 0


local newping = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

end)

RegisterNetEvent("HandlePing")
AddEventHandler("HandlePing", function(ping)
    -- TriggerServerEvent("GetPlayerPing")
    newping = ping
end)

Citizen.CreateThread(function()
    Citizen.Wait(8000)
    TriggerServerEvent("GetPlayerPing")
end)



RegisterNUICallback('ttyy_hud:HandInfo', function(data, cb)
    local jobData = ESX.GetPlayerData().job
    if jobData ~= nil and jobData.label ~= nil and jobData.grade_label ~= nil then
        cb({
            player = GetPlayerName(PlayerId()),
            player_job = jobData.label.. "-"..jobData.grade_label,
            playerpingofc = newping,
            ID = GetPlayerServerId(PlayerId()),
            discord = Config.discord_inv,
            active_players = #GetActivePlayers().."/"..maxPlayers,

            -- ICONS --
            ID_ICON = Config.Icons.ID_ICON,
            PLAYERS_ICON = Config.Icons.PLAYERS_ICON,
            LOBBY_ICON = Config.Icons.LOBBY_ICON,
            JOB_ICON = Config.Icons.JOB_ICON,
            DISCORD_ICON = Config.Icons.DISCORD_ICON

        })
    else
        cb({
            player = GetPlayerName(PlayerId()),
            player_job = "Loading...",
            playerpingofc = newping,
            ID = GetPlayerServerId(PlayerId()),
            discord = Config.discord_inv,
            active_players = #GetActivePlayers().."/"..maxPlayers,

            -- ICONS --
            ID_ICON = Config.Icons.ID_ICON,
            PLAYERS_ICON = Config.Icons.PLAYERS_ICON,
            LOBBY_ICON = Config.Icons.LOBBY_ICON,
            JOB_ICON = Config.Icons.JOB_ICON,
            DISCORD_ICON = Config.Icons.DISCORD_ICON
        })
    end
end)


RegisterNUICallback('ready', function(data, cb)
    cb("ok")
end)



RegisterCommand("testp", function(source)
    TriggerServerEvent("GetPlayerPing")
    return newping
end)

TriggerEvent('chat:addSuggestion', '/hudestat', 'hide or show', {
    { name="hide or show", help="hides / shows the top hud" },
})


RegisterCommand("hud", function(source, args)
    if args[1] == "hide" then
        TriggerEvent("hidevehhud", source)
    SendNUIMessage({
        action = "hide_hud"
    })
    elseif  args[1] == "show" then
        TriggerEvent("showevehhud", source)
        SendNUIMessage({
            action = "show_hud"
        })
    end
end)

--[[
RegisterCommand("test", function(source)
    TriggerServerEvent("GetPlayerPing", source)
    print(newping)
end)]]