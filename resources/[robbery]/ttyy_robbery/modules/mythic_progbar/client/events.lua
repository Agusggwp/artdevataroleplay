RegisterNetEvent("ttyy_robbery:client:progress")
AddEventHandler("ttyy_robbery:client:progress", function(action, finish)
	Process(action, nil, nil, finish)
end)

RegisterNetEvent("ttyy_robbery:client:ProgressWithStartEvent")
AddEventHandler("ttyy_robbery:client:ProgressWithStartEvent", function(action, start, finish)
	Process(action, start, nil, finish)
end)

RegisterNetEvent("ttyy_robbery:client:ProgressWithTickEvent")
AddEventHandler("ttyy_robbery:client:ProgressWithTickEvent", function(action, tick, finish)
	Process(action, nil, tick, finish)
	
end)

RegisterNetEvent("ttyy_robbery:client:ProgressWithStartAndTick")
AddEventHandler("ttyy_robbery:client:ProgressWithStartAndTick", function(action, start, tick, finish)
	Process(action, start, tick, finish)
end)

RegisterNetEvent("ttyy_robbery:client:cancel")
AddEventHandler("ttyy_robbery:client:cancel", function()
	Cancel()
end)

RegisterNUICallback('actionFinish', function(data, cb)
	Finish()
end)