local LOGIPhone = {}
local Tweets = {}
local AppAlerts = {}
local MentionedTweets = {}
local Hashtags = {}
local Calls = {}
local Adverts = {}
local GeneratedPlates = {}
local WebHook = "https://discord.com/api/webhooks/1019939805536194602/k-TIy1H66hKMYZy2UDL_Pnfrncr4a_hLQHhoqhlpp2LbAeoxcokosV8xBbyC_VE9o9UP"
local bannedCharacters = {'%','$',';'}

-- Functions

local function GetOnlineStatus(number)
    local Target = ESX.GetPlayerByPhone(number)
    local retval = false
    if Target ~= nil then
        retval = true
    end
    return retval
end

local function GenerateMailId()
    return math.random(620000, 629999)
end

local function escape_sqli(source)
    local replacements = {
        ['"'] = '\\"',
        ["'"] = "\\'"
    }
    return source:gsub("['\"]", replacements)
end

local function round(num, numDecimalPlaces)
    if numDecimalPlaces and numDecimalPlaces > 0 then
        local mult = 10 ^ numDecimalPlaces
        return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
end

function LOGIPhone.AddMentionedTweet(citizenid, TweetData)
    if MentionedTweets[citizenid] == nil then
        MentionedTweets[citizenid] = {}
    end
    MentionedTweets[citizenid][#MentionedTweets[citizenid]+1] = TweetData
end

function LOGIPhone.SetPhoneAlerts(citizenid, app, alerts)
    if citizenid ~= nil and app ~= nil then
        if AppAlerts[citizenid] == nil then
            AppAlerts[citizenid] = {}
            if AppAlerts[citizenid][app] == nil then
                if alerts == nil then
                    AppAlerts[citizenid][app] = 1
                else
                    AppAlerts[citizenid][app] = alerts
                end
            end
        else
            if AppAlerts[citizenid][app] == nil then
                if alerts == nil then
                    AppAlerts[citizenid][app] = 1
                else
                    AppAlerts[citizenid][app] = 0
                end
            else
                if alerts == nil then
                    AppAlerts[citizenid][app] = AppAlerts[citizenid][app] + 1
                else
                    AppAlerts[citizenid][app] = AppAlerts[citizenid][app] + 0
                end
            end
        end
    end
end

local function SplitStringToArray(string)
    local retval = {}
    for i in string.gmatch(string, "%S+") do
        retval[#retval+1] = i
    end
    return retval
end

local function GenerateOwnerName()
    local names = {
        [1] = {
            name = "Jan Bloksteen",
            citizenid = "DSH091G93"
        },
        [2] = {
            name = "Jay Dendam",
            citizenid = "AVH09M193"
        },
        [3] = {
            name = "Ben Klaariskees",
            citizenid = "DVH091T93"
        },
        [4] = {
            name = "Karel Bakker",
            citizenid = "GZP091G93"
        },
        [5] = {
            name = "Klaas Adriaan",
            citizenid = "DRH09Z193"
        },
        [6] = {
            name = "Nico Wolters",
            citizenid = "KGV091J93"
        },
        [7] = {
            name = "Mark Hendrickx",
            citizenid = "ODF09S193"
        },
        [8] = {
            name = "Bert Johannes",
            citizenid = "KSD0919H3"
        },
        [9] = {
            name = "Karel de Grote",
            citizenid = "NDX091D93"
        },
        [10] = {
            name = "Jan Pieter",
            citizenid = "ZAL0919X3"
        },
        [11] = {
            name = "Huig Roelink",
            citizenid = "ZAK09D193"
        },
        [12] = {
            name = "Corneel Boerselman",
            citizenid = "POL09F193"
        },
        [13] = {
            name = "Hermen Klein Overmeen",
            citizenid = "TEW0J9193"
        },
        [14] = {
            name = "Bart Rielink",
            citizenid = "YOO09H193"
        },
        [15] = {
            name = "Antoon Henselijn",
            citizenid = "QBC091H93"
        },
        [16] = {
            name = "Aad Keizer",
            citizenid = "YDN091H93"
        },
        [17] = {
            name = "Thijn Kiel",
            citizenid = "PJD09D193"
        },
        [18] = {
            name = "Henkie Krikhaar",
            citizenid = "RND091D93"
        },
        [19] = {
            name = "Teun Blaauwkamp",
            citizenid = "QWE091A93"
        },
        [20] = {
            name = "Dries Stielstra",
            citizenid = "KJH0919M3"
        },
        [21] = {
            name = "Karlijn Hensbergen",
            citizenid = "ZXC09D193"
        },
        [22] = {
            name = "Aafke van Daalen",
            citizenid = "XYZ0919C3"
        },
        [23] = {
            name = "Door Leeferds",
            citizenid = "ZYX0919F3"
        },
        [24] = {
            name = "Nelleke Broedersen",
            citizenid = "IOP091O93"
        },
        [25] = {
            name = "Renske de Raaf",
            citizenid = "PIO091R93"
        },
        [26] = {
            name = "Krisje Moltman",
            citizenid = "LEK091X93"
        },
        [27] = {
            name = "Mirre Steevens",
            citizenid = "ALG091Y93"
        },
        [28] = {
            name = "Joosje Kalvenhaar",
            citizenid = "YUR09E193"
        },
        [29] = {
            name = "Mirte Ellenbroek",
            citizenid = "SOM091W93"
        },
        [30] = {
            name = "Marlieke Meilink",
            citizenid = "KAS09193"
        }
    }
    return names[math.random(1, #names)]
end

-- Callbacks

ESX.RegisterServerCallback('logi_phone:server:GetCallState', function(source, cb, ContactData)
    local Target = ESX.GetPlayerByPhone(ContactData.number)
    if Target ~= nil then
        if Calls[Target.identifier] ~= nil then
            if Calls[Target.identifier].inCall then
                print("false, true")
                cb(false, true)
            else
                print("true, true")
                cb(true, true)
            end
        else
            print("true, true")
            cb(true, true)
        end
    else
        print("false, false")
        cb(false, false)
    end
end)

ESX.RegisterServerCallback('logi_phone:server:GetPhoneData', function(source, cb)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if Player ~= nil then
        local PhoneData = {
            Applications = {},
            PlayerContacts = {},
            MentionedTweets = {},
            Chats = {},
            Hashtags = {},
            Invoices = {},
            Garage = {},
            Mails = {},
            Adverts = {},
            Tweets = {},
            Images = {},
            InstalledApps = {}
        }
        PhoneData.Adverts = Adverts

        local result = MySQL.query.await('SELECT * FROM player_contacts WHERE identifier = ? ORDER BY name ASC', {Player.identifier})
        local Contacts = {}
        if result[1] ~= nil then
            for k, v in pairs(result) do
                v.status = GetOnlineStatus(v.number)
            end

            PhoneData.PlayerContacts = result
        end

        local invoices = MySQL.query.await('SELECT * FROM phone_invoices WHERE identifier = ?', {Player.identifier})
        if invoices[1] ~= nil then
            for k, v in pairs(invoices) do
                local Ply = ESX.GetPlayerFromIdentifier(v.sender)
                if Ply ~= nil then
                    v.number = Ply.get('phonedata').phone_number
                else
                    local res = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {v.sender})
                    if res[1] ~= nil then
                        v.number = res[1].phone_number
                    else
                        v.number = nil
                    end
                end
            end
            PhoneData.Invoices = invoices
        end

        local garageresult = MySQL.query.await('SELECT * FROM owned_vehicles WHERE owner = ?', {Player.identifier})
        if garageresult[1] ~= nil then
            PhoneData.Garage = garageresult
        end

        local messages = MySQL.query.await('SELECT * FROM phone_messages WHERE identifier = ?', {Player.identifier})
        if messages ~= nil and next(messages) ~= nil then
            PhoneData.Chats = messages
        end

        if AppAlerts[Player.identifier] ~= nil then
            PhoneData.Applications = AppAlerts[Player.identifier]
        end

        if MentionedTweets[Player.identifier] ~= nil then
            PhoneData.MentionedTweets = MentionedTweets[Player.identifier]
        end

        if Hashtags ~= nil and next(Hashtags) ~= nil then
            PhoneData.Hashtags = Hashtags
        end

        local Tweets = MySQL.query.await('SELECT * FROM phone_tweets WHERE `date` > NOW() - INTERVAL ? hour', {Config.TweetDuration})

        if Tweets ~= nil and next(Tweets) ~= nil then
            PhoneData.Tweets = Tweets
        end

        local mails = MySQL.query.await('SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` ASC', {Player.identifier})
        if mails[1] ~= nil then
            for k, v in pairs(mails) do
                if mails[k].button ~= nil then
                    mails[k].button = json.decode(mails[k].button)
                end
            end
            PhoneData.Mails = mails
        end
        local images = MySQL.query.await('SELECT * FROM phone_gallery WHERE identifier = ? ORDER BY `date` DESC',{Player.identifier})
        if images ~= nil and next(images) ~= nil then
            PhoneData.Images = images
        end
        cb(PhoneData)
    end
end)

ESX.RegisterServerCallback('logi_phone:server:PayInvoice', function(source, cb, society, amount, invoiceId, sendercitizenid)
    local Invoices = {}
    local Ply = ESX.GetPlayerFromId(source)
    local SenderPly = ESX.GetPlayerFromIdentifier(sendercitizenid)
    local invoiceMailData = {}
    if SenderPly and Config.BillingCommissions[society] then
        local commission = round(amount * Config.BillingCommissions[society])
        SenderPly.addAccountMoney('bank', commission)
        invoiceMailData = {
            sender = 'Billing Department',
            subject = 'Commission Received',
            message = string.format('You received a commission check of $%s when %s %s paid a bill of $%s.', commission, Ply.get('firstName'), Ply.get('lastName'), amount)
        }
    elseif not SenderPly and Config.BillingCommissions[society] then
        invoiceMailData = {
            sender = 'Billing Department',
            subject = 'Bill Paid',
            message = string.format('%s %s paid a bill of $%s', Ply.get('firstName'), Ply.lastname, amount)
        }
    end
    Ply.removeAccountMoney('bank', amount)
    TriggerEvent('logi_phone:server:sendNewMailToOffline', sendercitizenid, invoiceMailData)
    TriggerEvent("qb-bossmenu:server:addAccountMoney", society, amount)
    MySQL.query('DELETE FROM phone_invoices WHERE id = ?', {invoiceId})
    local invoices = MySQL.query.await('SELECT * FROM phone_invoices WHERE identifier = ?', {Ply.identifier})
    if invoices[1] ~= nil then
        Invoices = invoices
    end
    cb(true, Invoices)
end)

ESX.RegisterServerCallback('logi_phone:server:DeclineInvoice', function(source, cb, sender, amount, invoiceId)
    local Invoices = {}
    local Ply = ESX.GetPlayerFromId(source)
    MySQL.query('DELETE FROM phone_invoices WHERE id = ?', {invoiceId})
    local invoices = MySQL.query.await('SELECT * FROM phone_invoices WHERE identifier = ?', {Ply.identifier})
    if invoices[1] ~= nil then
        Invoices = invoices
    end
    cb(true, Invoices)
end)

ESX.RegisterServerCallback('logi_phone:server:GetContactPictures', function(source, cb, Chats)
    for k, v in pairs(Chats) do
        local Player = ESX.GetPlayerByPhone(v.number)

        local query = v.number
        local result = MySQL.query.await('SELECT * FROM users WHERE phone_number = ?', {query})
        if result[1] ~= nil then
            local MetaData = json.decode(result[1].metadata)

            if MetaData.profilepicture ~= nil then
                v.picture = MetaData.profilepicture
            else
                v.picture = "default"
            end
        end
    end
    SetTimeout(100, function()
        cb(Chats)
    end)
end)

ESX.RegisterServerCallback('logi_phone:server:GetContactPicture', function(source, cb, Chat)
    local query = Chat.number
    local result = MySQL.query.await('SELECT * FROM users WHERE phone_number = ?', {query})
    if result[1] then
        local MetaData = json.decode(result[1].metadata)
        if MetaData.profilepicture ~= nil then
            Chat.picture = MetaData.profilepicture
        else
            Chat.picture = "default"
        end
    else
        Chat.picture = "default"
    end
    SetTimeout(100, function()
        cb(Chat)
    end)
end)

ESX.RegisterServerCallback('logi_phone:server:GetPicture', function(source, cb, number)
    local Picture = nil
    local query = number
    local result = MySQL.query.await('SELECT * FROM users WHERE phone_number = ?', {query})
    if result[1] ~= nil then
        local MetaData = json.decode(result[1].metadata)
        if MetaData.profilepicture ~= nil then
            Picture = MetaData.profilepicture
        else
            Picture = "default"
        end
        cb(Picture)
    else
        cb(nil)
    end
end)

ESX.RegisterServerCallback('logi_phone:server:FetchResult', function(source, cb, search)
    local search = escape_sqli(search)
    local searchData = {}
    local ApaData = {}
    print(search)
    local query = 'SELECT * FROM `users` WHERE `identifier` = "' .. search .. '"'
    --local searchParameters = SplitStringToArray(search)
    --if #searchParameters > 1 then
    --    query = query .. ' OR `charinfo` LIKE "%' .. searchParameters[1] .. '%"'
    --    for i = 2, #searchParameters do
    --        query = query .. ' AND `charinfo` LIKE  "%' .. searchParameters[i] .. '%"'
    --    end
    --else
    --    query = query .. ' OR `charinfo` LIKE "%' .. search .. '%"'
    --end
    --local ApartmentData = MySQL.query.await('SELECT * FROM apartments', {})
    --for k, v in pairs(ApartmentData) do
    --    ApaData[v.citizenid] = ApartmentData[k]
    --end
    local result = MySQL.query.await(query)
    if result[1] ~= nil then
        for k, v in pairs(result) do
            --local charinfo = json.decode(v.charinfo)
            --local metadata = json.decode(v.metadata)
            --local appiepappie = {}
            --if ApaData[v.citizenid] ~= nil and next(ApaData[v.citizenid]) ~= nil then
            --    appiepappie = ApaData[v.citizenid]
            --end
            searchData[#searchData+1] = {
                citizenid = v.identifier,
                firstname = v.firstname,
                lastname = v.lastname,
                birthdate = v.dateofbirth,
                phone = v.phone_number,
                nationality = 'Indonesia',
                gender = v.sex,
                warrant = false,
                driverlicense = {},
                appartmentdata = {}
            }
        end
        cb(searchData)
    else
        cb(nil)
    end
end)

ESX.RegisterServerCallback('logi_phone:server:GetVehicleSearchResults', function(source, cb, search)
    local search = escape_sqli(search)
    local searchData = {}
    local query = search
    local result = MySQL.query.await('SELECT * FROM owned_vehicles WHERE plate = ? OR owner = ?',
        {query, search})
    if result[1] ~= nil then
        for k, v in pairs(result) do
            local player = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {result[k].identifier})
            if player[1] ~= nil then
                --local charinfo = json.decode(player[1].charinfo)
                --[[local vehicleInfo = QBCore.Shared.Vehicles[result[k].vehicle]
                if vehicleInfo ~= nil then
                    searchData[#searchData+1] = {
                        plate = result[k].plate,
                        status = true,
                        owner = charinfo.firstname .. " " .. charinfo.lastname,
                        citizenid = result[k].citizenid,
                        label = vehicleInfo["name"]
                    }
                else--]]
                    searchData[#searchData+1] = {
                        plate = result[k].plate,
                        status = true,
                        owner = player[1].firstname .. " " .. player[1].lastname,
                        citizenid = result[k].identifier,
                        label = "Name not found.."
                    }
                --end
            end
        end
    else
        if GeneratedPlates[search] ~= nil then
            searchData[#searchData+1] = {
                plate = GeneratedPlates[search].plate,
                status = GeneratedPlates[search].status,
                owner = GeneratedPlates[search].owner,
                citizenid = GeneratedPlates[search].citizenid,
                label = "Brand unknown.."
            }
        else
            local ownerInfo = GenerateOwnerName()
            GeneratedPlates[search] = {
                plate = search,
                status = true,
                owner = ownerInfo.name,
                citizenid = ownerInfo.citizenid
            }
            searchData[#searchData+1] = {
                plate = search,
                status = true,
                owner = ownerInfo.name,
                citizenid = ownerInfo.citizenid,
                label = "Brand unknown.."
            }
        end
    end
    cb(searchData)
end)

ESX.RegisterServerCallback('logi_phone:server:ScanPlate', function(source, cb, plate)
    local src = source
    local vehicleData = {}
    if plate ~= nil then
        local result = MySQL.query.await('SELECT * FROM owned_vehicles WHERE plate = ?', {plate})
        if result[1] ~= nil then
            local player = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {result[1].identifier})
            vehicleData = {
                plate = plate,
                status = true,
                owner = player[1].firstname .. " " .. player[1].lastname,
                citizenid = result[1].identifier
            }
        elseif GeneratedPlates ~= nil and GeneratedPlates[plate] ~= nil then
            vehicleData = GeneratedPlates[plate]
        else
            local ownerInfo = GenerateOwnerName()
            GeneratedPlates[plate] = {
                plate = plate,
                status = true,
                owner = ownerInfo.name,
                citizenid = ownerInfo.citizenid
            }
            vehicleData = {
                plate = plate,
                status = true,
                owner = ownerInfo.name,
                citizenid = ownerInfo.citizenid
            }
        end
        cb(vehicleData)
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, 'No Vehicle Nearby')
        cb(nil)
    end
end)

