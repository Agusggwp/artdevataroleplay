local ESX = nil

-- Wait for ESX to be ready
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        if ESX == nil then
            Wait(100)
        end
    end
    print('^2[player_logger] ESX initialized!^7')
end)

-- Colors for console output
local colors = {
    reset = '^0',
    green = '^2',
    red = '^1',
    yellow = '^3',
    blue = '^4',
    magenta = '^5',
    cyan = '^6',
    white = '^7',
}

-- Function to get player identifiers
local function getPlayerIdentifiers(source)
    local identifiers = {}
    
    if not source then return identifiers end
    
    local playerIds = GetPlayerIdentifiers(source)
    if not playerIds then return identifiers end
    
    for _, id in ipairs(playerIds) do
        if id and type(id) == 'string' then
            local colonPos = id:find(':')
            if colonPos then
                local key = id:sub(1, colonPos - 1)
                identifiers[key] = id
            end
        end
    end
    
    return identifiers
end

-- Function to format log message
local function formatLog(event, source, playerName, identifiers)
    if not identifiers then identifiers = {} end
    
    local steamHex = identifiers.steam or 'N/A'
    local discord = identifiers.discord or 'N/A'
    local license = identifiers.license or 'N/A'
    
    -- Extract just the hash from steam/discord/license if full identifier provided
    if steamHex ~= 'N/A' and steamHex:find(':') then
        steamHex = steamHex:sub(steamHex:find(':') + 1)
    end
    if discord ~= 'N/A' and discord:find(':') then
        discord = discord:sub(discord:find(':') + 1)
    end
    if license ~= 'N/A' and license:find(':') then
        license = license:sub(license:find(':') + 1)
    end
    
    local timestamp = os.date('%Y-%m-%d %H:%M:%S')
    playerName = playerName or 'Unknown'
    
    local logMessage = string.format(
        '%s[%s] %s | ID: %d | Name: %s | Steam: %s | Discord: %s | License: %s%s',
        colors.cyan,
        timestamp,
        event,
        source or 0,
        playerName,
        steamHex,
        discord,
        license,
        colors.reset
    )
    
    return logMessage
end

-- Player Connected Event
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local source = source
    deferrals.defer()
    
    if source then
        local identifiers = getPlayerIdentifiers(source)
        local steamHex = identifiers.steam or 'N/A'
        if steamHex:find(':') then
            steamHex = steamHex:sub(steamHex:find(':') + 1)
        end
        
        print(string.format(
            '%s[CONNECTING] ID: %d | Name: %s | Steam: %s%s',
            colors.yellow,
            source,
            name or 'Unknown',
            steamHex,
            colors.reset
        ))
    end
    
    deferrals.done()
end)

-- Player Joined Event (alternative - fires after playerConnecting completes)
AddEventHandler('playerJoined', function()
    local source = source
    
    if source then
        local playerName = GetPlayerName(source)
        local identifiers = getPlayerIdentifiers(source)
        
        local logMsg = formatLog(
            colors.green .. '📥 JOIN' .. colors.cyan,
            source,
            playerName,
            identifiers
        )
        
        print(logMsg)
        print(colors.green .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━' .. colors.reset)
    end
end)

-- ESX Player Loaded (fires when ESX player is created)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    local source = source
    
    if not source then return end
    
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer then
        local playerName = xPlayer.getName and xPlayer.getName() or GetPlayerName(source)
        local identifiers = getPlayerIdentifiers(source)
        
        local logMsg = formatLog(
            colors.blue .. '✅ ESX LOADED' .. colors.cyan,
            source,
            playerName,
            identifiers
        )
        
        print(logMsg)
        print(colors.blue .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━' .. colors.reset)
    end
end)

-- Player Dropped/Disconnected Event
AddEventHandler('playerDropped', function(reason)
    local source = source
    
    if source then
        local playerName = GetPlayerName(source)
        local identifiers = getPlayerIdentifiers(source)
        
        local logMsg = formatLog(
            colors.red .. '📤 LEAVE' .. colors.cyan,
            source,
            playerName,
            identifiers
        )
        
        print(logMsg)
        print(colors.red .. 'Reason: ' .. (reason or 'Connection Dropped') .. colors.reset)
        print(colors.red .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━' .. colors.reset)
    end
end)

-- Player Death Event
RegisterNetEvent('esx:playerDied')
AddEventHandler('esx:playerDied', function()
    local source = source
    
    if source and ESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        
        if xPlayer then
            local playerName = xPlayer.getName and xPlayer.getName() or GetPlayerName(source)
            local identifiers = getPlayerIdentifiers(source)
            
            local logMsg = formatLog(
                colors.red .. '💀 DIED' .. colors.cyan,
                source,
                playerName,
                identifiers
            )
            
            print(logMsg)
            print(colors.red .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━' .. colors.reset)
        end
    end
end)

-- Admin Command to show active players
RegisterCommand('players', function(source, args, rawCommand)
    local players = GetPlayers()
    
    print(colors.blue .. '\n📋 ACTIVE PLAYERS:' .. colors.reset)
    print(colors.blue .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━' .. colors.reset)
    
    for _, playerId in ipairs(players) do
        if playerId then
            local playerName = GetPlayerName(playerId)
            local identifiers = getPlayerIdentifiers(playerId)
            local steamHex = identifiers.steam or 'N/A'
            
            if steamHex:find(':') then
                steamHex = steamHex:sub(steamHex:find(':') + 1)
            end
            
            print(string.format(
                '%s[%d] %s | Steam: %s%s',
                colors.cyan,
                playerId,
                playerName or 'Unknown',
                steamHex,
                colors.reset
            ))
        end
    end
    
    print(colors.blue .. '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n' .. colors.reset)
end, false)

print(colors.green .. '^*^7[player_logger] Script loaded successfully!' .. colors.reset)
print(colors.yellow .. '[player_logger] Waiting for ESX to initialize...' .. colors.reset)
