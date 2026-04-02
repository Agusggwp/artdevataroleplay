-- [ Code ] --

-- [ Commands ] --

ESX.RegisterCommand('login', 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('esx:playerLoaded', -1)
end, true, {help = 'Login'})

ESX.RegisterCommand(Config.Commands['MenuOpen'], 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('mc-admin/client/try-open-menu', xPlayer.source, false)
end, true, {help = Lang:t("info.keymapping_desc")})

ESX.RegisterCommand(Config.Commands['MenuDebug'], 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('mc-admin/client/toggle-debug', xPlayer.source, false)
end, true, {help = Lang:t("info.menu_debug")})

ESX.RegisterCommand(Config.Commands['MenuReset'], 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('mc-admin/client/reset-menu', -1, false)
end, true, {help = Lang:t("info.reset_data")})

ESX.RegisterCommand(Config.Commands['MenuPerms'], 'admin', function(xPlayer, args, showError)
    local Action = args.action
    local CommandId = args.commandid
    local Group = args.group ~= nil and args.group:lower() or false
    if Action ~= 'add' and Action ~= 'remove' and Action ~= 'list' then
        return TriggerClientEvent('esx:showNotification', xPlayer.source, Lang:t('info.invalid_action'))
    end
    TriggerClientEvent('mc-admin/client/do-perms-action', xPlayer.source, Action, CommandId, Group)
end, true, {help = Lang:t("info.menu_perms"), arguments = {
	{name = 'action', help = Lang:t('info.perm_action'), type = 'string'},
    {name = 'commandid', help = Lang:t('info.commandid'), type = 'string'},
    {name = 'group', help = Lang:t('info.rankid'), type = 'string'},
}})

RegisterCommand(Config.Commands['ReportNew'], function(playerId, args, rawCommand)
    local Message = table.concat(args, ' ')
    print(json.encode(args))
    if Message ~= nil then
        local ReportData = {
            ['Id'] = math.random(111111, 999999),
            ['ServerId'] = playerId,
            ['Chats'] = {
                {
                    ['Message'] = Message,
                    ['Time'] = CalculateTimeToDisplay(),
                    ['Sender'] = GetPlayerName(playerId),
                }
            },
        }
        TriggerClientEvent('mc-admin/client/send-report', playerId, ReportData)
    end
end, false)

RegisterCommand(Config.Commands['ReportChat'], function(playerId, args, rawCommand)
    local Message = table.concat(args, ' ')
    if Message ~= nil then
        TriggerClientEvent('mc-admin/client/reply-report', playerId, Message, CalculateTimeToDisplay())
    end
end)

ESX.RegisterCommand(Config.Commands['ReportClose'], 'user', function(xPlayer, args, showError)
    TriggerClientEvent('mc-admin/client/close-report', xPlayer.source)
end, true, {help = Lang:t("info.close_report")})

-- [ Console ] --

RegisterCommand(Config.Commands['APKick'], function(source, args, rawCommand)
    if source == 0 then
        local ServerId = tonumber(args[1])
        table.remove(args, 1)
        local Msg = table.concat(args, " ")
        DropPlayer(ServerId, Lang:t('info.kicked', {reason = Msg}))
    end
end, false)

RegisterCommand(Config.Commands['APAddItem'], function(source, args, rawCommand)
    if source == 0 then
        local ServerId, ItemName, ItemAmount = tonumber(args[1]), tostring(args[2]), tonumber(args[3])
        local xPlayer = ESX.GetPlayerFromId(ServerId)
        if xPlayer ~= nil then
            xPlayer.addInventoryItem(ItemName, ItemAmount)
            print(Lang:t('info.gaveitem', {amount = ItemAmount, name = ItemName}))
        end
    end
end, false)

RegisterCommand(Config.Commands['APAddMoney'], function(source, args, rawCommand)
    if source == 0 then
        local ServerId, Amount = tonumber(args[1]), tonumber(args[2])
        local xPlayer = ESX.GetPlayerFromId(ServerId)
        if xPlayer ~= nil then
            xPlayer.addAccountMoney('cash', Amount)
            print(Lang:t('info.gavemoney', {amount = Amount, moneytype = 'Cash'}))
        end
    end
end, false)

RegisterCommand(Config.Commands['APSetJob'], function(source, args, rawCommand)
    if source == 0 then
        local ServerId, JobName, Grade = tonumber(args[1]), tostring(args[2]), tonumber(args[3])
        local xPlayer = ESX.GetPlayerFromId(ServerId)
        if xPlayer ~= nil then
            xPlayer.setJob(JobName, Grade)
            print(Lang:t('info.setjob', {jobname = JobName}))
        end
    end
end, false)

RegisterCommand(Config.Commands['APRevive'], function(source, args, rawCommand)
    if source == 0 then
        local ServerId = tonumber(args[1])
        TriggerClientEvent('esx_ambulancejob:revive', ServerId)
        print(Lang:t('info.gave_revive'))
    end
end, false)