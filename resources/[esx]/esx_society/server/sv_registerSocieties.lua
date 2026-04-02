ESX = exports.es_extended:getSharedObject()

Citizen.CreateThread(function()
	for k, v in pairs(MarskuySociety.Utils) do
		TriggerEvent('esx_society:registerSociety', k, v.label, v.society, v.society, v.society, {type = 'public'})
	end
end)