local Races = {}
local AvailableRaces = {}
local LastRaces = {}
local NotFinished = {}

-- Functions

local function SecondsToClock(seconds)
    seconds = tonumber(seconds)
    local retval
    if seconds <= 0 then
        retval = "00:00:00";
    else
        local hours = string.format("%02.f", math.floor(seconds / 3600));
        local mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)));
        local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60));
        retval = hours .. ":" .. mins .. ":" .. secs
    end
    return retval
end

local function IsWhitelisted(identifier)
    local retval = false
    for _, cid in pairs(Config.WhitelistedCreators) do
        if cid == CitizeidentifiernId then
            retval = true
            break
        end
    end
    local Player = ESX.GetPlayerFromIdentifier(identifier)
    local Perms = Player.getGroup()
    if Perms == "admin" or Perms == "superadmin" then
        retval = true
    end
    return retval
end

local function IsNameAvailable(RaceName)
    local retval = true
    for RaceId, _ in pairs(Races) do
        if Races[RaceId].RaceName == RaceName then
            retval = false
            break
        end
    end
    return retval
end

local function HasOpenedRace(identifier)
    local retval = false
    for _, v in pairs(AvailableRaces) do
        if v.SetupCitizenId == identifier then
            retval = true
        end
    end
    return retval
end

local function GetOpenedRaceKey(RaceId)
    local retval = nil
    for k, v in pairs(AvailableRaces) do
        if v.RaceId == RaceId then
            retval = k
            break
        end
    end
    return retval
end

local function GetCurrentRace(identifier)
    local retval = nil
    for RaceId, _ in pairs(Races) do
        for cid, _ in pairs(Races[RaceId].Racers) do
            if cid == identifier then
                retval = RaceId
                break
            end
        end
    end
    return retval
end

local function GetRaceId(name)
    local retval = nil
    for k, v in pairs(Races) do
        if v.RaceName == name then
            retval = k
            break
        end
    end
    return retval
end

local function GenerateRaceId()
    local RaceId = "LR-" .. math.random(1111, 9999)
    while Races[RaceId] ~= nil do
        RaceId = "LR-" .. math.random(1111, 9999)
    end
    return RaceId
end

-- Events

RegisterNetEvent('logi_lapraces:server:FinishPlayer', function(RaceData, TotalTime, TotalLaps, BestLap)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local AvailableKey = GetOpenedRaceKey(RaceData.RaceId)
    local PlayersFinished = 0
    local AmountOfRacers = 0
    for _, v in pairs(Races[RaceData.RaceId].Racers) do
        if v.Finished then
            PlayersFinished = PlayersFinished + 1
        end
        AmountOfRacers = AmountOfRacers + 1
    end
    local BLap
    if TotalLaps < 2 then
        BLap = TotalTime
    else
        BLap = BestLap
    end
    if LastRaces[RaceData.RaceId] ~= nil then
        LastRaces[RaceData.RaceId][#LastRaces[RaceData.RaceId]+1] =  {
            TotalTime = TotalTime,
            BestLap = BLap,
            Holder = {
                [1] = Player.get('firstName'),
                [2] = Player.get('lastName')
            }
        }
    else
        LastRaces[RaceData.RaceId] = {}
        LastRaces[RaceData.RaceId][#LastRaces[RaceData.RaceId]+1] =  {
            TotalTime = TotalTime,
            BestLap = BLap,
            Holder = {
                [1] = Player.get('firstName'),
                [2] = Player.get('lastName')
            }
        }
    end
    if Races[RaceData.RaceId].Records ~= nil and next(Races[RaceData.RaceId].Records) ~= nil then
        if BLap < Races[RaceData.RaceId].Records.Time then
            Races[RaceData.RaceId].Records = {
                Time = BLap,
                Holder = {
                    [1] = Player.get('firstName'),
                    [2] = Player.get('lastName')
                }
            }
            MySQL.update('UPDATE lapraces SET records = ? WHERE raceid = ?',
                {json.encode(Races[RaceData.RaceId].Records), RaceData.RaceId})
            TriggerClientEvent('logi_phone:client:RaceNotify', src, 'You have won the WR from ' .. RaceData.RaceName ..
                ' disconnected with a time of: ' .. SecondsToClock(BLap) .. '!')
        end
    else
        Races[RaceData.RaceId].Records = {
            Time = BLap,
            Holder = {
                [1] = Player.get('firstName'),
                [2] = Player.get('lastName')
            }
        }
        MySQL.update('UPDATE lapraces SET records = ? WHERE raceid = ?',
            {json.encode(Races[RaceData.RaceId].Records), RaceData.RaceId})
        TriggerClientEvent('logi_phone:client:RaceNotify', src, 'You have won the WR from ' .. RaceData.RaceName ..
            ' put down with a time of: ' .. SecondsToClock(BLap) .. '!')
    end
    AvailableRaces[AvailableKey].RaceData = Races[RaceData.RaceId]
    TriggerClientEvent('logi_lapraces:client:PlayerFinishs', -1, RaceData.RaceId, PlayersFinished, Player.getName())
    if PlayersFinished == AmountOfRacers then
        if NotFinished ~= nil and next(NotFinished) ~= nil and NotFinished[RaceData.RaceId] ~= nil and
            next(NotFinished[RaceData.RaceId]) ~= nil then
            for _, v in pairs(NotFinished[RaceData.RaceId]) do
                LastRaces[RaceData.RaceId][#LastRaces[RaceData.RaceId]+1] = {
                    TotalTime = v.TotalTime,
                    BestLap = v.BestLap,
                    Holder = {
                        [1] = v.Holder[1],
                        [2] = v.Holder[2]
                    }
                }
            end
        end
        Races[RaceData.RaceId].LastLeaderboard = LastRaces[RaceData.RaceId]
        Races[RaceData.RaceId].Racers = {}
        Races[RaceData.RaceId].Started = false
        Races[RaceData.RaceId].Waiting = false
        table.remove(AvailableRaces, AvailableKey)
        LastRaces[RaceData.RaceId] = nil
        NotFinished[RaceData.RaceId] = nil
    end
    TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
end)

