AddEventHandler('esx:nui_ready', function()
	print('TTYY NOTIFY READY')
  CreateFrame('ttyy_notify', 'nui://' .. GetCurrentResourceName() .. '/modules/ttyy_notify/data/html/ui.html')
end)

function Alert(title, message, time, type)
	SendFrameMessage('ttyy_notify', {
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('ttyy_notify:Alert')
AddEventHandler('ttyy_notify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

RegisterNetEvent('ttyy_notify:Alerts')
AddEventHandler('ttyy_notify:Alerts', function(message)
	local title = 'INFORMATION'
	local time = 5000
	local type = 'info'
	Alert(title, message, time, type)
end)

---[ EXAMPLE NOTIFY (DELETE THIS BELOW) ]---

RegisterCommand('1', function()
	exports['ttyy_nuipack']:Alert("SUCCESS", "<span style='color:#c7c7c7'>You have widthdrawn <span style='color:#069a19'><b>100$</b></span>!", 5000, 'success')
end)

RegisterCommand('2', function()
	exports['ttyy_nuipack']:Alert("INFORMATION", "<span style='color:#c7c7c7'>Server restart in <span style='color:#fff'>5 minutes</span>!", 5000, 'info')
end)

RegisterCommand('3', function()
	exports['ttyy_nuipack']:Alert("ERROR", "<span style='color:#c7c7c7'>You have no <span style='color:#ff0000'>permissions</span>!", 5000, 'error')
end)

RegisterCommand('4', function()
	exports['ttyy_nuipack']:Alert("NEW SMS", "<span style='color:#ffc107'>695-2713: </span><span style='color:#c7c7c7'> How are you?", 5000, 'warning')
end)

RegisterCommand('5', function()
	exports['ttyy_nuipack']:Alert("TWITTER", "<span style='color:#01a2dc'>@USER69: </span><span style='color:#c7c7c7'> Hello everyone!", 5000, 'sms')
end)

RegisterCommand('6', function()
	exports['ttyy_nuipack']:Alert("SAVED", "<span style='color:#c7c7c7'>Clothes saved successfully!", 5000, 'long')
end)

---[ ALL IN ONE NOTIFY (DELETE THIS BELOW) ]---

RegisterCommand('allnoty', function()
	exports['ttyy_nuipack']:Alert("SUCCESS", "<span style='color:#c7c7c7'>You have widthdrawn <span style='color:#069a19'><b>100$</b></span>!", 5000, 'success')
	exports['ttyy_nuipack']:Alert("INFORMATION", "<span style='color:#c7c7c7'>Server restart in <span style='color:#fff'>5 minutes</span>!", 5000, 'info')
	exports['ttyy_nuipack']:Alert("ERROR", "<span style='color:#c7c7c7'>You have no <span style='color:#ff0000'>permissions</span>!", 5000, 'error')
	exports['ttyy_nuipack']:Alert("NEW SMS", "<span style='color:#ffc107'>695-2713: </span><span style='color:#c7c7c7'> How are you?", 5000, 'warning')
	exports['ttyy_nuipack']:Alert("TWITTER", "<span style='color:#01a2dc'>@USER69: </span><span style='color:#c7c7c7'> Hello everyone!", 5000, 'sms')
	exports['ttyy_nuipack']:Alert("SAVED", "<span style='color:#c7c7c7'>Clothes saved successfully!", 5000, 'long')
end)