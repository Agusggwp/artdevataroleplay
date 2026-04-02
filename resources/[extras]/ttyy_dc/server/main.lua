--===== FiveM Script =========================================
--= DC - Rich Presence
--===== Developed By: ========================================
--= Azael Dev
--===== Website: =============================================
--= https://www.azael.dev
--===== License: =============================================
--= Copyright (C) Azael Dev - All Rights Reserved
--= You are not allowed to sell this script
--============================================================ 

local playerCount = 0

local startPlayerCount = function()
    function getPlayerCount()
        local getPlayers = #GetPlayers()

        if getPlayers > 0 and getPlayers ~= playerCount then
            TriggerClientEvent('ttyy_dc-richpresence:setPlayerData', -1, {
                AllPlayers = getPlayers,
                MaxPlayers = GetConvar('sv_maxclients'),
            })

            playerCount = players
        end

        Citizen.SetTimeout(Config['update_time'] * 60 * 1000, function()
            getPlayerCount()
        end)
    end

    Citizen.SetTimeout(Config['update_time'] * 60 * 1000, function()
        getPlayerCount()
    end)
end

startPlayerCount()
