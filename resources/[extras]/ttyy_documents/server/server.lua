local RegisterCallback
local RegisterItem
ESX = nil
local QBCore
local CurrentFramework

if GetResourceState("es_extended") == "started" then
  CurrentFramework = "esx"
elseif GetResourceState("qb-core") == "started" then
  CurrentFramework = "qb"
else
  print("^8ERROR: ^3This script only supports ESX and QBCore frameworks, but non of these are present. Unfortunatelly, you cannot use this script.^7")
  return
end

if CurrentFramework == "esx" then
  ESX = exports["es_extended"]:getSharedObject()
  RegisterCallback = function (name, fn)
    ESX.RegisterServerCallback(name, fn)
  end
  RegisterItem = function(itemName, fn)
    ESX.RegisterUsableItem(itemName, fn)
  end
elseif CurrentFramework == "qb" then
  QBCore = exports['qb-core']:GetCoreObject()
  RegisterCallback = function (name, fn)
    QBCore.Functions.CreateCallback(name, fn)
  end
  RegisterItem = function(itemName, fn)
    QBCore.Functions.CreateUseableItem(itemName, fn)
  end
end

RegisterCallback('ttyy_documents:getPlayerCopies', function(source, cb)
  local src = source
  local PlayerIdentifier = GetPlayerIdentifier(src)

  MySQL.Async.fetchAll(
    'SELECT id, data, isCopy FROM ttyy_documents WHERE ownerId = @identifier and isCopy = "1"', {
    ['@identifier'] = PlayerIdentifier
  }, function(result)
    local mappedResult = {}
    for k, v in pairs(result) do
      local thisData = json.decode(v.data)
      thisData.id = v.id
      thisData.isCopy = v.isCopy
      table.insert(mappedResult, thisData)
    end
    cb(mappedResult)
  end)
end)

if Config.DocumentItemName then
  RegisterItem(Config.DocumentItemName, function(source)
    local src = source
    TriggerClientEvent("ttyy_documents:useItem", src)
  end)
end

RegisterCallback('ttyy_documents:getPlayerDocuments', function(source, cb)
  local src = source
  local PlayerIdentifier = GetPlayerIdentifier(src)

    MySQL.Async.fetchAll(
      'SELECT id, data, isCopy FROM ttyy_documents WHERE ownerId = @identifier and isCopy = "0"', {
      ['@identifier'] = PlayerIdentifier
    }, function(result)
      local mappedResult = {}
      for k, v in pairs(result) do
        local thisData = json.decode(v.data)
        thisData.id = v.id
        thisData.isCopy = v.isCopy
        table.insert(mappedResult, thisData)
      end
      cb(mappedResult)
    end)
end)

RegisterCallback('ttyy_documents:getDocumentTemplates', function(source, cb)
  local src = source  
  local PlayerJobName = GetPlayerJobName(src)

  MySQL.Async.fetchAll(
    'SELECT id, data FROM k5_document_templates WHERE job = @job', {
    ['@job'] = PlayerJobName
  }, function(result)
    local mappedResult = {}
    for k, v in pairs(result) do
      local thisData = json.decode(v.data)
      thisData.id = v.id
      table.insert(mappedResult, thisData)
    end
    cb(mappedResult)
  end)
end)

RegisterCallback('ttyy_documents:createTemplate', function(source, cb, data)
  local src = source  
  local PlayerJobName = GetPlayerJobName(src)

  MySQL.Async.insert('INSERT INTO k5_document_templates (data, job) VALUES (@data, @job)', {
			['@data'] = data,
			['@job'] = PlayerJobName
		}, function(result)
      cb(result)
		end)
end)

RegisterCallback('ttyy_documents:editTemplate', function(source, cb, data)
  local obj = json.decode(data)

  MySQL.Async.execute('UPDATE k5_document_templates SET data = @data WHERE id = @id', {
			['@data'] = data,
			['@id'] = obj.id
		}, function(result)
      cb(result)
  end)
end)

RegisterCallback('ttyy_documents:deleteTemplate', function(source, cb, data)
  MySQL.Async.execute('DELETE FROM k5_document_templates WHERE id = @id', {
			['@id'] = data
		}, function(result)
      cb(result)
  end)
end)


RegisterCallback('ttyy_documents:getPlayerData', function(source, cb)
  local src = source
  local PlayerIdentifier = GetPlayerIdentifier(src)

  MySQL.Async.fetchAll(
    'SELECT firstname, lastname, dateofbirth FROM users WHERE identifier = @identifier', {
    ['@identifier'] = PlayerIdentifier
  }, function(result)
    cb(result[1])
  end)
end)

