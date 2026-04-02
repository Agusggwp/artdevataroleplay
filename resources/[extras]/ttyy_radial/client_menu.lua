-- Menu state
local showMenu = false
local open = false
local IsDead = false
local isProcess = false
local isClicked = false
local keyBind = "F1"

local MAX_MENU_ITEMS = 7


RegisterKeyMapping("radialMenu", "Radialmenu", "keyboard", "F1")
RegisterCommand(
    "radialMenu",
    function()
        if IsDead then
            return
        end
        if isClicked and isProcess then
            return
        end
        isProcess = true
        while not isClicked and isProcess do
            if IsDead then
                break
            end

            if IsControlPressed(0, 288) then
                showMenu = true
                local enabledMenus = {}
                for _, menuConfig in ipairs(rootMenuConfig) do
                    if menuConfig:enableMenu() then
                        local dataElements = {}
                        local hasSubMenus = false
                        if menuConfig.subMenus ~= nil and #menuConfig.subMenus > 0 then
                            hasSubMenus = true
                            local previousMenu = dataElements
                            local currentElement = {}
                            for i = 1, #menuConfig.subMenus do
                                currentElement[#currentElement + 1] = newSubMenus[menuConfig.subMenus[i]]
                                currentElement[#currentElement].id = menuConfig.subMenus[i]
                                currentElement[#currentElement].enableMenu = nil

                                if i % MAX_MENU_ITEMS == 0 and i < (#menuConfig.subMenus - 1) then
                                    previousMenu[MAX_MENU_ITEMS + 1] = {
                                        id = "_more",
                                        title = "Diğerleri",
                                        icon = "#more",
                                        items = currentElement
                                    }
                                    previousMenu = currentElement
                                    currentElement = {}
                                end
                            end
                            if #currentElement > 0 then
                                previousMenu[MAX_MENU_ITEMS + 1] = {
                                    id = "_more",
                                    title = "Diğerleri",
                                    icon = "#more",
                                    items = currentElement
                                }
                            end
                            dataElements = dataElements[MAX_MENU_ITEMS + 1].items
                        end
                        enabledMenus[#enabledMenus + 1] = {
                            id = menuConfig.id,
                            title = menuConfig.displayName,
                            functionName = menuConfig.functionName,
                            icon = menuConfig.icon
                        }
                        if hasSubMenus then
                            enabledMenus[#enabledMenus].items = dataElements
                        end
                    end
                end
                if not open then
                    SendNUIMessage(
                        {
                            state = "show",
                            resourceName = GetCurrentResourceName(),
                            data = enabledMenus,
                            menuKeyBind = keyBind
                        }
                    )
                    open = true
                end
                SetCursorLocation(0.5, 0.5)
                SetNuiFocus(true, true)

                -- Play sound
                PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)

                while showMenu == true do
                    Citizen.Wait(100)
                end

                Citizen.Wait(100)

                while IsControlPressed(0, 288) do
                    Citizen.Wait(100)
                end

                if not IsControlPressed(0, 288) then
                    isProcess = false
                end
            end

            if not showMenu then
                break
            end
            Wait(5)
        end

        isProcess = false
        if IsDead then
            return
        end
    end,
    false
)

function CloseMenu()
    open = false

    showMenu = false

    isProcess = false

    SendNUIMessage({
        state = 'destroy'
    })

    SetNuiFocus(false, false)
end

RegisterCommand('fixcuy', function()
    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })
end)

RegisterCommand('fixcar', function()
    exports.carcontrol:CloseUI()
end)

-- Callback function for closing menu
RegisterNUICallback('closemenu', function(data, cb)
    open = false
    -- Clear focus and destroy UI

    isProcess = false

    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })

    -- Play sound
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)

    -- Send ACK to callback function
    cb('ok')
end)

-- Callback function for when a slice is clicked, execute command
RegisterNUICallback('triggerAction', function(data, cb)
    -- Clear focus and destroy UI
    ESX.SetTimeout(100, function()
        open = false
        isClicked = false
        isProcess = false
    end)

    isClicked = true
    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })

    -- Play sound
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)

    -- Run command
    --ExecuteCommand(data.action)
    if data.action:find('/', 1, true) == 1 then
        ExecuteCommand(data.action:sub(2))
    else
        TriggerEvent(data.action, data.parameters)
    end
    -- TriggerEvent(data.action, data.parameters)

    -- Send ACK to callback function
    cb('ok')
end)

RegisterNetEvent("menu:menuexit")
AddEventHandler("menu:menuexit", function()
    showMenu = false
    SetNuiFocus(false, false)
end)
