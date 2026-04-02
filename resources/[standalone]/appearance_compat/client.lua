-- ESX Skin Compatibility Wrapper for illenium-appearance
-- Forwards esx_skin events to illenium-appearance

print("^2[Appearance Compat] Starting ESX Skin compatibility wrapper...^7")

-- Handle esx_skin:openSaveableMenu
RegisterNetEvent('esx_skin:openSaveableMenu')
AddEventHandler('esx_skin:openSaveableMenu', function()
    print("^2[Appearance Compat] esx_skin:openSaveableMenu -> opening illenium-appearance^7")
    -- illenium-appearance uses a different event, trigger it
    TriggerEvent('illenium:openCustomization')
end)

-- Handle esx_skin:openRestrictedMenu
RegisterNetEvent('esx_skin:openRestrictedMenu')
AddEventHandler('esx_skin:openRestrictedMenu', function(callback, menu)
    print("^2[Appearance Compat] esx_skin:openRestrictedMenu -> opening illenium-appearance^7")
    if callback then
        -- Get current skin and return via callback
        TriggerEvent('illenium:getCustomization', function(model, data)
            if callback then
                callback(data, menu)
            end
        end)
    end
end)

-- Handle esx_skin:playerRegistered
RegisterNetEvent('esx_skin:playerRegistered')
AddEventHandler('esx_skin:playerRegistered', function()
    print("^2[Appearance Compat] esx_skin:playerRegistered received^7")
    -- Player registered, illenium-appearance will handle this
end)

-- Handle esx_skin:resetFirstSpawn
RegisterNetEvent('esx_skin:resetFirstSpawn')
AddEventHandler('esx_skin:resetFirstSpawn', function()
    print("^2[Appearance Compat] esx_skin:resetFirstSpawn received^7")
    -- Reset first spawn
end)

-- Handle esx_skin:setLastSkin
RegisterNetEvent('esx_skin:setLastSkin')
AddEventHandler('esx_skin:setLastSkin', function(skin)
    print("^2[Appearance Compat] esx_skin:setLastSkin received^7")
    -- illenium-appearance handles this automatically
end)

print("^2[Appearance Compat] ESX Skin compatibility wrapper loaded^7")
