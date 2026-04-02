lib.callback.register('z-phone:server:GetVehicles', function(source, body)
    local Player = xCore.GetPlayerBySource(source)
    if Player == nil then 
        return {}
    end

    local citizenid = Player.citizenid
    local query = xCore.queryPlayerVehicles()
    
    if not query then
        print("ERROR: queryPlayerVehicles returned nil")
        return {}
    end

    local result = MySQL.query.await(query, { citizenid })
    
    if not result then
        return {}
    end
    
    -- Ensure result is a table/array
    if type(result) ~= 'table' then
        print("ERROR: GetVehicles result is not a table, got: " .. type(result))
        return {}
    end
    
    return result
end)