SpectateData = {}
local FrozenPlayers, GodmodeEnabled, CloakEnabled, StaminaEnabled, AmmoEnabled = {}, {}, {}, {}, {}

-- [ Code ] --

-- Remove this hihi
AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        local RandomColor = math.random(1, 9)
        print('^'..RandomColor..'███╗░░░███╗███████╗██████╗░░█████╗░██╗░░░██╗')
        print('^'..RandomColor..'████╗░████║██╔════╝██╔══██╗██╔══██╗╚██╗░██╔╝')
        print('^'..RandomColor..'██╔████╔██║█████╗░░██████╔╝██║░░╚═╝░╚████╔╝░')
        print('^'..RandomColor..'██║╚██╔╝██║██╔══╝░░██╔══██╗██║░░██╗░░╚██╔╝░░')
        print('^'..RandomColor..'██║░╚═╝░██║███████╗██║░░██║╚█████╔╝░░░██║░░░')
        print('^'..RandomColor..'╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░')
        print('^'..RandomColor..'𝘾𝙤𝙡𝙡𝙚𝙘𝙩𝙞𝙫𝙚 (dsc.gg/mercy-coll)')
        print('^'..RandomColor..'Thank you for purchasing this script! Enjoy! ^0')
    end
end)

-- [ Callbacks ] --

ESX.RegisterServerCallback('mc-adminmenu/server/get-permission', function(Source, cb)
    local Group = GetPermission(Source)
    cb(Group)
end)

ESX.RegisterServerCallback('mc-adminmenu/server/get-convar', function(source, cb, ConvarName)
    cb(GetConvar(ConvarName, 'none'))
end)

ESX.RegisterServerCallback('mc-adminmenu/server/get-items', function(source, cb)
    local Items = {}
    local ItemData = MySQL.query.await('SELECT * FROM items', {})
    for k, v in pairs(ItemData) do
        Items[#Items+1] = {
            ['name'] = v.name,
            ['label'] = v.label,
        } 
    end
    cb(Items)
end)

ESX.RegisterServerCallback('mc-adminmenu/server/get-jobs', function(source, cb)
    local Jobs = {}
    local JobData = MySQL.query.await('SELECT * FROM jobs', {})
    for k, v in pairs(JobData) do
        Jobs[#Jobs+1] = {
            ['name'] = v.name,
            ['label'] = v.label,
        } 
    end
    cb(Jobs)
end)

ESX.RegisterServerCallback('mc-adminmenu/server/get-vehicles', function(source, cb)
    local Vehicles = {}
    local VehData = MySQL.query.await('SELECT * FROM vehicles', {})
    for k, v in pairs(VehData) do
        Vehicles[#Vehicles+1] = {
            ['name'] = v.name,
            ['model'] = v.model,
            ['category'] = v.category,
        } 
    end
    cb(Vehicles)
end)

ESX.RegisterServerCallback('mc-admin/server/get-active-players-in-radius', function(Source, Cb, Coords, Radius)
	local Coords, Radius = Coords ~= nil and vector3(Coords.x, Coords.y, Coords.z) or GetEntityCoords(GetPlayerPed(Source)), Radius ~= nil and Radius or 5.0
    local ActivePlayers = {}
	for k, v in pairs(GetPlayers()) do
        local TargetCoords = GetEntityCoords(GetPlayerPed(v))
        local TargetDistance = #(TargetCoords - Coords)
        if TargetDistance <= Radius then
            ActivePlayers[#ActivePlayers + 1] = {
                ['ServerId'] = v,
                ['Name'] = GetPlayerName(v)
            }
        end
	end
	Cb(ActivePlayers)
end)

ESX.RegisterServerCallback('mc-admin/server/get-bans', function(source, Cb)
    local BanList = {}
    local BansData = MySQL.Sync.fetchAll('SELECT * FROM bans', {})
    if BansData and BansData[1] ~= nil then
        for k, v in pairs(BansData) do
            BanList[#BanList + 1] = {
                Text = v.name.." ("..v.banid..")",
                BanId = v.banid,
                Name = v.name,
                Reason = v.reason,
                Expires = os.date('*t', tonumber(v.expire)),
                BannedOn = os.date('*t', tonumber(v.bannedon)),
                BannedOnN = v.bannedon,
                BannedBy = v.bannedby,
                License = v.license ~= nil and v.license or v.steam,
                Discord = v.discord,
            }
        end
    end
    Cb(BanList)
end)

