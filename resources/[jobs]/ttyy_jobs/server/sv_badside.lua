ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('hope_badside:getOtherPlayerData', function(source, cb, target)
  local xPlayer = ESX.GetPlayerFromId(target)
  local identifier = GetPlayerIdentifiers(target)[1]
  local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
    ['@identifier'] = identifier
  })
  local user      = result[1]
  local firstname     = user['firstname']
  local lastname      = user['lastname']
  local sex           = user['sex']
  local dob           = user['dateofbirth']
  local height        = user['height'] .. " Inches"
  local data = {
    name        = GetPlayerName(target),
    job         = xPlayer.job,
    inventory   = xPlayer.inventory,
    accounts    = xPlayer.accounts,
    weapons     = xPlayer.loadout,
    firstname   = firstname,
    lastname    = lastname,
    sex         = sex,
    dob         = dob,
    height      = height
  }
  TriggerEvent('esx_status:getStatus', source, 'drunk', function(status)
    if status ~= nil then
      data.drunk = math.floor(status.percent)
    end
  end)

  TriggerEvent('esx_license:getLicenses', source, function(licenses)
    data.licenses = licenses
    cb(data)
  end)
end)