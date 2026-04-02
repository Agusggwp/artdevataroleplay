-- Steam Hex Identifier Manager
-- Automatically captures and stores Steam Hex in users table for all players
-- Note: Primary identifier stays as LICENSE (CFX), but we capture Steam Hex as additional field

local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

print("^2[Steam Identifier] Starting Steam Hex capture service...^7")

-- Function to extract steam hex from identifier
local function getSteamHex(source)
    local identifiers = GetPlayerIdentifiers(source)
    
    for _, id in ipairs(identifiers) do
        if id:find("steam:") then
            return id:sub(7) -- Remove "steam:" prefix
        end
    end
    
    return nil
end

-- Update steam_hex when player is loaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    local source = source
    
    Citizen.SetTimeout(500, function() -- Wait a bit for player data to be ready
        local xPlayer = ESX.GetPlayerFromId(source)
        
        if xPlayer then
            local steamHex = getSteamHex(source)
            
            if steamHex then
                -- Ensure column exists
                MySQL.Async.execute("ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `steam_hex` VARCHAR(50) DEFAULT NULL", {}, function()
                    -- Update users table with steam_hex
                    local query = "UPDATE users SET steam_hex = ? WHERE identifier = ? LIMIT 1"
                    
                    MySQL.Async.execute(query, {steamHex, xPlayer.identifier}, function(affectedRows)
                        if affectedRows > 0 then
                            print("^2[Steam Identifier] Updated steam_hex for player " .. source .. " (License: " .. xPlayer.identifier .. ", Steam: " .. steamHex .. ")^7")
                        else
                            print("^3[Steam Identifier] No rows updated for player " .. source .. "^7")
                        end
                    end)
                end)
            else
                print("^1[Steam Identifier] ERROR: Could not find steam hex for player " .. source .. "^7")
            end
        end
    end)
end)

-- Handle disconnection
RegisterNetEvent('esx:playerDropped')
AddEventHandler('esx:playerDropped', function()
    local source = source
    print("^3[Steam Identifier] Player " .. source .. " disconnected^7")
end)

-- Command to check steam hex
RegisterCommand('steamhex', function(source, args, rawCommand)
    if source == 0 then
        print("^1[Steam Identifier] Command can only be used in-game^7")
        return
    end
    
    local steamHex = getSteamHex(source)
    
    if steamHex then
        TriggerClientEvent('chat:addMessage', source, {
            color = {0, 255, 0},
            multiline = true,
            args = {"Steam Hex", steamHex}
        })
        print("^2[Steam Identifier] Steam Hex for player " .. source .. ": " .. steamHex .. "^7")
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"Steam Hex", "Not found!"}
        })
        print("^1[Steam Identifier] Steam Hex not found for player " .. source .. "^7")
    end
end, false)

print("^2[Steam Identifier] Steam Hex capture service loaded^7")
print("^3[Steam Identifier] NOTE: Primary identifier is LICENSE, Steam Hex is stored in steam_hex column^7")