ESX.RegisterServerCallback('mc-admin/server/get-logs', function(source, Cb)
    local LogsList = {}
    local LogsData = MySQL.query.await('SELECT * FROM logs', {})
    if LogsData and LogsData[1] ~= nil then
        for k, v in pairs(LogsData) do
            LogsList[#LogsList + 1] = {
                Type = v.Type ~= nil and v.Type or "Unknown",
                Steam = v.Steam ~= nil and v.Steam  or "Unknown",
                Desc = v.Log ~= nil and v.Log or "Unknown",
                Date = v.Date ~= nil and v.Date or "Unknown",
                Cid = v.Cid ~= nil and v.Cid or "Unknown",
                Data = v.Data ~= nil and v.Data or "Unknown",
            }
        end
    end
    Cb(LogsList)
end)
 
ESX.RegisterServerCallback('mc-admin/server/get-players', function(source, Cb)
    local PlayerList = {}
    for i=1, #GetPlayers() do
        local Player = GetPlayers()[i]
        local Steam = GetIdentifier(Player, "steam")
        local License = GetIdentifier(Player, "license")
        PlayerList[#PlayerList + 1] = {
            ServerId = Player,
            Name = GetPlayerName(Player),
            Steam = Steam ~= nil and Steam or 'Not Found',
            License = License  ~= nil and License or Steam
        }
    end
    Cb(PlayerList)
end)

ESX.RegisterServerCallback('mc-admin/server/get-player-data', function(source, Cb, Identifier)
    local PlayerInfo = {}
    local TPlayer = GetPlayerFromIdentifier(Identifier)
    if TPlayer ~= nil then
        local Steam = GetIdentifier(TPlayer.source, "steam")
        PlayerInfo = {
            Name = GetPlayerName(TPlayer.source),
            Steam = Steam ~= nil and Steam or 'Not found',
            CharName = TPlayer.get('firstName')..' '..TPlayer.get('lastName'),
            Source = TPlayer.source,
            CitizenId = TPlayer.identifier
        }
        Cb(PlayerInfo)
    end
end)

ESX.RegisterServerCallback('mc-admin/server/get-date-difference', function(source, Cb, Bans, Type)
    local FilteredBans, BanAmount = GetDateDifference(Type, Bans) 
    Cb(FilteredBans, BanAmount)
end)

ESX.RegisterServerCallback("mc-admin/server/create-log", function(source, Cb, Type, Log, Data)
    if Type == nil or Log == nil then return end
    CreateLog(source, Type, Log, Data)
end)

-- [ Events ] --

AddEventHandler('playerConnecting', onPlayerConnecting)

RegisterNetEvent("mc-admin/server/try-open-menu", function(KeyPress)
    local src = source
    if not AdminCheck(src) then return end
    TriggerClientEvent('mc-admin/client/try-open-menu', src, KeyPress)
end)

-- User Commands

RegisterNetEvent("mc-admin/server/unban-player", function(BanId)
    local src = source
    if not AdminCheck(src) then return end

    local BanData = MySQL.query.await('SELECT * FROM bans WHERE banid = ?', {BanId})
    if BanData and BanData[1] ~= nil then
        MySQL.query('DELETE FROM bans WHERE banid = ?', {BanId})
        TriggerClientEvent('esx:showNotification', src, Lang:t('bans.unbanned'))
    else
        TriggerClientEvent('esx:showNotification', src, Lang:t('bans.not_banned'))
    end
end)

