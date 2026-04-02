

AddEventHandler('esx:nui_ready', function()
    print('MYTHIC ON READY')
    CreateFrame('mythic_notify', 'nui://' .. GetCurrentResourceName() .. '/modules/mythic_notify/data/html/ui.html')
end)

RegisterNetEvent('ttyy_nuipack:client:SendAlert')
AddEventHandler('ttyy_nuipack:client:SendAlert', function(data)
	--SendAlert(data.type, data.text, data.length, data.style)
	DoHudText(data.type, data.text)
end)

RegisterNetEvent('ttyy_nuipack:client:PersistentAlert')
AddEventHandler('ttyy_nuipack:client:PersistentAlert', function(data)
	PersistentAlert(data.action, data.id, data.type, data.text, data.style)
end)

RegisterNetEvent("ttyy_nuipack:client:HadesNotif")
AddEventHandler("ttyy_nuipack:client:HadesNotif", function(data)
	DoCustomHudText(data.type, data.text, data.length)
end)

function SendAlert(type, text, length, style)
	SendFrameMessage('mythic_notify',{
		type = type,
		text = text,
		length = length,
		style = style
	})
end

function PersistentAlert(action, id, type, text, style)
	if action:upper() == 'START' then
		SendFrameMessage('mythic_notify',{
			persist = action,
			id = id,
			type = type,
			text = text,
			style = style
		})
	elseif action:upper() == 'END' then
		SendFrameMessage('mythic_notify',{
			persist = action,
			id = id
		})
	end
end

function DoCustomHudText(type, text, length)
	SendFrameMessage('mythic_notify',{
		action = 'customnotif',
		type = type,
		text = text,
		length = length
	})
end

function DoHudText(type, text)
	SendFrameMessage('mythic_notify',{
		action = 'notif',
		type = type,
		text = text
	})
end
