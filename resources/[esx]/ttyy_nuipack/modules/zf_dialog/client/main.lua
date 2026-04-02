local properties = nil

AddEventHandler('esx:nui_ready', function()
	print('ZF DIALOG READY')
  CreateFrame('zf_dialog', 'nui://' .. GetCurrentResourceName() .. '/modules/zf_dialog/data/html/ui.html')
end)

RegisterNUICallback("buttonSubmit", function(data, cb)
    SetNuiFocus(false)
    properties:resolve(data.data)
    properties = nil
    cb("ok")
end)

RegisterNUICallback("closeMenu", function(data, cb)
    SetNuiFocus(false)
    properties:resolve(nil)
    properties = nil
    cb("ok")
end)

function DialogInput(data)
    Citizen.Wait(150)
    if not data then return end
    if properties then return end
    
    properties = promise.new()

    FocusFrame('zf_dialog', true, true)
    SendFrameMessage('zf_dialog',{
        action = 'OPEN_MENU',
        data = data
    })

    return Citizen.Await(properties)
end

exports("DialogInput", DialogInput)