local function GetGarageNamephone(name)
    return false
end

ESX.RegisterServerCallback('logi_phone:server:GetGarageVehicles', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    local Vehicles = {}
    local result = MySQL.query.await('SELECT * FROM owned_vehicles WHERE owner = ?', {Player.identifier})
    if result[1] ~= nil then
        for k, v in pairs(result) do
            local VehicleGarage = "None"
            local VehicleState = "None"
            local vehdata = json.decode(v.vehicle)
            if v.garage ~= nil then
                if GetGarageNamephone(v.garage) then
                    if Garages[v.garage] or GangGarages[v.garage] or JobGarages[v.garage] then
                        if Garages[v.garage] ~= nil then
                            VehicleGarage = Garages[v.garage]["label"]
                        elseif GangGarages[v.garage] ~= nil then
                            VehicleGarage = GangGarages[v.garage]["label"]
                        elseif JobGarages[v.garage] ~= nil then
                            VehicleGarage = JobGarages[v.garage]["label"]
                        end
                    end
                else
                    VehicleGarage = v.garage
                end
            end
            
            if v.stored then
                VehicleState = "In"
            else
                VehicleState = "Out"
                VehicleGarage = "Unknown"
            end

            if not vehdata.fuelLevel then vehdata.fuelLevel = 100 end
            if not vehdata.engineHealth then vehdata.engineHealth = 100 end
            if not vehdata.bodyHealth then vehdata.bodyHealth = 100 end

            local vehdata = {
                fullname = 'Coming',
                brand = 'Coming',
                model = 'Los Santos Dealer',
                plate = v.plate,
                garage = VehicleGarage,
                state = VehicleState,
                fuel = vehdata.fuelLevel,
                engine = vehdata.engineHealth,
                body = vehdata.bodyHealth,
                hash = vehdata.model
            }
            Vehicles[#Vehicles+1] = vehdata
        end
    end
    cb(Vehicles)
end)

ESX.RegisterServerCallback('logi_phone:server:HasPhone', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        local HasPhone = Player.getInventoryItem(Config.ItemName).count
        if HasPhone > 0 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('logi_phone:server:CanTransferMoney', function(source, cb, amount, iban)
    local newAmount = tostring(amount)
    local newiban = tostring(iban)
    for k, v in pairs(bannedCharacters) do
        newAmount = string.gsub(newAmount, '%' .. v, '')
        newiban = string.gsub(newiban, '%' .. v, '')
    end
    iban = newiban
    amount = tonumber(newAmount)
    
    local Player = ESX.GetPlayerFromId(source)
    if (Player.getAccount('bank').money - amount) >= 0 then
        local query = iban
        local result = MySQL.query.await('SELECT * FROM users WHERE iban = ?', {query})
        if result[1] ~= nil then
            local Reciever = ESX.GetPlayerFromIdentifier(result[1].identifier)
            Player.removeAccountMoney('bank', amount)
            if Reciever ~= nil then
                Reciever.addAccountMoney('bank', amount)
            else
                local RecieverMoney = json.decode(result[1].accounts)
                RecieverMoney.bank = (RecieverMoney.bank + amount)
                MySQL.query('UPDATE users SET accounts = ? WHERE identifier = ?', {json.encode(RecieverMoney), result[1].identifier})
            end
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('logi_phone:server:GetCurrentLawyers', function(source, cb)
    local Lawyers = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        if Player ~= nil then
            if (Player.job.name == "lawyer" or Player.job.name == "police" or
                Player.job.name == "mechanic" or Player.job.name == "taxi" or
                Player.job.name == "police" or Player.job.name == "ambulance") then
                Lawyers[#Lawyers+1] = {
                    name = Player.get('firstName') .. " " .. Player.get('lastName'),
                    phone = Player.get('phonedata').phone_number,
                    typejob = Player.job.name
                }
            end
        end
    end
    cb(Lawyers)
end)

ESX.RegisterServerCallback("logi_phone:server:GetWebhook",function(source,cb)
	cb(WebHook)
end)

-- Events

RegisterNetEvent('logi_phone:server:AddAdvert', function(msg, url)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local CitizenId = Player.identifier
    if Adverts[CitizenId] ~= nil then
        Adverts[CitizenId].message = msg
        Adverts[CitizenId].name = "@" .. Player.get('firstName') .. "" .. Player.get('lastName')
        Adverts[CitizenId].number = Player.get('phonedata').phone_number
        Adverts[CitizenId].url = url
    else
        Adverts[CitizenId] = {
            message = msg,
            name = "@" .. Player.get('firstName') .. "" .. Player.get('lastName'),
            number = Player.get('phonedata').phone_number,
            url = url
        }
    end
    TriggerClientEvent('logi_phone:client:UpdateAdverts', -1, Adverts, "@" .. Player.get('firstName') .. "" .. Player.get('lastName'))
end)

RegisterNetEvent('logi_phone:server:DeleteAdvert', function()
    local Player = ESX.GetPlayerFromId(source)
    local citizenid = Player.identifier
    Adverts[citizenid] = nil
    TriggerClientEvent('logi_phone:client:UpdateAdvertsDel', -1, Adverts)
end)

RegisterNetEvent('logi_phone:server:SetCallState', function(bool)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    if Calls[Ply.identifier] ~= nil then
        Calls[Ply.identifier].inCall = bool
    else
        Calls[Ply.identifier] = {}
        Calls[Ply.identifier].inCall = bool
    end
end)

RegisterNetEvent('logi_phone:server:RemoveMail', function(MailId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.query('DELETE FROM player_mails WHERE mailid = ? AND identifier = ?', {MailId, Player.identifier})
    SetTimeout(100, function()
        local mails = MySQL.query.await('SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` ASC', {Player.identifier})
        if mails[1] ~= nil then
            for k, v in pairs(mails) do
                if mails[k].button ~= nil then
                    mails[k].button = json.decode(mails[k].button)
                end
            end
        end
        TriggerClientEvent('logi_phone:client:UpdateMails', src, mails)
    end)
end)

RegisterNetEvent('logi_phone:server:sendNewMail', function(mailData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if mailData.button == nil then
        MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES (?, ?, ?, ?, ?, ?)', {Player.identifier, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0})
    else
        MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES (?, ?, ?, ?, ?, ?, ?)', {Player.identifier, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0, json.encode(mailData.button)})
    end
    TriggerClientEvent('logi_phone:client:NewMailNotify', src, mailData)
    SetTimeout(200, function()
        local mails = MySQL.query.await('SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` DESC',
            {Player.identifier})
        if mails[1] ~= nil then
            for k, v in pairs(mails) do
                if mails[k].button ~= nil then
                    mails[k].button = json.decode(mails[k].button)
                end
            end
        end

        TriggerClientEvent('logi_phone:client:UpdateMails', src, mails)
    end)
end)

RegisterNetEvent('logi_phone:server:sendNewMailToOffline', function(citizenid, mailData)
    local Player = ESX.GetPlayerFromIdentifier(citizenid)
    if Player then
        local src = Player.source
        if mailData.button == nil then
            MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES (?, ?, ?, ?, ?, ?)', {Player.identifier, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0})
            TriggerClientEvent('logi_phone:client:NewMailNotify', src, mailData)
        else
            MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES (?, ?, ?, ?, ?, ?, ?)', {Player.identifier, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0, json.encode(mailData.button)})
            TriggerClientEvent('logi_phone:client:NewMailNotify', src, mailData)
        end
        SetTimeout(200, function()
            local mails = MySQL.query.await(
                'SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` ASC', {Player.identifier})
            if mails[1] ~= nil then
                for k, v in pairs(mails) do
                    if mails[k].button ~= nil then
                        mails[k].button = json.decode(mails[k].button)
                    end
                end
            end

            TriggerClientEvent('logi_phone:client:UpdateMails', src, mails)
        end)
    else
        if mailData.button == nil then
            MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES (?, ?, ?, ?, ?, ?)', {citizenid, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0})
        else
            MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES (?, ?, ?, ?, ?, ?, ?)', {citizenid, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0, json.encode(mailData.button)})
        end
    end
end)

RegisterNetEvent('logi_phone:server:sendNewEventMail', function(citizenid, mailData)
    local Player = ESX.GetPlayerFromIdentifier(citizenid)
    if mailData.button == nil then
        MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES (?, ?, ?, ?, ?, ?)', {citizenid, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0})
    else
        MySQL.insert('INSERT INTO player_mails (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES (?, ?, ?, ?, ?, ?, ?)', {citizenid, mailData.sender, mailData.subject, mailData.message, GenerateMailId(), 0, json.encode(mailData.button)})
    end
    SetTimeout(200, function()
        local mails = MySQL.query.await('SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` ASC', {citizenid})
        if mails[1] ~= nil then
            for k, v in pairs(mails) do
                if mails[k].button ~= nil then
                    mails[k].button = json.decode(mails[k].button)
                end
            end
        end
        TriggerClientEvent('logi_phone:client:UpdateMails', Player.source, mails)
    end)
end)

RegisterNetEvent('logi_phone:server:ClearButtonData', function(mailId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.query('UPDATE player_mails SET button = ? WHERE mailid = ? AND identifier = ?', {'', mailId, Player.identifier})
    SetTimeout(200, function()
        local mails = MySQL.query.await('SELECT * FROM player_mails WHERE identifier = ? ORDER BY `date` ASC', {Player.identifier})
        if mails[1] ~= nil then
            for k, v in pairs(mails) do
                if mails[k].button ~= nil then
                    mails[k].button = json.decode(mails[k].button)
                end
            end
        end
        TriggerClientEvent('logi_phone:client:UpdateMails', src, mails)
    end)
end)

RegisterNetEvent('logi_phone:server:MentionedPlayer', function(firstName, lastName, TweetMessage)
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        if Player ~= nil then
            if (Player.get('firstName') == firstName and Player.get('lastName') == lastName) then
                LOGIPhone.SetPhoneAlerts(Player.identifier, "twitter")
                LOGIPhone.AddMentionedTweet(Player.identifier, TweetMessage)
                TriggerClientEvent('logi_phone:client:GetMentioned', Player.source, TweetMessage, AppAlerts[Player.identifier]["twitter"])
            else
                local query1 = '%' .. firstName .. '%'
                local query2 = '%' .. lastName .. '%'
                local result = MySQL.query.await('SELECT * FROM users WHERE firstname LIKE ? AND lastname LIKE ?', {query1, query2})
                if result[1] ~= nil then
                    local MentionedTarget = result[1].identifier
                    LOGIPhone.SetPhoneAlerts(MentionedTarget, "twitter")
                    LOGIPhone.AddMentionedTweet(MentionedTarget, TweetMessage)
                end
            end
        end
    end
end)

RegisterNetEvent('logi_phone:server:CallContact', function(TargetData, CallId, AnonymousCall)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local Target = ESX.GetPlayerByPhone(TargetData.number)
    if Target ~= nil then
        TriggerClientEvent('logi_phone:client:GetCalled', Target.source, Ply.get('phonedata').phone_number, CallId, AnonymousCall)
    end
end)

RegisterNetEvent('logi_phone:server:BillingEmail', function(data, paid)
    local xPlayer = ESX.GetPlayerFromId(source)
    for k, v in pairs(ESX.GetPlayers()) do
        local target = ESX.GetPlayerFromId(v)
        if target.job.name == data.society then
            if paid then
                local name = '' .. xPlayer.get('firstName') .. ' ' .. xPlayer.get('lastName') .. ''
                TriggerClientEvent('logi_phone:client:BillingEmail', target.source, data, true, name)
            else
                local name = '' .. xPlayer.get('firstName') .. ' ' .. xPlayer.get('lastName') .. ''
                TriggerClientEvent('logi_phone:client:BillingEmail', target.source, data, false, name)
            end
        end
    end
end)

RegisterNetEvent('logi_phone:server:UpdateHashtags', function(Handle, messageData)
    if Hashtags[Handle] ~= nil and next(Hashtags[Handle]) ~= nil then
        Hashtags[Handle].messages[#Hashtags[Handle].messages+1] = messageData
    else
        Hashtags[Handle] = {
            hashtag = Handle,
            messages = {}
        }
        Hashtags[Handle].messages[#Hashtags[Handle].messages+1] = messageData
    end
    TriggerClientEvent('logi_phone:client:UpdateHashtags', -1, Handle, messageData)
end)

RegisterNetEvent('logi_phone:server:SetPhoneAlerts', function(app, alerts)
    local src = source
    local CitizenId = ESX.GetPlayerFromId(src).identifier
    LOGIPhone.SetPhoneAlerts(CitizenId, app, alerts)
end)

RegisterNetEvent('logi_phone:server:DeleteTweet', function(tweetId)
    local src = source
    for i = 1, #Tweets do
        if Tweets[i].tweetId == tweetId then
            Tweets[i] = nil
        end
    end
    TriggerClientEvent('logi_phone:client:UpdateTweets', -1, src, Tweets, {}, true)
end)

RegisterNetEvent('logi_phone:server:UpdateTweets', function(NewTweets, TweetData)
    local src = source
    local InsertTweet = MySQL.insert('INSERT INTO phone_tweets (identifier, firstName, lastName, message, date, url, picture, tweetid) VALUES (?, ?, ?, ?, NOW(), ?, ?, ?)', {
        TweetData.identifier,
        TweetData.firstName,
        TweetData.lastName,
        TweetData.message,
        TweetData.url:gsub("[%<>\"()\' $]",""),
        TweetData.picture,
        TweetData.tweetId
    })
    TriggerClientEvent('logi_phone:client:UpdateTweets', -1, src, NewTweets, TweetData, false)
end)

RegisterNetEvent('logi_phone:server:TransferMoney', function(iban, amount)
    local src = source
    local sender = ESX.GetPlayerFromId(src)

    local query = iban
    local result = MySQL.query.await('SELECT * FROM users WHERE iban = ?', {query})
    if result[1] ~= nil then
        local reciever = ESX.GetPlayerFromIdentifier(result[1].identifier)

        if reciever ~= nil then
            local PhoneItem = reciever.getInventoryItem(Config.ItemName).count
            reciever.addAccountMoney('bank', amount)
            sender.removeAccountMoney('bank', amount)

            if PhoneItem > 0 then
                TriggerClientEvent('logi_phone:client:TransferMoney', reciever.source, amount, reciever.getAccount('bank').money)
            end
        else
            local moneyInfo = json.decode(result[1].accounts)
            moneyInfo.bank = round((moneyInfo.bank + amount))
            MySQL.query('UPDATE users SET accounts = ? WHERE identifier = ?', {json.encode(moneyInfo), result[1].identifier})
            sender.removeAccountMoney('bank', amount)
        end
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, "That account number doesn't exist!")
    end
end)

RegisterNetEvent('logi_phone:server:EditContact', function(newName, newNumber, newIban, oldName, oldNumber, oldIban)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.query('UPDATE player_contacts SET name = ?, number = ?, iban = ? WHERE identifier = ? AND name = ? AND number = ?',{newName, newNumber, newIban, Player.identifier, oldName, oldNumber})
end)

RegisterNetEvent('logi_phone:server:RemoveContact', function(Name, Number)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.query('DELETE FROM player_contacts WHERE name = ? AND number = ? AND identifier = ?',{Name, Number, Player.identifier})
end)

RegisterNetEvent('logi_phone:server:AddNewContact', function(name, number, iban)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.insert('INSERT INTO player_contacts (identifier, name, number, iban) VALUES (?, ?, ?, ?)', {Player.identifier, tostring(name), tostring(number), tostring(iban)})
end)

RegisterNetEvent('logi_phone:server:UpdateMessages', function(ChatMessages, ChatNumber, New)
    local src = source
    local SenderData = ESX.GetPlayerFromId(src)
    local query = ChatNumber
    local Player = MySQL.query.await('SELECT * FROM users WHERE phone_number = ?', {query})
    if Player[1] ~= nil then
        local TargetData = ESX.GetPlayerFromIdentifier(Player[1].identifier)
        if TargetData ~= nil then
            local Chat = MySQL.query.await('SELECT * FROM phone_messages WHERE identifier = ? AND number = ?', {SenderData.identifier, ChatNumber})
            if Chat[1] ~= nil then
                MySQL.query('UPDATE phone_messages SET messages = ? WHERE identifier = ? AND number = ?', {json.encode(ChatMessages), TargetData.identifier, SenderData.get('phonedata').phone_number})
                MySQL.query('UPDATE phone_messages SET messages = ? WHERE identifier = ? AND number = ?', {json.encode(ChatMessages), SenderData.identifier, TargetData.get('phonedata').phone_number})
                TriggerClientEvent('logi_phone:client:UpdateMessages', TargetData.source, ChatMessages, SenderData.get('phonedata').phone_number, false)
            else
                MySQL.insert('INSERT INTO phone_messages (identifier, number, messages) VALUES (?, ?, ?)', {TargetData.identifier, SenderData.get('phonedata').phone_number, json.encode(ChatMessages)})
                MySQL.insert('INSERT INTO phone_messages (identifier, number, messages) VALUES (?, ?, ?)', {SenderData.identifier, TargetData.get('phonedata').phone_number, json.encode(ChatMessages)})
                TriggerClientEvent('logi_phone:client:UpdateMessages', TargetData.source, ChatMessages, SenderData.get('phonedata').phone_number, true)
            end
        else
            local Chat = MySQL.query.await('SELECT * FROM phone_messages WHERE identifier = ? AND number = ?', {SenderData.identifier, ChatNumber})
            if Chat[1] ~= nil then
                MySQL.query('UPDATE phone_messages SET messages = ? WHERE identifier = ? AND number = ?', {json.encode(ChatMessages), Player[1].identifier, SenderData.get('phonedata').phone_number})
                MySQL.query('UPDATE phone_messages SET messages = ? WHERE identifier = ? AND number = ?', {json.encode(ChatMessages), SenderData.identifier, Player[1].phone_number})
            else
                MySQL.insert('INSERT INTO phone_messages (identifier, number, messages) VALUES (?, ?, ?)', {Player[1].identifier, SenderData.get('phonedata').phone_number, json.encode(ChatMessages)})
                MySQL.insert('INSERT INTO phone_messages (identifier, number, messages) VALUES (?, ?, ?)', {SenderData.identifier, Player[1].phone_number, json.encode(ChatMessages)})
            end
        end
    end
end)

RegisterNetEvent('logi_phone:server:AddRecentCall', function(type, data)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local Hour = os.date("%H")
    local Minute = os.date("%M")
    local label = Hour .. ":" .. Minute
    TriggerClientEvent('logi_phone:client:AddRecentCall', src, data, label, type)
    local Trgt = ESX.GetPlayerByPhone(data.number)
    if Trgt ~= nil then
        TriggerClientEvent('logi_phone:client:AddRecentCall', Trgt.source, {
            name = Ply.get('firstName') .. " " .. Ply.get('lastName'),
            number = Ply.get('phonedata').phone_number,
            anonymous = data.anonymous
        }, label, "outgoing")
    end
end)

RegisterNetEvent('logi_phone:server:CancelCall', function(ContactData)
    local Ply = ESX.GetPlayerByPhone(ContactData.TargetData.number)
    if Ply ~= nil then
        TriggerClientEvent('logi_phone:client:CancelCall', Ply.source)
    end
end)

RegisterNetEvent('logi_phone:server:AnswerCall', function(CallData)
    local Ply = ESX.GetPlayerByPhone(CallData.TargetData.number)
    if Ply ~= nil then
        TriggerClientEvent('logi_phone:client:AnswerCall', Ply.source)
    end
end)

RegisterNetEvent('logi_phone:server:SaveMetaData', function(MData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local result = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {Player.identifier})
    local MetaData = json.decode(result[1].metadata)
    MetaData = MData
    MetaData.phone_number = result[1].phone_number
    MySQL.query('UPDATE users SET metadata = ? WHERE identifier = ?',{json.encode(MetaData), Player.identifier})
    Player.set("phonedata", MetaData)
end)

RegisterNetEvent('logi_phone:server:GiveContactDetails', function(PlayerId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local SuggestionData = {
        name = {
            [1] = Player.get('firstName'),
            [2] = Player.get('lastName')
        },
        number = Player.get('phonedata').phone_number,
        bank = Player.getAccount('bank').money
    }

    TriggerClientEvent('logi_phone:client:AddNewSuggestion', PlayerId, SuggestionData)
end)


RegisterNetEvent('logi_phone:server:addImageToGallery', function(image)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    MySQL.insert('INSERT INTO phone_gallery (`identifier`, `image`) VALUES (?, ?)',{Player.identifier,image})
end)
RegisterNetEvent('logi_phone:server:getImageFromGallery', function()
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local images = MySQL.query.await('SELECT * FROM phone_gallery WHERE identifier = ? ORDER BY `date` DESC',{Player.identifier})
    TriggerClientEvent('logi_phone:refreshImages', src, images)
end)

RegisterNetEvent('logi_phone:server:RemoveImageFromGallery', function(data)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local image = data.image
    MySQL.query('DELETE FROM phone_gallery WHERE identifier = ? AND image = ?',{Player.identifier,image})
end)

-- ping

local Pings = {}

RegisterNetEvent('logi_pings:server:SendPing2', function(id)
    local src = source

    TriggerClientEvent('logi_pings:client:DoPing', src, tonumber(id))
end)

RegisterNetEvent('logi_pings:server:acceptping', function()
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if Pings[src] ~= nil then
        TriggerClientEvent('logi_pings:client:AcceptPing', src, Pings[src], ESX.GetPlayerFromId(Pings[src].sender))
        TriggerClientEvent('ttyy_notify:Alerts', Pings[src].sender, Player.get('firstName').." "..Player.get('lastName').." accepted your ping request!")
        Pings[src] = nil
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, "You have no ping...")
    end
end)

RegisterNetEvent('logi_pings:server:denyping', function()
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if Pings[src] ~= nil then
        TriggerClientEvent('ttyy_notify:Alerts', Pings[src].sender, "Your ping request has been rejected...")
        TriggerClientEvent('ttyy_notify:Alerts', src, "You turned down the ping...")
        Pings[src] = nil
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, "You have no ping...")
    end
end)

RegisterNetEvent('logi_pings:server:SendPing', function(id)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local Target = ESX.GetPlayerFromId(id)
    local ped = GetPlayerPed(id)
    local coords = GetEntityCoords(ped)

    if Target ~= nil then
        local OtherItem = Target.getInventoryItem(Config.ItemName).count
        if OtherItem > 0 then
            TriggerClientEvent('ttyy_notify:Alerts', src, "You have requested the location of "..Target.get('firstName').." "..Target.get('lastName'))
            Pings[id] = {
                coords = coords,
                sender = src,
            }
            TriggerClientEvent('ttyy_notify:Alerts', id, "You have received a ping request from "..Player.get('firstName').." "..Player.get('lastName')..". Use the app to allow or reject!")
            TriggerClientEvent('logi_phone:ping:client:UiUppers', id, true)
        else
            TriggerClientEvent('ttyy_notify:Alerts', src, "Could not send ping...")
        end
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, "This person is not in the city...")
    end
end)

RegisterNetEvent('logi_pings:server:SendLocation', function(PingData, SenderData)
    TriggerClientEvent('logi_pings:client:SendLocation', PingData.sender, PingData, SenderData)
end)

RegisterNetEvent('logi_phone:server:SetJobJobCenter', function(data)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if ESX.DoesJobExist(data.job, 0) then
        Player.setJob(data.job, 0)
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Changed your job to: '..data.label)
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Invalid Job...')
    end
end)

local EmploymentGroup = {}
RegisterNetEvent('logi_phone:server:employment_CreateJobGroup', function(data)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local CSN = Player.identifier
    if Player then
        if not EmploymentGroup[CSN] then
            EmploymentGroup[CSN] = {['CSN'] = CSN, ['GName'] = data.name, ['GPass'] = data.pass, ['Users'] = 1, ['UserName'] = {CSN,}}
            TriggerClientEvent('logi_phone:client:EveryoneGrupAddsForAll', -1, EmploymentGroup)
            TriggerClientEvent('ttyy_notify:Alerts', src, "Group created!")
        else
            TriggerClientEvent('ttyy_notify:Alerts', src, "You have already created a group...")
        end
    end
end)

RegisterNetEvent('logi_phone:server:employment_DeleteGroup', function(data)
    EmploymentGroup[data.delete] = nil
    TriggerClientEvent('logi_phone:client:EveryoneGrupAddsForAll', -1, EmploymentGroup)
end)

ESX.RegisterServerCallback('logi_phone:server:GetGroupsApp', function(source, cb)
    cb(EmploymentGroup)
end)

RegisterNetEvent('logi_phone:server:employment_JoinTheGroup', function(data)
    local src = source
    for k, v in pairs(EmploymentGroup) do
        for ke, ve in pairs(v['UserName']) do
            if ve == data.PCSN then
                TriggerClientEvent('ttyy_notify:Alerts', src, "You have already joined a group!")
                return
            end
        end
        table.insert(EmploymentGroup[data.id]['UserName'], data.PCSN)
        EmploymentGroup[data.id]['Users'] = v.Users + 1
        TriggerClientEvent('ttyy_notify:Alerts', src, "You joined the group!")
        TriggerClientEvent('logi_phone:client:EveryoneGrupAddsForAll', -1, EmploymentGroup)
        return
    end
end)

ESX.RegisterServerCallback('logi_phone:server:employment_CheckPlayerNames', function(source, cb, csn)
    local Names = {}
    for k, v in pairs(EmploymentGroup[csn]['UserName']) do
        local OtherPlayer = ESX.GetPlayerFromIdentifier(v)
        if OtherPlayer then
            local Name = OtherPlayer.get('firstName').." "..OtherPlayer.get('lastName')
            table.insert(Names, Name)
        end
    end
    cb(Names)
end)

ESX.RegisterServerCallback('logi_phone:server:GetGroupCSNs', function(source, cb, csn)
    if EmploymentGroup[csn] then
        cb(EmploymentGroup[csn]['UserName'])
    else
        cb(false)
    end
end)

RegisterNetEvent('logi_phone:server:employment_leave_grouped', function(data)
    local src = source
    for k, v in pairs(EmploymentGroup[data.id]['UserName']) do
        if v == data.csn then
            table.remove(EmploymentGroup[data.id]['UserName'], k)
            EmploymentGroup[data.id]['Users'] = EmploymentGroup[data.id]['Users'] - 1
            TriggerClientEvent('ttyy_notify:Alerts', src, "Done")
            TriggerClientEvent('logi_phone:client:EveryoneGrupAddsForAll', -1, EmploymentGroup)
            return
        end
    end
end)

RegisterNetEvent('logi_phone:server:SendBillForPlayer_debt', function(data)
    local src = source
    local biller = ESX.GetPlayerFromId(src)
    local billed = ESX.GetPlayerFromId(tonumber(data.ID))
    local amount = tonumber(data.Amount)

    if type(Config.BillStrict) == 'table' and not Config.BillStrict[biller.job.name] then
        TriggerClientEvent('ttyy_notify:Alerts', src, 'You are not allowed to do this!')
        return
    end

    if billed then
            if amount and amount > 0 then
                MySQL.insert('INSERT INTO phone_debt (identifier, amount,  sender, sendercitizenid, reason) VALUES (?, ?, ?, ?, ?)',{billed.identifier, amount, biller.get('firstName').." "..biller.get('lastName'), biller.identifier, data.Reason})
                TriggerClientEvent('ttyy_notify:Alerts', src, 'Debt successfully sent!')
                TriggerClientEvent('ttyy_notify:Alerts', billed.source, 'New Debt Received')
                Wait(1)
                TriggerClientEvent('logi_phone:RefreshPhoneForDebt', billed.source)
            else
                TriggerClientEvent('ttyy_notify:Alerts', src, 'Must be a valid amount above 0')
            end
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Player not Online')
    end
end)

ESX.RegisterServerCallback('logi_phone:server:GetHasBills_debt', function(source, cb)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local Debt = MySQL.query.await('SELECT * FROM phone_debt WHERE identifier = ?', {Ply.identifier})
    Wait(400)
    if Debt[1] ~= nil then
        cb(Debt)
    end
end)

RegisterNetEvent('logi_phone:server:debit_AcceptBillForPay', function(data)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local OtherPly = ESX.GetPlayerFromIdentifier(data.CSN)
    local ID = tonumber(data.id)
    local Amount = tonumber(data.Amount)
    if OtherPly then
        if (Ply.getAccount('bank').money - Amount) >= 0 then
            Ply.removeAccountMoney('bank', Amount)
            OtherPly.addAccountMoney('bank', Amount)
            MySQL.query('DELETE FROM phone_debt WHERE id = ?', {ID})
            Wait(1)
            TriggerClientEvent('logi_phone:RefreshPhoneForDebt', OtherPly.source)
            TriggerClientEvent('ttyy_notify:Alerts', src, 'Pay Bill $'..Amount)
        else
            TriggerClientEvent('ttyy_notify:Alerts', src, 'You don\'t have enough money...')
        end
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Player not Online')
    end
end)

RegisterNetEvent('logi_phone:server:wenmo_givemoney_toID', function(data)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local OtherPly = ESX.GetPlayerFromId(tonumber(data.ID))
    local newAmount = tostring(data.Amount)
    local Reason = data.Reason
    for _, v in pairs(bannedCharacters) do
        newAmount = string.gsub(newAmount, '%' .. v, '')
    end
    local amount = tonumber(newAmount)
    if OtherPly then
        if (Ply.getAccount('bank').money - amount) >= 0 then
            Ply.removeAccountMoney('bank', amount)
            OtherPly.addAccountMoney('bank', amount)
            TriggerClientEvent('ttyy_notify:Alerts', src, 'Transfering $'..amount.." to"..OtherPly.source)
            TriggerClientEvent('ttyy_notify:Alerts', OtherPly.source, src..' Transfered you $'..amount)
        else
            TriggerClientEvent('ttyy_notify:Alerts', src, 'You don\'t have enough money')
        end
    else
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Player not Online')
    end
end)

RegisterNetEvent('logi_phone:server:documents_Save_Note_As', function(data)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    if data.Type == "New" then
        MySQL.insert('INSERT INTO phone_note (identifier, title,  text, lastupdate) VALUES (?, ?, ?, ?)',{Ply.identifier, data.Title, data.Text, data.Time})
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Note Saved')
    elseif data.Type == "Update" then
        local ID = tonumber(data.ID)
        local Note = MySQL.query.await('SELECT * FROM phone_note WHERE id = ?', {ID})
        if Note[1] ~= nil then
            MySQL.query('DELETE FROM phone_note WHERE id = ?', {ID})
            MySQL.insert('INSERT INTO phone_note (identifier, title,  text, lastupdate) VALUES (?, ?, ?, ?)',{Ply.identifier, data.Title, data.Text, data.Time})
            TriggerClientEvent('ttyy_notify:Alerts', src, 'Note Updated')
        end
    elseif data.Type == "Delete" then
        local ID = tonumber(data.ID)
        MySQL.query('DELETE FROM phone_note WHERE id = ?', {ID})
        TriggerClientEvent('ttyy_notify:Alerts', src, 'Note Deleted')
    end
    Wait(100)
    TriggerClientEvent('logi_phone:RefReshNotes_Free_Documents', src)
end)

ESX.RegisterServerCallback('logi_phone:server:GetNote_for_Documents_app', function(source, cb)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local Note = MySQL.query.await('SELECT * FROM phone_note WHERE identifier = ?', {Ply.identifier})
    Wait(400)
    if Note[1] ~= nil then
        cb(Note)
    end
end)