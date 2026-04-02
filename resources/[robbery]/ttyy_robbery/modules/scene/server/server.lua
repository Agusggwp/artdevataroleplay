local scenes = {}

RegisterNetEvent('mk-scenes:fetch', function()
    local src = source
    TriggerClientEvent('mk-scenes:send', src, scenes)
end)

RegisterNetEvent('mk-scenes:add', function(coords, message, color, distance)
    table.insert(scenes, {
        message = message,
        color = color,
        distance = distance,
        coords = coords
    })
    TriggerClientEvent('mk-scenes:send', -1, scenes)
    TriggerEvent('mk-scenes:log', source, message, coords)
end)

RegisterNetEvent('mk-scenes:delete', function(key)
    table.remove(scenes, key)
    TriggerClientEvent('mk-scenes:send', -1, scenes)
end)


RegisterNetEvent('mk-scenes:log', function(id, text, coords)
    local f, err = io.open('sceneLogging.txt', 'a')
    if not f then return print(err) end
    f:write('Player: ['..id..'] Placed Scene: ['..text..'] At Coords = '..coords..'\n')
    f:close()
end)