ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local mincash = 300000 -- minimum amount of cash a pile holds
local maxcash = 550000 -- maximum amount of cash a pile can hold
local black = true -- enable this if you want blackmoney as a reward
local mincops = 8 -- minimum required cops to start mission
local enablesound = true -- enables bank alarm sound
local lastrobbed = 0 -- don't change this
local cooldown = 1800 -- amount of time to do the heist again in seconds (30min)
local info = {stage = 0, style = nil, locked = false}
local totalcash = 0
local PoliceDoors = {
    {loc = vector3(257.10, 220.30, 106.28), txtloc = vector3(257.10, 220.30, 106.28), model = "hei_v_ilev_bk_gate_pris", model2 = "hei_v_ilev_bk_gate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(236.91, 227.50, 106.29), txtloc = vector3(236.91, 227.50, 106.29), model = "v_ilev_bk_door", model2 = "v_ilev_bk_door", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(262.35, 223.00, 107.05), txtloc = vector3(262.35, 223.00, 107.05), model = "hei_v_ilev_bk_gate2_pris", model2 = "hei_v_ilev_bk_gate2_pris", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(252.72, 220.95, 101.68), txtloc = vector3(252.72, 220.95, 101.68), model = "hei_v_ilev_bk_safegate_pris", model2 = "hei_v_ilev_bk_safegate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(261.01, 215.01, 101.68), txtloc = vector3(261.01, 215.01, 101.68), model = "hei_v_ilev_bk_safegate_pris", model2 = "hei_v_ilev_bk_safegate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(253.92, 224.56, 101.88), txtloc = vector3(253.92, 224.56, 101.88), model = "v_ilev_bk_vaultdoor", model2 = "v_ilev_bk_vaultdoor", obj = nil, obj2 = nil, locked = true}
}
ESX.RegisterServerCallback("marskuy_ganteng:GetData", function(source, cb)
    cb(info)
end)
ESX.RegisterServerCallback("marskuy_ganteng:GetDoors", function(source, cb)
    cb(PoliceDoors)
end)
ESX.RegisterServerCallback("marskuy_ganteng:startevent", function(source, cb, method)
    local xPlayers = ESX.GetPlayers()
    local copcount = 0
    local yPlayer = ESX.GetPlayerFromId(source)

    if not info.locked then
        if (os.time() - cooldown) > lastrobbed then
            for i = 1, #xPlayers, 1 do
                local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

                if xPlayer then
                    if xPlayer.job.name == "police" then
                        copcount = copcount + 1
                    end
                end
            end
            if copcount >= mincops then
                if method == 1 then
                    local item = yPlayer.getInventoryItem("thermal_charge")["count"]

                    if item >= 1 then
                        yPlayer.removeInventoryItem("thermal_charge", 1)
                        cb(true)
                        info.stage = 1
                        info.style = 1
                        info.locked = true
                    else
                        cb("You don't have any thermal charges.")
                    end
                elseif method == 2 then
                    local item = yPlayer.getInventoryItem("lockpick")["count"]

                    if item >= 1 then
                        yPlayer.removeInventoryItem("lockpick", 1)
                        info.stage = 1
                        info.style = 2
                        info.locked = true
                        cb(true)
                    else
                        cb("You don't have any lockpicks.")
                    end
                end
            else
                cb("There must be at least "..mincops.." police in the city.")
            end
        else
            cb(math.floor((cooldown - (os.time() - lastrobbed)) / 60)..":"..math.fmod((cooldown - (os.time() - lastrobbed)), 60).." left until the next robbery.")
        end
    else
        cb("Bank is currently being robbed.")
    end
end)
ESX.RegisterServerCallback("marskuy_ganteng:checkItem", function(source, cb, itemname)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(itemname)["count"]

    if item >= 1 then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback("marskuy_ganteng:gettotalcash", function(source, cb)
    cb(totalcash)
end)
RegisterServerEvent("marskuy_ganteng:removeitem")
AddEventHandler("marskuy_ganteng:removeitem", function(itemname)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem(itemname, 1)
end)
RegisterServerEvent("marskuy_ganteng:updatecheck")
AddEventHandler("marskuy_ganteng:updatecheck", function(var, status)
    TriggerClientEvent("marskuy_ganteng:updatecheck_c", -1, var, status)
end)
--[[RegisterServerEvent("marskuy_ganteng:toggleDoor")
AddEventHandler("marskuy_ganteng:toggleDoor", function(door, coords, status)
    TriggerClientEvent("marskuy_ganteng:toggleDoor_c", -1, door, coords, status)
end)]]
RegisterServerEvent("marskuy_ganteng:policeDoor")
AddEventHandler("marskuy_ganteng:policeDoor", function(doornum, status)
    PoliceDoors[doornum].locked = status
    TriggerClientEvent("marskuy_ganteng:policeDoor_c", -1, doornum, status)
end)
RegisterServerEvent("marskuy_ganteng:moltgate")
AddEventHandler("marskuy_ganteng:moltgate", function(x, y, z, oldmodel, newmodel, method)
    TriggerClientEvent("marskuy_ganteng:moltgate_c", -1, x, y, z, oldmodel, newmodel, method)
end)
RegisterServerEvent("marskuy_ganteng:fixdoor")
AddEventHandler("marskuy_ganteng:fixdoor", function(hash, coords, heading)
    TriggerClientEvent("marskuy_ganteng:fixdoor_c", -1, hash, coords, heading)
end)
RegisterServerEvent("marskuy_ganteng:openvault")
AddEventHandler("marskuy_ganteng:openvault", function(method)
    TriggerClientEvent("marskuy_ganteng:openvault_c", -1, method)
end)
RegisterServerEvent("marskuy_ganteng:startloot")
AddEventHandler("marskuy_ganteng:startloot", function()
    TriggerClientEvent("marskuy_ganteng:startloot_c", -1)
end)
RegisterServerEvent("marskuy_ganteng:rewardCash")
AddEventHandler("marskuy_ganteng:rewardCash", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local reward = math.random(mincash, maxcash)

    if black then
        xPlayer.addAccountMoney("black_money", reward)
        totalcash = totalcash + reward
    else
        xPlayer.addMoney(reward)
        totalcash = totalcash + reward
    end
end)
RegisterServerEvent("marskuy_ganteng:rewardGold")
AddEventHandler("marskuy_ganteng:rewardGold", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("gold_bar", 1)
end)
RegisterServerEvent("marskuy_ganteng:rewardDia")
AddEventHandler("marskuy_ganteng:rewardDia", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("dia_box", 1)
end)
RegisterServerEvent("marskuy_ganteng:giveidcard")
AddEventHandler("marskuy_ganteng:giveidcard", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("id_card", 1)
end)
RegisterServerEvent("marskuy_ganteng:ostimer")
AddEventHandler("marskuy_ganteng:ostimer", function()
    lastrobbed = os.time()
    info.stage, info.style, info.locked = 0, nil, false
    Citizen.Wait(300000)
    for i = 1, #PoliceDoors, 1 do
        PoliceDoors[i].locked = true
        TriggerClientEvent("marskuy_ganteng:policeDoor_c", -1, i, true)
    end
    totalcash = 0
    TriggerClientEvent("marskuy_ganteng:reset", -1)
end)
RegisterServerEvent("marskuy_ganteng:gas")
AddEventHandler("marskuy_ganteng:gas", function()
    TriggerClientEvent("marskuy_ganteng:gas_c", -1)
end)
RegisterServerEvent("marskuy_ganteng:ptfx")
AddEventHandler("marskuy_ganteng:ptfx", function(method)
    TriggerClientEvent("marskuy_ganteng:ptfx_c", -1, method)
end)
RegisterServerEvent("marskuy_ganteng:alarm_s")
AddEventHandler("marskuy_ganteng:alarm_s", function(toggle)
    if enablesound then
        TriggerClientEvent("marskuy_ganteng:alarm", -1, toggle)
    end
    TriggerClientEvent("marskuy_ganteng:policenotify", -1, toggle)
end)
