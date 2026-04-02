
RegisterNetEvent("Seat:Shuffle")
AddEventHandler("Seat:Shuffle", function()
    ExecuteCommand("pindah")
end)

RegisterNetEvent("ttyy:pullbaju")
AddEventHandler("ttyy:pullbaju", function()
    ExecuteCommand("revertclothing")
end)

RegisterNetEvent("billing")
AddEventHandler("billing", function()
    ExecuteCommand("billingcok")
end)
RegisterNetEvent('ttyy_radmenu:identitas:showId')
AddEventHandler('ttyy_radmenu:identitas:showId', function()
    Citizen.Wait(0)
    TriggerServerEvent('jsfour-idcard:open', 'ktp', GetPlayerServerId(PlayerId()))
end)
RegisterNetEvent('ttyy_radmenu:identitas:giveId')
AddEventHandler('ttyy_radmenu:identitas:giveId', function()
    Citizen.Wait(0)
    local player, distance = ESX.Game.GetClosestPlayer()

    if distance ~= -1 and distance <= 3.0 then
      Citizen.Wait(2500)
      TriggerServerEvent('jsfour-idcard:open', 'ktp', GetPlayerServerId(player))
    else
        exports['ttyy_nuipack']:Negative('', 'Tidak Ada Warga Di Sekitar', 'top-right', 2500, true)
    end
end)
RegisterNetEvent('ttyy_radmenu:identitas:showDriving')
AddEventHandler('ttyy_radmenu:identitas:showDriving', function()
    Citizen.Wait(0)
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
end)
RegisterNetEvent('ttyy_radmenu:identitas:giveDriving')
AddEventHandler('ttyy_radmenu:identitas:giveDriving', function()
    Citizen.Wait(0)
    local player, distance = ESX.Game.GetClosestPlayer()

    if distance ~= -1 and distance <= 3.0 then
      Citizen.Wait(2500)
      TriggerServerEvent('jsfour-idcard:open', 'sim', GetPlayerServerId(player))
    else
       exports['ttyy_nuipack']:Negative('', 'Tidak Ada Warga Di Sekitar', 'top-right', 2500, true)
    end
end)
RegisterNetEvent('ttyy_radmenu:identitas:showFirearm')
AddEventHandler('ttyy_radmenu:identitas:showFirearm', function()
    Citizen.Wait(0)
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
end)
RegisterNetEvent('ttyy_radmenu:identitas:giveFirearm')
AddEventHandler('ttyy_radmenu:identitas:giveFirearm', function()
    Citizen.Wait(0)
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    Citizen.Wait(2500)
    TriggerServerEvent('jsfour-idcard:open', 'license', GetPlayerServerId(player))
  else
     exports['ttyy_nuipack']:Negative('', 'Tidak Ada Warga Di Sekitar', 'top-right', 2500, true)
  end
end)

RegisterNetEvent("kunciken")
AddEventHandler("kunciken", function()
    ExecuteCommand("kunci")
end)


RegisterNetEvent("ttyy:mesin")
AddEventHandler("ttyy:mesin", function()
    ExecuteCommand("engine")
end)

RegisterNetEvent("hood")
AddEventHandler("hood", function()
    ExecuteCommand("hood")
end)

RegisterNetEvent("trunk")
AddEventHandler("trunk", function()
    ExecuteCommand("trunk")
end)

RegisterNetEvent("front:L")
AddEventHandler("front:L", function()
    ExecuteCommand("frontleft")
end)

RegisterNetEvent("front:R")
AddEventHandler("front:R", function()
    ExecuteCommand("frontright")
end)

RegisterNetEvent("back:L")
AddEventHandler("back:L", function()
    ExecuteCommand("backleft")
end)

RegisterNetEvent("back:R")
AddEventHandler("back:R", function()
    ExecuteCommand("backright")
end)

RegisterNetEvent("hat:")
AddEventHandler("hat:", function()
    ExecuteCommand("HAT")
end)

RegisterNetEvent("mask:")
AddEventHandler("mask:", function()
    ExecuteCommand("mask")
end)

RegisterNetEvent("all:")
AddEventHandler("all:", function()
    ExecuteCommand("RESET")
end)

RegisterNetEvent("shirt:")
AddEventHandler("shirt:", function()
    ExecuteCommand("shirt")
end)

RegisterNetEvent("tas:")
AddEventHandler("tas:", function()
    ExecuteCommand("bag")
end)

RegisterNetEvent("ttyy:bukahp")
AddEventHandler("ttyy:bukahp", function()
    ExecuteCommand("phone")
end)

RegisterNetEvent("pants:")
AddEventHandler("pants:", function()
    ExecuteCommand("pants")
end)

RegisterNetEvent("shoes:")
AddEventHandler("shoes:", function()
    ExecuteCommand("shoes")
end)

RegisterNetEvent("ear:")
AddEventHandler("ear:", function()
    ExecuteCommand("ear")
end)

RegisterNetEvent("glasses:")
AddEventHandler("glasses:", function()
    ExecuteCommand("glasses")
end)

RegisterNetEvent("inv:")
AddEventHandler("inv:", function()
    ExecuteCommand("inv")
end)

RegisterNetEvent("billing")
AddEventHandler("billing", function()
    ExecuteCommand("invoices")
end)

RegisterNetEvent("storevehicle")
AddEventHandler("storevehicle", function()
    ExecuteCommand("storevehicle")
end)