RegisterNetEvent("mc-admin/server/ban-player", function(ServerId, Expires, Reason)
    local src = source
    if not AdminCheck(src) then return end
    local License = GetIdentifier(ServerId, 'license')
    local Steam = GetIdentifier(ServerId, 'steam')
    local BanData = nil
    if License ~= nil then
        BanData = MySQL.query.await('SELECT * FROM bans WHERE license = ?', {License})
    else
        BanData = MySQL.query.await('SELECT * FROM bans WHERE steam = ?', {Steam})
    end
    if BanData and BanData[1] ~= nil then
        for k, v in pairs(BanData) do
            TriggerClientEvent('esx:showNotification', src, Lang:t('bans.already_banned', {player = GetPlayerName(ServerId), reason = v.reason}))
        end
    else
        local Expiring, ExpireDate = GetBanTime(Expires)
        local Time = os.time()
        local BanId = "BAN-"..math.random(11111, 99999)
        MySQL.insert('INSERT INTO bans (banid, name, steam, license, discord, ip, reason, bannedby, expire, bannedon) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', {
            BanId,
            GetPlayerName(ServerId),
            Steam,
            License,
            GetIdentifier(ServerId, 'discord'),
            GetIdentifier(ServerId, 'ip'),
            Reason,
            GetPlayerName(src),
            ExpireDate,
            Time,
        })
        TriggerClientEvent('esx:showNotification', src, Lang:t('bans.success_banned', {player = GetPlayerName(ServerId), reason = Reason}))
        local ExpireHours = tonumber(Expiring['hour']) < 10 and "0"..Expiring['hour'] or Expiring['hour']
        local ExpireMinutes = tonumber(Expiring['min']) < 10 and "0"..Expiring['min'] or Expiring['min']
        local ExpiringDate = Expiring['day'] .. '/' .. Expiring['month'] .. '/' .. Expiring['year'] .. ' | '..ExpireHours..':'..ExpireMinutes
        if Expires == "Permanent" then
            DropPlayer(ServerId,  Lang:t('bans.perm_banned', {reason = Reason}))
        else
            DropPlayer(ServerId, Lang:t('bans.banned', {reason = Reason, expires = ExpiringDate}))
        end
    end
end)

