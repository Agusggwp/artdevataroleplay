-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

RegisterServerEvent('ttyy_tireslash:sync')
AddEventHandler('ttyy_tireslash:sync', function(id, tireIndex)
	TriggerClientEvent('ttyy_tireslash:sync', id, tireIndex)
end)