RegisterCallback('ttyy_documents:createDocument', function(source, cb, data)
  local src = source
  local PlayerIdentifier = GetPlayerIdentifier(src)

  MySQL.Async.insert('INSERT INTO ttyy_documents (data, ownerId, isCopy) VALUES (@data, @ownerId, @isCopy)', {
			['@data'] = data,
			['@ownerId'] = PlayerIdentifier,
			['@isCopy'] = json.decode(data).isCopy
		}, function(result)
      cb(result)
		end)
end)

RegisterServerEvent('ttyy_documents:createServerDocument')
AddEventHandler('ttyy_documents:createServerDocument', function(data)
  local src = source
  local PlayerIdentifier = GetPlayerIdentifier(src)
  data.createdAt = os.date()
  
  -- Example values. This data should be created on the
  -- client side and passed as the data parameter. You can
  -- delete this part.

  local firstname = "Thomas"
  local lastname = "Edison"

  local example_data = {
    name = "Vehicle Purchase Document",
    description = "This is an official purchase document",
    -- Any data that you can imagine. You can create up to 6 field sets.
    fields = {
      {
        name = "Firstname", 
        value = firstname -- Get the players firstname from the client
      },
      {
        name = "Lastname", 
        value = lastname -- Get the players lastname from the client
      },
      {
        name = "Vehicle Type", 
        value = "Nissan R35" -- Get the vehicle name from the client
      },
      {
        name = "Price", 
        value = "$100 000" -- Get the price from the client
      },
    },
    infoName = "INFORMATION",
    infoValue = "This vehicle was purchased by ".. firstname .. " " .. lastname .. ".\nThis paper is an official document that proves the original owner of the vehicle.",
    isCopy = true, -- This has to be true, so it shows up in the "My documents" tab
    issuer = {
      -- Any data that you can imagine. This can be a fake person, but the fields have to be the same (firstname, lastname, ...)
      firstname = "Simeon",
      lastname = "Yetarian",
      birthDate = "1954. 05. 26.",
      jobName = "Dealership Owner"
    }
  }

  -- DON'T DELETE THIS PART

  MySQL.Async.insert('INSERT INTO ttyy_documents (data, ownerId, isCopy) VALUES (@data, @ownerId, @isCopy)', {
			['@data'] = json.encode(data),
			['@ownerId'] = PlayerIdentifier,
			['@isCopy'] = true
		}, function(result)
		end)
end)

RegisterCallback('ttyy_documents:deleteDocument', function(source, cb, data)
  MySQL.Async.execute('DELETE FROM ttyy_documents WHERE id = @id', {
			['@id'] = data
		}, function(result)
      cb(result)
  end)
end)

RegisterServerEvent('ttyy_documents:giveCopy')
AddEventHandler('ttyy_documents:giveCopy', function(data, targetId)
  local src = source
  local tsrc = targetId

  local TPlayerIdentifier = GetPlayerIdentifier(tsrc)

  MySQL.Async.insert('INSERT INTO ttyy_documents (data, ownerId, isCopy) VALUES (@data, @ownerId, @isCopy)', {
    ['@data'] = json.encode(data),
    ['@ownerId'] = TPlayerIdentifier,
    ['@isCopy'] = true
  }, function(result)
    TriggerClientEvent("ttyy_documents:copyGave", src, data.name)
    TriggerClientEvent("ttyy_documents:copyReceived", tsrc, data.name)
  end)

end)

RegisterServerEvent("ttyy_documents:receiveDocument")
AddEventHandler("ttyy_documents:receiveDocument", function(data, targetId)
  local tsrc = targetId

  MySQL.Async.fetchAll('SELECT data FROM ttyy_documents WHERE id = @docId', {
    ['@docId'] = data.docId,
  }, function(result)
    TriggerClientEvent("ttyy_documents:viewDocument", tsrc, result[1])
  end)
end)


function GetPlayer(src)
  local Player
  if CurrentFramework == "esx" then
    Player = ESX.GetPlayerFromId(src)
  elseif CurrentFramework == "qb" then
    Player = QBCore.Functions.GetPlayer(src)
  end
  return Player
end

function GetPlayerIdentifier(src)
  local PlayerIdentifier
  if CurrentFramework == "esx" then
    PlayerIdentifier = ESX.GetPlayerFromId(src).identifier
  elseif CurrentFramework == "qb" then
    PlayerIdentifier = QBCore.Functions.GetPlayer(src).PlayerData.citizenid
  end
  return PlayerIdentifier
end

function GetPlayerJobName(src)
  local PlayerJobName
  if CurrentFramework == "esx" then
    PlayerJobName = ESX.GetPlayerFromId(src).job.name
  elseif CurrentFramework == "qb" then
    PlayerJobName = QBCore.Functions.GetPlayer(src).PlayerData.job.name
  end
  return PlayerJobName
end