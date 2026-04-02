AddEventHandler('esx:nui_ready', function()
	print('ZF CONTEXT READY')
  CreateFrame('zf_context', 'nui://' .. GetCurrentResourceName() .. '/modules/zf_context/data/html/ui.html')
end)

RegisterNUICallback('clickedButton', function(data, cb)
    SetNuiFocus(false)

    if data.isServer then
        TriggerServerEvent(data.event, data.args)
    else
        TriggerEvent(data.event, data.args)
    end
end)

RegisterNUICallback('closeMenu', function()
    SetNuiFocus(false)
end)

RegisterNetEvent('zf_context:openMenu')
AddEventHandler('zf_context:openMenu', function(data)
    openMenu(data)
end)

RegisterNetEvent('rv-exitmenu', function()
    SetNuiFocus(false)
end)

function openMenu(data)
    if not data then return end
    FocusFrame('zf_context', true, true)
    SendFrameMessage('zf_context',{
        action = 'OPEN_MENU',
        data = data
    })
end

exports("openMenu", openMenu)