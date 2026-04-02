-----------------For support, scripts, and more----------------
----------------- https://discord.gg/XJFNyMy3Bv ---------------
---------------------------------------------------------------
ESX = nil
QBCore = nil

if Config.Framework == "ESX" then
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif Config.Framework == "QB" then
        QBCore = exports['qb-core']:GetCoreObject()
end


RegisterServerEvent('ttyy_boombox:deleteObj', function(netId)
    TriggerClientEvent('ttyy_boombox:deleteObj', -1, netId)
end)

RegisterNetEvent("ttyy_boombox:soundStatus")
AddEventHandler("ttyy_boombox:soundStatus", function(type, musicId, data)
    TriggerClientEvent("ttyy_boombox:soundStatus", -1, type, musicId, data)
end)

RegisterNetEvent("ttyy_boombox:syncActive")
AddEventHandler("ttyy_boombox:syncActive", function(activeRadios)
    TriggerClientEvent("ttyy_boombox:syncActive", -1, activeRadios)
end)

if Config.Framework == "ESX" then
    RegisterServerEvent('ttyy_boombox:save')
    AddEventHandler('ttyy_boombox:save', function(name, link)
        local xPlayer = ESX.GetPlayerFromId(source)
        MySQL.Async.insert('INSERT INTO `boombox_songs` (`identifier`, `label`, `link`) VALUES (@identifier, @label, @link)', {
            ['@identifier'] = xPlayer.identifier,
            ['@label'] = name,
            ['@link'] = link
        })
    end)
elseif Config.Framework == "QB" then
    RegisterServerEvent('ttyy_boombox:save')
    AddEventHandler('ttyy_boombox:save', function(name, link)
        local Player = QBCore.Functions.GetPlayer(source)
        MySQL.Async.insert('INSERT INTO `boombox_songs` (`citizenid`, `label`, `link`) VALUES (@citizenid, @label, @link)', {
            ['@citizenid'] = Player.PlayerData.citizenid,
            ['@label'] = name,
            ['@link'] = link
        })
    end)
end

if Config.Framework == "ESX" then
    RegisterServerEvent('ttyy_boombox:deleteSong')
    AddEventHandler('ttyy_boombox:deleteSong', function(data)
        local xPlayer = ESX.GetPlayerFromId(source)
        MySQL.Async.execute('DELETE FROM `boombox_songs` WHERE `identifier` = @identifier AND label = @label AND link = @link', {
            ["@identifier"] = xPlayer.identifier,
            ["@label"] = data.label,
            ["@link"] = data.link,
        })
    end)
elseif Config.Framework == "QB" then
    RegisterServerEvent('ttyy_boombox:deleteSong')
    AddEventHandler('ttyy_boombox:deleteSong', function(data)
        local Player = QBCore.Functions.GetPlayer(source)
        MySQL.Async.execute('DELETE FROM `boombox_songs` WHERE `citizenid` = @citizenid AND label = @label AND link = @link', {
            ["@citizenid"] = Player.PlayerData.citizenid,
            ["@label"] = data.label,
            ["@link"] = data.link,
        })
    end)
end

if Config.Framework == "ESX" then
    ESX.RegisterServerCallback('ttyy_boombox:getSavedSongs', function(source, cb)
        local savedSongs = {}
        local xPlayer = ESX.GetPlayerFromId(source)
        MySQL.Async.fetchAll('SELECT label, link FROM boombox_songs WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            if result[1] then
                for i=1, #result do
                    table.insert(savedSongs, {label = result[i].label, link = result[i].link})
                end
            end
            if savedSongs then
                cb(savedSongs)
            else
                cb(false)
            end
        end)
    end)
elseif Config.Framework == "QB" then
    QBCore.Functions.CreateCallback('ttyy_boombox:getSavedSongs', function(source, cb)
        local savedSongs = {}
        local Player = QBCore.Functions.GetPlayer(source)
        MySQL.Async.fetchAll('SELECT label, link FROM boombox_songs WHERE citizenid = @citizenid', {
            ['@citizenid'] = Player.PlayerData.citizenid
        }, function(result)
            if result[1] then
                for i=1, #result do
                    table.insert(savedSongs, {label = result[i].label, link = result[i].link})
                end
            end
            if savedSongs then
                cb(savedSongs)
            else
                cb(false)
            end
        end)
    end)
end