RegisterNetEvent("mc-admin/server/kick-all-players", function(Reason)
    local src = source
    if not AdminCheck(src) then return end
    for k, v in pairs(GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        if Player ~= nil then 
            DropPlayer(Player.source, Reason)
        end
    end
end)

RegisterNetEvent("mc-admin/server/kick-player", function(ServerId, Reason)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    DropPlayer(Source, Reason)
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.kicked'))
end)

RegisterNetEvent("mc-admin/server/set-money", function(ServerId, MoneyType, MoneyAmount)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    TPlayer.setAccountMoney(MoneyType, tonumber(MoneyAmount))
end)


RegisterNetEvent("mc-admin/server/give-money", function(ServerId, MoneyType, MoneyAmount)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    TPlayer.addAccountMoney(MoneyType, tonumber(MoneyAmount))
end)

RegisterNetEvent("mc-admin/server/give-item", function(ServerId, ItemName, ItemAmount)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    TPlayer.addInventoryItem(ItemName,  tonumber(ItemAmount))
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.gaveitem', {amount = ItemAmount, name = ItemName}))
end)

RegisterNetEvent("mc-admin/server/request-job", function(ServerId, JobName)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    TPlayer.setJob(JobName, 0)
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.setjob', {jobname = JobName}))
end)

RegisterNetEvent('mc-admin/server/start-spectate', function(ServerId)
    local src = source
    if not AdminCheck(src) then return end

    -- Check if Person exists
    local Target = GetPlayerPed(ServerId)
    if not Target then
        return TriggerClientEvent('esx:showNotification', src, Lang:t('spectate.not_found'))
    end

    -- Make Check for Spectating
    local SteamIdentifier =GetIdentifier(src, "steam")
    if SpectateData[SteamIdentifier] ~= nil then
        SpectateData[SteamIdentifier]['Spectating'] = true
    else
        SpectateData[SteamIdentifier] = {}
        SpectateData[SteamIdentifier]['Spectating'] = true
    end

    local tgtCoords = GetEntityCoords(Target)
    TriggerClientEvent('Mercy/client/specPlayer', src, ServerId, tgtCoords)
end)

RegisterNetEvent('mc-admin/server/stop-spectate', function()
    local src = source
    if not AdminCheck(src) then return end

    local SteamIdentifier = GetIdentifier(src, "steam")
    if SpectateData[SteamIdentifier] ~= nil and SpectateData[SteamIdentifier]['Spectating'] then
        SpectateData[SteamIdentifier]['Spectating'] = false
    end
end)

RegisterNetEvent("mc-admin/server/drunk", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/drunk', Source)
end)

RegisterNetEvent("mc-admin/server/animal-attack", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/animal-attack', Source)
end)

RegisterNetEvent("mc-admin/server/set-fire", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/set-fire', Source)
end)

RegisterNetEvent("mc-admin/server/fling-player", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/fling-player', Source)
end)

RegisterNetEvent("mc-admin/server/play-sound", function(ServerId, SoundId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/play-sound', Source, SoundId)
end)

-- Utility Commands

RegisterNetEvent("mc-admin/server/toggle-blips", function()
    local src = source
    if not AdminCheck(src) then return end
    local BlipData = {}
    for k, v in pairs(GetPlayers()) do
        BlipData[#BlipData + 1] = {
            ServerId = v,
            Name = GetPlayerName(v),
            Coords = GetEntityCoords(GetPlayerPed(v)),
        }
    end
    TriggerClientEvent('mc-admin/client/UpdatePlayerBlips', src, BlipData)
end)


RegisterNetEvent("mc-admin/server/teleport-all", function()
    local src = source
    if not AdminCheck(src) then return end
    
    local SourcePlayer = ESX.GetPlayerFromId(src)
    for k, v in pairs(GetPlayers()) do
        local TPlayer = ESX.GetPlayerFromId(v)
        if SourcePlayer ~= nil and TPlayer ~= nil then 
            if string.sub(SourcePlayer.identifier, 7, SourcePlayer.identifier.length) ~= TPlayer.identifier then
                local SourceCoords = GetEntityCoords(GetPlayerPed(src))
                TriggerClientEvent('mc-admin/client/teleport-player', v, SourceCoords)
            end
        end
    end
end)

RegisterNetEvent("mc-admin/server/teleport-player", function(ServerId, Type)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local Msg = ""
    if Type == 'Goto' then
        Msg = Lang:t('info.teleported_to') 
        local TCoords = GetEntityCoords(GetPlayerPed(Source))
        TriggerClientEvent('mc-admin/client/teleport-player', src, TCoords)
    elseif Type == 'Bring' then
        Msg = Lang:t('info.teleported_brought')
        local Coords = GetEntityCoords(GetPlayerPed(src))
        TriggerClientEvent('mc-admin/client/teleport-player', Source, Coords)
    end
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.teleported', {tpmsg = Msg}), 'success')
end)

RegisterNetEvent("mc-admin/server/chat-say", function(Message)
    TriggerClientEvent('chat:addMessage', -1, {
        template = "<div class=chat-message server'><strong>"..Lang:t('info.announcement').." | </strong> {0}</div>",
        args = {Message}
    })
end)

-- Player Commands

RegisterNetEvent("mc-admin/server/kill", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/kill-player', Source)
end)

RegisterNetEvent("mc-admin/server/delete-area", function(Type, Radius)
    local src = source
    if not AdminCheck(src) then return end

    TriggerClientEvent('mc-admin/client/delete-area', src, Type, Radius)
end)

RegisterNetEvent("mc-admin/server/freeze-player", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        FrozenPlayers[TPlayer.identifier] = not FrozenPlayers[TPlayer.identifier]
        local Msg = FrozenPlayers[TPlayer.identifier] and Lang:t("info.gave_freeze", {frozenmsg =  Lang:t('commands.frozen')}) or Lang:t("info.gave_freeze", {frozenmsg =  Lang:t('commands.unfrozen')})
        TriggerClientEvent('esx:showNotification', src, Msg)
        TriggerClientEvent('mc-admin/client/freeze-player', Source, FrozenPlayers[TPlayer.identifier])
    end
end)

RegisterNetEvent("mc-admin/server/toggle-infinite-ammo", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        AmmoEnabled[TPlayer.identifier] = not AmmoEnabled[TPlayer.identifier]
        local Msg = AmmoEnabled[TPlayer.identifier] and Lang:t("commands.enabled") or Lang:t("commands.disabled")
        TriggerClientEvent('esx:showNotification', src, 'Infinite Ammo '..Msg)
        TriggerClientEvent('mc-admin/client/toggle-infinite-ammo', Source, AmmoEnabled[TPlayer.identifier])
    end
end)

RegisterNetEvent("mc-admin/server/toggle-infinite-stamina", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        StaminaEnabled[TPlayer.identifier] = not StaminaEnabled[TPlayer.identifier]
        local Msg = StaminaEnabled[TPlayer.identifier] and Lang:t("commands.enabled") or Lang:t("commands.disabled")
        TriggerClientEvent('esx:showNotification', src, 'Infinite Stamina '..Msg)
        TriggerClientEvent('mc-admin/client/toggle-infinite-stamina', Source, StaminaEnabled[TPlayer.identifier])
    end
end)

RegisterNetEvent("mc-admin/server/toggle-cloak", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        CloakEnabled[TPlayer.identifier] = not CloakEnabled[TPlayer.identifier]
        local Msg = CloakEnabled[TPlayer.identifier] and Lang:t("commands.enabled") or Lang:t("commands.disabled")
        TriggerClientEvent('esx:showNotification', src, 'Cloak '..Msg)
        TriggerClientEvent('mc-admin/client/toggle-cloak', Source, CloakEnabled[TPlayer.identifier])
    end
end)

RegisterNetEvent("mc-admin/server/toggle-godmode", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        GodmodeEnabled[TPlayer.identifier] = not GodmodeEnabled[TPlayer.identifier]
        local Msg = GodmodeEnabled[TPlayer.identifier] and Lang:t('commands.enabled') or Lang:t('commands.disabled')
        TriggerClientEvent('esx:showNotification', src, 'Godmode '..Msg)
        TriggerClientEvent('mc-admin/client/toggle-godmode', Source, GodmodeEnabled[TPlayer.identifier])
    end
end)

RegisterNetEvent("mc-admin/server/set-food-drink", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('esx_status:add', Source, 'hunger', 1000000)
    TriggerClientEvent('esx_status:add', Source, 'thirst', 1000000)
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.gave_needs'))
end)

RegisterNetEvent("mc-admin/server/set-armor", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    if TPlayer ~= nil then
        SetPedArmour(GetPlayerPed(Source), 100)
        TriggerClientEvent('esx:showNotification', src, Lang:t('info.gave_armor'))
    end
end)

RegisterNetEvent("mc-admin/server/reset-skin", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    local TPlayer = ESX.GetPlayerFromId(Source)
    MySQL.query('SELECT skin FROM users WHERE identifier = @identifier', {
		['@identifier'] = TPlayer.identifier
	}, function(users)
		local user, skin = users[1]
		if user.skin then
			skin = json.decode(user.skin)
		end
		TriggerClientEvent('skinchanger:loadSkin', Source, skin)
	end)
end)

RegisterNetEvent("mc-admin/server/set-model", function(ServerId, Model)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('mc-admin/client/set-model', Source, Model)
end)

RegisterNetEvent("mc-admin/server/revive-all", function()
    local src = source
    if not AdminCheck(src) then return end

    for k, v in pairs(GetPlayers()) do
		local Player = ESX.GetPlayerFromId(v)
		if Player ~= nil then
            TriggerClientEvent('esx_ambulancejob:revive', v)
		end
	end
end)

RegisterNetEvent("mc-admin/server/revive-in-distance", function(Radius)
    local src = source
    if not AdminCheck(src) then return end

    local Coords, Radius = GetEntityCoords(GetPlayerPed(src)), Radius ~= nil and tonumber(Radius) or 5.0
	for k, v in pairs(GetPlayers()) do
		local Player = ESX.GetPlayerFromId(v)
		if Player ~= nil then
			local TargetCoords = GetEntityCoords(GetPlayerPed(v))
			local TargetDistance = #(TargetCoords - Coords)
			if TargetDistance <= Radius then
                TriggerClientEvent('esx_ambulancejob:revive', v)
			end
		end
	end
end)

RegisterNetEvent("mc-admin/server/revive-target", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('esx_ambulancejob:revive', Source)
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.gave_revive'), 'success')
end)

RegisterNetEvent("mc-admin/server/open-clothing", function(ServerId)
    local src = source
    if not AdminCheck(src) then return end
    local Source = ServerId ~= nil and ServerId or src
    TriggerClientEvent('esx_skin:openSaveableMenu', Source)
    TriggerClientEvent('esx:showNotification', src, Lang:t('info.gave_clothing'), 'success')
end)


RegisterNetEvent('mc-admin/server/sync-chat-data', function(Type, Data, UpdateDelay)
    UpdateDelay = UpdateDelay == nil and false or UpdateDelay
    if Type == 'Staffchat' then 
        Config.StaffChat = Data 
    else 
        Config.Reports = Data 
    end
    TriggerClientEvent('mc-admin/client/sync-chat-data', -1, Type, Type == 'Staffchat' and Config.StaffChat or Config.Reports, UpdateDelay)
end)

RegisterNetEvent("mc-admin/server/send-chat-report", function(ServerId, Message)
    TriggerClientEvent('chatMessage', ServerId, '', { 255, 255, 255 }, Message)
end)