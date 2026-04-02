AddEventHandler('esx:nui_ready', function()
	print('ttyy_textui READY')
  CreateFrame('ttyy_textui', 'nui://' .. GetCurrentResourceName() .. '/modules/ttyy_textui/data/html/ui.html')
end)

function Open(message, color, position)
	SendFrameMessage('ttyy_textui',{
        action = 'open',
		message = message,
		color = color,
		position = position,
    })
end

function Close()
	SendFrameMessage('ttyy_textui',{
        action = 'close'
    })
end

RegisterNetEvent('ttyy_nuipack:Open')
AddEventHandler('ttyy_nuipack:Open', function(message, color, position)
	Open(message, color, position)
end)

RegisterNetEvent('ttyy_nuipack:Close')
AddEventHandler('ttyy_nuipack:Close', function()
	Close()
end)