RegisterNetEvent('logi_lapraces:server:CreateLapRace', function(RaceName)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    if IsWhitelisted(Player.identifier) then
        if IsNameAvailable(RaceName) then
            TriggerClientEvent('logi_lapraces:client:StartRaceEditor', source, RaceName)
        else
            TriggerClientEvent('esx_showNotification', source, 'There is already a race with this name.')
        end
    else
        TriggerClientEvent('esx_showNotification', source, 'You have not been authorized to race\'s to create.')
    end
end)

RegisterNetEvent('logi_lapraces:server:JoinRace', function(RaceData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local RaceId = RaceData.RaceId
    local AvailableKey = GetOpenedRaceKey(RaceId)
    local CurrentRace = GetCurrentRace(Player.identifier)
    if CurrentRace ~= nil then
        local AmountOfRacers = 0
        local PreviousRaceKey = GetOpenedRaceKey(CurrentRace)
        for _, _ in pairs(Races[CurrentRace].Racers) do
            AmountOfRacers = AmountOfRacers + 1
        end
        Races[CurrentRace].Racers[Player.identifier] = nil
        if (AmountOfRacers - 1) == 0 then
            Races[CurrentRace].Racers = {}
            Races[CurrentRace].Started = false
            Races[CurrentRace].Waiting = false
            table.remove(AvailableRaces, PreviousRaceKey)
            TriggerClientEvent('esx_showNotification', src, 'You were the only one in the race, the race had ended')
            TriggerClientEvent('logi_lapraces:client:LeaveRace', src, Races[CurrentRace])
        else
            AvailableRaces[PreviousRaceKey].RaceData = Races[CurrentRace]
            TriggerClientEvent('logi_lapraces:client:LeaveRace', src, Races[CurrentRace])
        end
        TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
    end
    Races[RaceId].Waiting = true
    Races[RaceId].Racers[Player.identifier] = {
        Checkpoint = 0,
        Lap = 1,
        Finished = false
    }
    AvailableRaces[AvailableKey].RaceData = Races[RaceId]
    TriggerClientEvent('logi_lapraces:client:JoinRace', src, Races[RaceId], AvailableRaces[AvailableKey].Laps)
    TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
    local creatorsource = ESX.GetPlayerFromIdentifier(AvailableRaces[AvailableKey].SetupCitizenId).source
    if creatorsource ~= Player.source then
        TriggerClientEvent('logi_phone:client:RaceNotify', creatorsource,
            string.sub(Player.get('firstName'), 1, 1) .. '. ' .. Player.get('lastName') ..
                ' the race has been joined!')
    end
end)

RegisterNetEvent('logi_lapraces:server:LeaveRace', function(RaceData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local RaceName
    if RaceData.RaceData ~= nil then
        RaceName = RaceData.RaceData.RaceName
    else
        RaceName = RaceData.RaceName
    end
    local RaceId = GetRaceId(RaceName)
    local AvailableKey = GetOpenedRaceKey(RaceData.RaceId)
    local creatorsource = ESX.GetPlayerFromIdentifier(AvailableRaces[AvailableKey].SetupCitizenId).source
    if creatorsource ~= Player.source then
        TriggerClientEvent('logi_phone:client:RaceNotify', creatorsource,
            string.sub(Player.get('firstName'), 1, 1) .. '. ' .. Player.get('lastName') ..
                ' the race has been delivered!')
    end
    local AmountOfRacers = 0
    for _, _ in pairs(Races[RaceData.RaceId].Racers) do
        AmountOfRacers = AmountOfRacers + 1
    end
    if NotFinished[RaceData.RaceId] ~= nil then
        NotFinished[RaceData.RaceId][#NotFinished[RaceData.RaceId]+1] = {
            TotalTime = "DNF",
            BestLap = "DNF",
            Holder = {
                [1] = Player.get('firstName'),
                [2] = Player.get('lastName')
            }
        }
    else
        NotFinished[RaceData.RaceId] = {}
        NotFinished[RaceData.RaceId][#NotFinished[RaceData.RaceId]+1] = {
            TotalTime = "DNF",
            BestLap = "DNF",
            Holder = {
                [1] = Player.get('firstName'),
                [2] = Player.get('lastName')
            }
        }
    end
    Races[RaceId].Racers[Player.identifier] = nil
    if (AmountOfRacers - 1) == 0 then
        if NotFinished ~= nil and next(NotFinished) ~= nil and NotFinished[RaceId] ~= nil and next(NotFinished[RaceId]) ~=
            nil then
            for _, v in pairs(NotFinished[RaceId]) do
                if LastRaces[RaceId] ~= nil then
                    LastRaces[RaceId][#LastRaces[RaceId]+1] = {
                        TotalTime = v.TotalTime,
                        BestLap = v.BestLap,
                        Holder = {
                            [1] = v.Holder[1],
                            [2] = v.Holder[2]
                        }
                    }
                else
                    LastRaces[RaceId] = {}
                    LastRaces[RaceId][#LastRaces[RaceId]+1] = {
                        TotalTime = v.TotalTime,
                        BestLap = v.BestLap,
                        Holder = {
                            [1] = v.Holder[1],
                            [2] = v.Holder[2]
                        }
                    }
                end
            end
        end
        Races[RaceId].LastLeaderboard = LastRaces[RaceId]
        Races[RaceId].Racers = {}
        Races[RaceId].Started = false
        Races[RaceId].Waiting = false
        table.remove(AvailableRaces, AvailableKey)
        TriggerClientEvent('esx_showNotification', src, 'You were the only one in the race.The race had ended.')
        TriggerClientEvent('logi_lapraces:client:LeaveRace', src, Races[RaceId])
        LastRaces[RaceId] = nil
        NotFinished[RaceId] = nil
    else
        AvailableRaces[AvailableKey].RaceData = Races[RaceId]
        TriggerClientEvent('logi_lapraces:client:LeaveRace', src, Races[RaceId])
    end
    TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
end)

RegisterNetEvent('logi_lapraces:server:SetupRace', function(RaceId, Laps)
    local Player = ESX.GetPlayerFromId(source)
    if Races[RaceId] ~= nil then
        if not Races[RaceId].Waiting then
            if not Races[RaceId].Started then
                Races[RaceId].Waiting = true
                AvailableRaces[#AvailableRaces+1] = {
                    RaceData = Races[RaceId],
                    Laps = Laps,
                    RaceId = RaceId,
                    SetupCitizenId = Player.identifier
                }
                TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
                SetTimeout(5 * 60 * 1000, function()
                    if Races[RaceId].Waiting then
                        local AvailableKey = GetOpenedRaceKey(RaceId)
                        for cid, _ in pairs(Races[RaceId].Racers) do
                            local RacerData = ESX.GetPlayerFromIdentifier(cid)
                            if RacerData ~= nil then
                                TriggerClientEvent('logi_lapraces:client:LeaveRace', RacerData.source,
                                    Races[RaceId])
                            end
                        end
                        table.remove(AvailableRaces, AvailableKey)
                        Races[RaceId].LastLeaderboard = {}
                        Races[RaceId].Racers = {}
                        Races[RaceId].Started = false
                        Races[RaceId].Waiting = false
                        LastRaces[RaceId] = nil
                        TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
                    end
                end)
            else
                TriggerClientEvent('esx_showNotification', source, 'The race is already running')
            end
        else
            TriggerClientEvent('esx_showNotification', source, 'The race is already running')
        end
    else
        TriggerClientEvent('esx_showNotification', source, 'This race does not exist :(')
    end
end)

RegisterNetEvent('logi_lapraces:server:CancelRace', function(raceId)
    local src = source
    local Player = ESX.GetPlayerFromId(source)
    local AvailableKey = GetOpenedRaceKey(raceId)

    TriggerClientEvent('esx_showNotification', src, 'Stopping the race: ' .. raceId)

    if AvailableKey ~= nil then
        if AvailableRaces[AvailableKey].SetupCitizenId == Player.identifier then
            for cid, _ in pairs(Races[raceId].Racers) do
                local RacerData = ESX.GetPlayerFromIdentifier(cid)
                if RacerData ~= nil then
                    TriggerClientEvent('logi_lapraces:client:LeaveRace', RacerData.source, Races[raceId])
                end
            end

            table.remove(AvailableRaces, AvailableKey)
            Races[raceId].LastLeaderboard = {}
            Races[raceId].Racers = {}
            Races[raceId].Started = false
            Races[raceId].Waiting = false
            LastRaces[raceId] = nil
            TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
        end
    else
        TriggerClientEvent('esx_showNotification', src, 'Race not open: ' .. raceId, 'error')
    end
end)

RegisterNetEvent('logi_lapraces:server:UpdateRaceState', function(RaceId, Started, Waiting)
    Races[RaceId].Waiting = Waiting
    Races[RaceId].Started = Started
end)

RegisterNetEvent('logi_lapraces:server:UpdateRacerData', function(RaceId, Checkpoint, Lap, Finished)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local CitizenId = Player.identifier

    Races[RaceId].Racers[CitizenId].Checkpoint = Checkpoint
    Races[RaceId].Racers[CitizenId].Lap = Lap
    Races[RaceId].Racers[CitizenId].Finished = Finished

    TriggerClientEvent('logi_lapraces:client:UpdateRaceRacerData', -1, RaceId, Races[RaceId])
end)

RegisterNetEvent('logi_lapraces:server:StartRace', function(RaceId)
    local src = source
    local MyPlayer = ESX.GetPlayerFromId(src)
    local AvailableKey = GetOpenedRaceKey(RaceId)

    if RaceId ~= nil then
        if AvailableRaces[AvailableKey].SetupCitizenId == MyPlayer.identifier then
            AvailableRaces[AvailableKey].RaceData.Started = true
            AvailableRaces[AvailableKey].RaceData.Waiting = false
            for CitizenId, _ in pairs(Races[RaceId].Racers) do
                local Player = ESX.GetPlayerFromIdentifier(CitizenId)
                if Player ~= nil then
                    TriggerClientEvent('logi_lapraces:client:RaceCountdown', Player.source)
                end
            end
            TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
        else
            TriggerClientEvent('esx_showNotification', src, 'You are not the creator of the race..')
        end
    else
        TriggerClientEvent('esx_showNotification', src, 'You are not in a race..')
    end
end)

RegisterNetEvent('logi_lapraces:server:SaveRace', function(RaceData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local RaceId = GenerateRaceId()
    local Checkpoints = {}
    for k, v in pairs(RaceData.Checkpoints) do
        Checkpoints[k] = {
            offset = v.offset,
            coords = v.coords
        }
    end
    Races[RaceId] = {
        RaceName = RaceData.RaceName,
        Checkpoints = Checkpoints,
        Records = {},
        Creator = Player.identifier,
        RaceId = RaceId,
        Started = false,
        Waiting = false,
        Distance = math.ceil(RaceData.RaceDistance),
        Racers = {},
        LastLeaderboard = {}
    }
    MySQL.insert('INSERT INTO lapraces (name, checkpoints, creator, distance, raceid) VALUES (?, ?, ?, ?, ?)',
        {RaceData.RaceName, json.encode(Checkpoints), Player.identifier, RaceData.RaceDistance,
         GenerateRaceId()})
end)

-- Callbacks

ESX.RegisterServerCallback('logi_lapraces:server:GetRacingLeaderboards', function(_, cb)
    cb(Races)
end)

ESX.RegisterServerCallback('logi_lapraces:server:GetRaces', function(_, cb)
    cb(AvailableRaces)
end)

ESX.RegisterServerCallback('logi_lapraces:server:GetListedRaces', function(_, cb)
    cb(Races)
end)

ESX.RegisterServerCallback('logi_lapraces:server:GetRacingData', function(_, cb, RaceId)
    cb(Races[RaceId])
end)

ESX.RegisterServerCallback('logi_lapraces:server:HasCreatedRace', function(source, cb)
    cb(HasOpenedRace(ESX.GetPlayerFromId(source).identifier))
end)

ESX.RegisterServerCallback('logi_lapraces:server:IsAuthorizedToCreateRaces', function(source, cb, TrackName)
    cb(IsWhitelisted(ESX.GetPlayerFromId(source).identifier), IsNameAvailable(TrackName))
end)

ESX.RegisterServerCallback('logi_lapraces:server:CanRaceSetup', function(_, cb)
    cb(Config.RaceSetupAllowed)
end)

ESX.RegisterServerCallback('logi_lapraces:server:GetTrackData', function(_, cb, RaceId)
    local result = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {Races[RaceId].Creator})
    if result[1] ~= nil then
        result[1].charinfo = {
            firstName = result[1].firstname,
            lastName = result[1].lastname,
        }
        cb(Races[RaceId], result[1])
    else
        cb(Races[RaceId], {
            charinfo = {
                firstname = "Unknown",
                lastname = "Unknown"
            }
        })
    end
end)

-- Commands

RegisterCommand("cancelrace", function(source, args, rawCommand)
    local Player = ESX.GetPlayerFromId(source)

    if IsWhitelisted(Player.identifier) then
        local RaceName = table.concat(args, " ")
        if RaceName ~= nil then
            local RaceId = GetRaceId(RaceName)
            if Races[RaceId].Started then
                local AvailableKey = GetOpenedRaceKey(RaceId)
                for cid, _ in pairs(Races[RaceId].Racers) do
                    local RacerData = ESX.GetPlayerFromIdentifier(cid)
                    if RacerData ~= nil then
                        TriggerClientEvent('logi_lapraces:client:LeaveRace', RacerData.source, Races[RaceId])
                    end
                end
                table.remove(AvailableRaces, AvailableKey)
                Races[RaceId].LastLeaderboard = {}
                Races[RaceId].Racers = {}
                Races[RaceId].Started = false
                Races[RaceId].Waiting = false
                LastRaces[RaceId] = nil
                TriggerClientEvent('logi_phone:client:UpdateLapraces', -1)
            else
                TriggerClientEvent('esx_showNotification', source, 'This race has not started yet.')
            end
        end
    else
        TriggerClientEvent('esx_showNotification', source, 'You have not been authorized to do this.')
    end
end)

RegisterCommand("togglesetup", function(source, args, rawCommand)
    local Player = ESX.GetPlayerFromId(source)

    if IsWhitelisted(Player.identifier) then
        Config.RaceSetupAllowed = not Config.RaceSetupAllowed
        if not Config.RaceSetupAllowed then
            TriggerClientEvent('esx_showNotification', source, 'No more races can be created!')
        else
            TriggerClientEvent('esx_showNotification', source, 'Races can be created again!')
        end
    else
        TriggerClientEvent('esx_showNotification', source, 'You have not been authorized to do this.')
    end
end)

-- Threads

CreateThread(function()
    local races = MySQL.query.await('SELECT * FROM lapraces', {})
    if races[1] ~= nil then
        for _, v in pairs(races) do
            local Records = {}
            if v.records ~= nil then
                Records = json.decode(v.records)
            end
            Races[v.raceid] = {
                RaceName = v.name,
                Checkpoints = json.decode(v.checkpoints),
                Records = Records,
                Creator = v.creator,
                RaceId = v.raceid,
                Started = false,
                Waiting = false,
                Distance = v.distance,
                LastLeaderboard = {},
                Racers = {}
            }
        end
    end
end)
