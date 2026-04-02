-- Blip System Client
-- Manage blips on the map

local blips = {}

-- Create blips from config
function CreateBlips()
    for _, blip in ipairs(Config.Blips) do
        local blipHandle = AddBlipForCoord(blip.coords.x, blip.coords.y, blip.coords.z)
        SetBlipSprite(blipHandle, blip.sprite)
        SetBlipColour(blipHandle, blip.color)
        SetBlipScale(blipHandle, blip.scale)
        SetBlipAsNoLoonger(blipHandle)
        
        BeginTextCommandDisplayHelp("STRING")
        AddTextComponentString(blip.name)
        EndTextCommandDisplayHelp(0, false, true, -1)
        
        blips[#blips + 1] = blipHandle
    end
end

-- Export function to add blips dynamically
function addBlip(name, coords, sprite, color, scale)
    local blipHandle = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blipHandle, sprite or 227)
    SetBlipColour(blipHandle, color or 3)
    SetBlipScale(blipHandle, scale or 0.8)
    SetBlipAsNoLoonger(blipHandle)
    
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentString(name)
    EndTextCommandDisplayHelp(0, false, true, -1)
    
    blips[#blips + 1] = blipHandle
    return blipHandle
end

-- Reload blips command
RegisterCommand('reloadblips', function()
    -- Remove old blips
    for _, blip in ipairs(blips) do
        RemoveBlip(blip)
    end
    blips = {}
    
    -- Create new blips
    CreateBlips()
    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"Blips", "Blips reloaded successfully"}
    })
end)

-- Create blips on resource start
CreateBlips()
