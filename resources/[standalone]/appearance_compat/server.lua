-- ESX Skin Server Compatibility Wrapper for illenium-appearance

local ESX = nil

print("^2[Appearance Compat Server] Starting ESX Skin compatibility wrapper...^7")

-- Handle esx_skin:save event forwarding (register early - doesn't need ESX)
RegisterNetEvent('esx_skin:save')
AddEventHandler('esx_skin:save', function(skin)
    local source = source
    print("^2[Appearance Compat Server] esx_skin:save from player " .. source .. "^7")
    
    -- Forward to illenium-appearance equivalent
    if skin then
        TriggerClientEvent('illenium:setCustomization', source, skin)
    end
end)

-- Handle esx_skin:setWeight (register early - doesn't need ESX)
RegisterNetEvent('esx_skin:setWeight')
AddEventHandler('esx_skin:setWeight', function(skin)
    print("^2[Appearance Compat Server] esx_skin:setWeight received^7")
    -- illenium-appearance handles weight automatically
end)

-- Wait for ESX and register callbacks
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        if ESX == nil then
            Wait(100)
        end
    end
    
    print("^2[Appearance Compat Server] ESX initialized, registering callbacks...^7")

    -- Server callback for esx_skin:getPlayerSkin - register AFTER ESX is ready
    ESX.RegisterServerCallback('esx_skin:getPlayerSkin', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        
        if not xPlayer then
            print("^1[Appearance Compat Server] ERROR: Player " .. source .. " not found^7")
            cb({}, {})
            return
        end
        
        -- Get from illenium-appearance database
        -- Note: illenium-appearance uses 'citizenid' not 'identifier'
        local query = "SELECT skin FROM playerskins WHERE citizenid = ? LIMIT 1"
        
        MySQL.Async.fetchAll(query, {xPlayer.identifier}, function(result)
            if result and result[1] then
                local skin = json.decode(result[1].skin)
                print("^2[Appearance Compat Server] Skin loaded for player " .. source .. " (" .. xPlayer.identifier .. ")^7")
                cb(skin, skin) -- Return skin and jobSkin (same)
            else
                print("^3[Appearance Compat Server] No skin found for player " .. source .. " (" .. xPlayer.identifier .. "), using default^7")
                -- Default skin if not found
                cb({}, {})
            end
        end)
    end)
    
    print("^2[Appearance Compat Server] All callbacks registered successfully^7")
end)

print("^2[Appearance Compat Server] ESX Skin compatibility wrapper loaded^7")
print("^2[Appearance Compat Server] Callbacks registered and waiting for ESX...^7")
