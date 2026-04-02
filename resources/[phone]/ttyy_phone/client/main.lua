local PlayerJob = {}
local patt = "[?!@#]"
local CallVolume = 0.2
PhoneData = {
    MetaData = {},
    isOpen = false,
    PlayerData = nil,
    Contacts = {},
    Tweets = {},
    MentionedTweets = {},
    Hashtags = {},
    Chats = {},
    Invoices = {},
    CallData = {},
    RecentCalls = {},
    Garage = {},
    Mails = {},
    Adverts = {},
    GarageVehicles = {},
    AnimationData = {
        lib = nil,
        anim = nil,
    },
    SuggestedContacts = {},
    Images = {},
}

-- Functions

function string:split(delimiter)
    local result = { }
    local from  = 1
    local delim_from, delim_to = string.find( self, delimiter, from  )
    while delim_from do
      table.insert( result, string.sub( self, from , delim_from-1 ) )
      from  = delim_to + 1
      delim_from, delim_to = string.find( self, delimiter, from  )
    end
    table.insert( result, string.sub( self, from  ) )
    return result
end

local function escape_str(s)
	return s
end

local function GenerateTweetId()
    local tweetId = "TWEET-"..math.random(11111111, 99999999)
    return tweetId
end

local function IsNumberInContacts(num)
    local retval = num
    for _, v in pairs(PhoneData.Contacts) do
        if num == v.number then
            retval = v.name
        end
    end
    return retval
end

local function CalculateTimeToDisplay()
	hour = GetClockHours()
    minute = GetClockMinutes()

    local obj = {}

	if minute <= 9 then
		minute = "0" .. minute
    end

    obj.hour = hour
    obj.minute = minute

    return obj
end

local function GetClosestPlayer()
    local closestPlayers = ESX.Game.GetClosestPlayer()
    local closestDistance = -1
    local closestPlayer = -1
    local coords = GetEntityCoords(PlayerPedId())
    for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() then
            local pos = GetEntityCoords(GetPlayerPed(closestPlayers[i]))
            local distance = #(pos - coords)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = closestPlayers[i]
                closestDistance = distance
            end
        end
	end
	return closestPlayer, closestDistance
end

local function GetKeyByDate(Number, Date)
    local retval = nil
    if PhoneData.Chats[Number] ~= nil then
        if PhoneData.Chats[Number].messages ~= nil then
            for key, chat in pairs(PhoneData.Chats[Number].messages) do
                if chat.date == Date then
                    retval = key
                    break
                end
            end
        end
    end
    return retval
end

local function GetKeyByNumber(Number)
    local retval = nil
    if PhoneData.Chats then
        for k, v in pairs(PhoneData.Chats) do
            if v.number == Number then
                retval = k
            end
        end
    end
    return retval
end

local function ReorganizeChats(key)
    local ReorganizedChats = {}
    ReorganizedChats[1] = PhoneData.Chats[key]
    for k, chat in pairs(PhoneData.Chats) do
        if k ~= key then
            ReorganizedChats[#ReorganizedChats+1] = chat
        end
    end
    PhoneData.Chats = ReorganizedChats
end

local function findVehFromPlateAndLocate(plate)
    local gameVehicles = ESX.Game.GetVehicles()
    for i = 1, #gameVehicles do
        local vehicle = gameVehicles[i]
        if DoesEntityExist(vehicle) then
            if ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)) == plate then
                local vehCoords = GetEntityCoords(vehicle)
                SetNewWaypoint(vehCoords.x, vehCoords.y)
                return true
            end
        end
    end
end

local function PublicPhone()
    local PublicPhoneobject = {
        -2103798695,1158960338,
        1281992692,1511539537,
        295857659,-78626473,
        -1559354806
    }
    exports["qtarget"]:AddTargetModel(PublicPhoneobject, {
        options = {
            {
                type = "client",
                event = "stx-phone:client:publocphoneopen",
                icon = "fas fa-phone-alt",
                label = "Public Phone",
                job = false,
            },
        },
        distance = 1.0
    })
end

local function LoadPhone()
    Wait(100)
    ESX.TriggerServerCallback('logi_phone:server:GetPhoneData', function(pData)
        PlayerJob = ESX.PlayerData.job
        PhoneData.PlayerData = ESX.GetPlayerData()
        local PhoneMeta = PhoneData.PlayerData.phonedata
        PhoneData.MetaData = PhoneMeta

        if PhoneMeta.profilepicture == nil then
            PhoneData.MetaData.profilepicture = "default"
        else
            PhoneData.MetaData.profilepicture = PhoneMeta.profilepicture
        end

        if pData.Applications ~= nil and next(pData.Applications) ~= nil then
            for k, v in pairs(pData.Applications) do
                Config.PhoneApplications[k].Alerts = v
            end
        end

        if pData.MentionedTweets ~= nil and next(pData.MentionedTweets) ~= nil then
            PhoneData.MentionedTweets = pData.MentionedTweets
        end

        if pData.PlayerContacts ~= nil and next(pData.PlayerContacts) ~= nil then
            PhoneData.Contacts = pData.PlayerContacts
        end

        if pData.Chats ~= nil and next(pData.Chats) ~= nil then
            local Chats = {}
            for k, v in pairs(pData.Chats) do
                Chats[v.number] = {
                    name = IsNumberInContacts(v.number),
                    number = v.number,
                    messages = json.decode(v.messages)
                }
            end

            PhoneData.Chats = Chats
        end

        if pData.Invoices ~= nil and next(pData.Invoices) ~= nil then
            for _, invoice in pairs(pData.Invoices) do
                invoice.name = IsNumberInContacts(invoice.number)
            end
            PhoneData.Invoices = pData.Invoices
        end

        if pData.Hashtags ~= nil and next(pData.Hashtags) ~= nil then
            PhoneData.Hashtags = pData.Hashtags
        end

        if pData.Tweets ~= nil and next(pData.Tweets) ~= nil then
            PhoneData.Tweets = pData.Tweets
        end

        if pData.Mails ~= nil and next(pData.Mails) ~= nil then
            PhoneData.Mails = pData.Mails
        end

        if pData.Adverts ~= nil and next(pData.Adverts) ~= nil then
            PhoneData.Adverts = pData.Adverts
        end
        if pData.Images ~= nil and next(pData.Images) ~= nil then
            PhoneData.Images = pData.Images
        end

        SendNUIMessage({
            action = "LoadPhoneData",
            PhoneData = PhoneData,
            PlayerData = PhoneData.PlayerData,
            PlayerJob = PhoneData.PlayerData.job,
            applications = Config.PhoneApplications,
            PlayerId = GetPlayerServerId(PlayerId())
        })
    end)
end

local function OpenPhone()
    ESX.TriggerServerCallback('logi_phone:server:HasPhone', function(HasPhone)
        if HasPhone then
            PhoneData.PlayerData = ESX.GetPlayerData()
    	    SetNuiFocus(true, true)
            SetNuiFocusKeepInput(true)
            SendNUIMessage({
                action = "open",
                Tweets = PhoneData.Tweets,
                AppData = Config.PhoneApplications,
                applications = Config.PhoneApplications,
                CallData = PhoneData.CallData,
                PlayerData = PhoneData.PlayerData,
            })
            PhoneData.isOpen = true

            CreateThread(function()
                while PhoneData.isOpen do
                    DisableControlAction(0, 0, true)    -- Next Camera
                    DisableControlAction(0, 1, true)    -- Look Left/Right
                    DisableControlAction(0, 2, true)    -- Look up/Down
                    DisableControlAction(0, 16, true)   -- Next Weapon
                    DisableControlAction(0, 17, true)   -- Select Previous Weapon
                    DisableControlAction(0, 22, true)   -- Jump
                    DisableControlAction(0, 24, true)   -- Attack
                    DisableControlAction(0, 25, true)   -- Aim
                    DisableControlAction(0, 26, true)   -- Look Behind
                    DisableControlAction(0, 36, true)   -- Input Duck/Sneak
                    DisableControlAction(0, 37, true)   -- Weapon Wheel
                    DisableControlAction(0, 44, true)   -- Cover
                    DisableControlAction(0, 47, true)   -- Detonate
                    DisableControlAction(0, 55, true)   -- Dive
                    DisableControlAction(0, 75, true)   -- Exit Vehicle
                    DisableControlAction(0, 76, true)   -- Vehicle Handbrake
                    DisableControlAction(0, 81, true)   -- Next Radio (Vehicle)
                    DisableControlAction(0, 82, true)   -- Previous Radio (Vehicle)
                    DisableControlAction(0, 91, true)   -- Passenger Aim (Vehicle)
                    DisableControlAction(0, 92, true)   -- Passenger Attack (Vehicle)
                    DisableControlAction(0, 99, true)   -- Select Next Weapon (Vehicle)
                    DisableControlAction(0, 106, true)  -- Control Override (Vehicle)
                    DisableControlAction(0, 114, true)  -- Fly Attack (Flying)
                    DisableControlAction(0, 115, true)  -- Next Weapon (Flying)
                    DisableControlAction(0, 121, true)  -- Fly Camera (Flying)
                    DisableControlAction(0, 122, true)  -- Control OVerride (Flying)
                    DisableControlAction(0, 135, true)  -- Control OVerride (Sub)
                    DisableControlAction(0, 140, true)  -- Melee attack light
                    DisableControlAction(0, 200, true)  -- Pause Menu
                    DisableControlAction(0, 245, true)  -- Chat
                    Wait(1)
                end
            end)

            if not PhoneData.CallData.InCall then
                DoPhoneAnimation('cellphone_text_in')
            else
                DoPhoneAnimation('cellphone_call_to_text')
            end

            SetTimeout(250, function()
                newPhoneProp()
            end)

            ESX.TriggerServerCallback('logi_phone:server:GetGarageVehicles', function(vehicles)
                for k,v in pairs(vehicles) do
                    local aheadVehName = GetDisplayNameFromVehicleModel(v.hash)
					local vehicleName = GetLabelText(aheadVehName)

                    vehicles[k].brand = vehicleName
                    vehicles[k].fullname = vehicleName
                end
                PhoneData.GarageVehicles = vehicles
            end)
        else
            TriggerEvent('ttyy_notify:Alert', "ERROR", "You don't have a phone?", 5000, "error")
        end
    end)
end

local function GenerateCallId(caller, target)
    local CallId = math.ceil(((tonumber(caller) + tonumber(target)) / 100 * 1))
    return CallId
end

local function CallContact(CallData, AnonymousCall)
    local RepeatCount = 0
    PhoneData.CallData.CallType = "outgoing"
    PhoneData.CallData.InCall = true
    PhoneData.CallData.TargetData = CallData
    PhoneData.CallData.AnsweredCall = false
    PhoneData.CallData.CallId = GenerateCallId(PhoneData.PlayerData.phonedata['phone_number'], CallData.number)

    TriggerServerEvent('logi_phone:server:CallContact', PhoneData.CallData.TargetData, PhoneData.CallData.CallId, AnonymousCall)
    TriggerServerEvent('logi_phone:server:SetCallState', true)

    for i = 1, Config.CallRepeats + 1, 1 do
        if not PhoneData.CallData.AnsweredCall then
            if RepeatCount + 1 ~= Config.CallRepeats + 1 then
                if PhoneData.CallData.InCall then
                    RepeatCount = RepeatCount + 1
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "demo", 0.1)
                else
                    break
                end
                Wait(Config.RepeatTimeout)
            else
                CancelCall()
                break
            end
        else
            break
        end
    end
end

local function CancelCall()
    TriggerServerEvent('logi_phone:server:CancelCall', PhoneData.CallData)
    if PhoneData.CallData.CallType == "ongoing" then
        exports['pma-voice']:removePlayerFromCall(PhoneData.CallData.CallId)
    end
    PhoneData.CallData.CallType = nil
    PhoneData.CallData.InCall = false
    PhoneData.CallData.AnsweredCall = false
    PhoneData.CallData.TargetData = {}
    PhoneData.CallData.CallId = nil

    if not PhoneData.isOpen then
        StopAnimTask(PlayerPedId(), PhoneData.AnimationData.lib, PhoneData.AnimationData.anim, 2.5)
        deletePhone()
        PhoneData.AnimationData.lib = nil
        PhoneData.AnimationData.anim = nil
    else
        PhoneData.AnimationData.lib = nil
        PhoneData.AnimationData.anim = nil
    end

    TriggerServerEvent('logi_phone:server:SetCallState', false)

    if not PhoneData.isOpen then
        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Phone",
                text = "Call ended",
                icon = "fas fa-phone",
                color = "#e84118",
            },
        })
    else
        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Phone",
                text = "Call ended",
                icon = "fas fa-phone",
                color = "#e84118",
            },
        })

        SendNUIMessage({
            action = "SetupHomeCall",
            CallData = PhoneData.CallData,
        })

        SendNUIMessage({
            action = "CancelOutgoingCall",
        })
    end
end

local function AnswerCall()
    if (PhoneData.CallData.CallType == "incoming" or PhoneData.CallData.CallType == "outgoing") and PhoneData.CallData.InCall and not PhoneData.CallData.AnsweredCall then
        PhoneData.CallData.CallType = "ongoing"
        PhoneData.CallData.AnsweredCall = true
        PhoneData.CallData.CallTime = 0

        SendNUIMessage({ action = "AnswerCall", CallData = PhoneData.CallData})
        SendNUIMessage({ action = "SetupHomeCall", CallData = PhoneData.CallData})

        TriggerServerEvent('logi_phone:server:SetCallState', true)

        if PhoneData.isOpen then
            DoPhoneAnimation('cellphone_text_to_call')
        else
            DoPhoneAnimation('cellphone_call_listen_base')
        end

        CreateThread(function()
            while true do
                if PhoneData.CallData.AnsweredCall then
                    PhoneData.CallData.CallTime = PhoneData.CallData.CallTime + 1
                    SendNUIMessage({
                        action = "UpdateCallTime",
                        Time = PhoneData.CallData.CallTime,
                        Name = PhoneData.CallData.TargetData.name,
                    })
                else
                    break
                end

                Wait(1000)
            end
        end)

        TriggerServerEvent('logi_phone:server:AnswerCall', PhoneData.CallData)
        exports['pma-voice']:addPlayerToCall(PhoneData.CallData.CallId)
    else
        PhoneData.CallData.InCall = false
        PhoneData.CallData.CallType = nil
        PhoneData.CallData.AnsweredCall = false

        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Phone",
                text = "You don't have an incoming call...",
                icon = "fas fa-phone",
                color = "#e84118",
            },
        })
    end
end

local function CellFrontCamActivate(activate)
	return Citizen.InvokeNative(0x2491A93618B7D838, activate)
end

-- Command

RegisterCommand('phone', function()
    PlayerData = ESX.GetPlayerData()
    if not PhoneData.isOpen and ESX.PlayerLoaded then
        if not IsPedCuffed(PlayerPedId()) and not IsPauseMenuActive() then
            OpenPhone()
        else
            TriggerEvent('ttyy_notify:Alert', "ERROR", "Action not available at the moment..", 5000, "error")
        end
    end
end)

RegisterKeyMapping('phone', 'Open Phone', 'keyboard', 'M')

-- NUI Callbacks

RegisterNUICallback('CancelOutgoingCall', function()
    CancelCall()
end)

RegisterNUICallback('DenyIncomingCall', function()
    CancelCall()
end)

RegisterNUICallback('CancelOngoingCall', function()
    CancelCall()
end)

RegisterNUICallback('AnswerCall', function()
    AnswerCall()
end)

RegisterNUICallback('ClearRecentAlerts', function(data, cb)
    TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "phone", 0)
    Config.PhoneApplications["phone"].Alerts = 0
    SendNUIMessage({ action = "RefreshAppAlerts", AppData = Config.PhoneApplications })
end)

RegisterNUICallback('SetBackground', function(data)
    local background = data.background
    PhoneData.MetaData.background = background
    TriggerServerEvent('logi_phone:server:SaveMetaData', PhoneData.MetaData)
end)

RegisterNUICallback('GetMissedCalls', function(data, cb)
    cb(PhoneData.RecentCalls)
end)

RegisterNUICallback('GetSuggestedContacts', function(data, cb)
    cb(PhoneData.SuggestedContacts)
end)

RegisterNUICallback('HasPhone', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:HasPhone', function(HasPhone)
        cb(HasPhone)
    end)
end)

RegisterNUICallback('SetupGarageVehicles', function(data, cb)
    cb(PhoneData.GarageVehicles)
end)

RegisterNUICallback('RemoveMail', function(data, cb)
    local MailId = data.mailId
    TriggerServerEvent('logi_phone:server:RemoveMail', MailId)
    cb('ok')
end)

RegisterNUICallback('Close', function()
    if not PhoneData.CallData.InCall then
        DoPhoneAnimation('cellphone_text_out')
        SetTimeout(400, function()
            StopAnimTask(PlayerPedId(), PhoneData.AnimationData.lib, PhoneData.AnimationData.anim, 2.5)
            deletePhone()
            PhoneData.AnimationData.lib = nil
            PhoneData.AnimationData.anim = nil
        end)
    else
        PhoneData.AnimationData.lib = nil
        PhoneData.AnimationData.anim = nil
        DoPhoneAnimation('cellphone_text_to_call')
    end
    SetTimeout(300, function()
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        PhoneData.isOpen = false
    end)
end)

RegisterNUICallback('AcceptMailButton', function(data)
    if data.buttonEvent ~= nil or  data.buttonData ~= nil then
        TriggerEvent(data.buttonEvent, data.buttonData)
    end
    TriggerServerEvent('logi_phone:server:ClearButtonData', data.mailId)
end)

RegisterNUICallback('AddNewContact', function(data, cb)
    PhoneData.Contacts[#PhoneData.Contacts+1] = {
        name = data.ContactName,
        number = data.ContactNumber,
        iban = data.ContactIban
    }
    Wait(100)
    cb(PhoneData.Contacts)
    if PhoneData.Chats[data.ContactNumber] ~= nil and next(PhoneData.Chats[data.ContactNumber]) ~= nil then
        PhoneData.Chats[data.ContactNumber].name = data.ContactName
    end
    TriggerServerEvent('logi_phone:server:AddNewContact', data.ContactName, data.ContactNumber, data.ContactIban)
end)

RegisterNUICallback('GetMails', function(data, cb)
    cb(PhoneData.Mails)
end)

RegisterNUICallback('GetWhatsappChat', function(data, cb)
    if PhoneData.Chats[data.phone] ~= nil then
        cb(PhoneData.Chats[data.phone])
    else
        cb(false)
    end
end)

RegisterNUICallback('GetProfilePicture', function(data, cb)
    local number = data.number
    ESX.TriggerServerCallback('logi_phone:server:GetPicture', function(picture)
        cb(picture)
    end, number)
end)

RegisterNUICallback('GetBankContacts', function(data, cb)
    cb(PhoneData.Contacts)
end)

RegisterNUICallback('GetInvoices', function(data, cb)
    if PhoneData.Invoices ~= nil and next(PhoneData.Invoices) ~= nil then
        cb(PhoneData.Invoices)
    else
        cb(nil)
    end
end)

RegisterNUICallback('SharedLocation', function(data)
    local x = data.coords.x
    local y = data.coords.y

    SetNewWaypoint(x, y)
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = "Messages",
            text = "Location set!",
            icon = "fas fa-comment",
            color = "#25D366",
            timeout = 1500,
        },
    })
end)

RegisterNUICallback('PostAdvert', function(data)
    TriggerServerEvent('logi_phone:server:AddAdvert', data.message, data.url)
end)

RegisterNUICallback("DeleteAdvert", function()
    TriggerServerEvent("logi_phone:server:DeleteAdvert")
end)

RegisterNUICallback('LoadAdverts', function()
    SendNUIMessage({
        action = "RefreshAdverts",
        Adverts = PhoneData.Adverts
    })
end)

RegisterNUICallback('ClearAlerts', function(data, cb)
    local chat = data.number
    local ChatKey = GetKeyByNumber(chat)

    if PhoneData.Chats[ChatKey].Unread ~= nil then
        local newAlerts = (Config.PhoneApplications['whatsapp'].Alerts - PhoneData.Chats[ChatKey].Unread)
        Config.PhoneApplications['whatsapp'].Alerts = newAlerts
        TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "whatsapp", newAlerts)

        PhoneData.Chats[ChatKey].Unread = 0

        SendNUIMessage({
            action = "RefreshWhatsappAlerts",
            Chats = PhoneData.Chats,
        })
        SendNUIMessage({ action = "RefreshAppAlerts", AppData = Config.PhoneApplications })
    end
end)

RegisterNUICallback('PayInvoice', function(data, cb)
    local sender = data.sender
    local senderCitizenId = data.senderCitizenId
    local society = data.society
    local amount = data.amount
    local invoiceId = data.invoiceId

    ESX.TriggerServerCallback('logi_phone:server:PayInvoice', function(CanPay, Invoices)
        if CanPay then PhoneData.Invoices = Invoices end
        cb(CanPay)
    end, society, amount, invoiceId, senderCitizenId)
    TriggerServerEvent('logi_phone:server:BillingEmail', data, true)
end)

RegisterNUICallback('DeclineInvoice', function(data, cb)
    local sender = data.sender
    local society = data.society
    local amount = data.amount
    local invoiceId = data.invoiceId

    ESX.TriggerServerCallback('logi_phone:server:DeclineInvoice', function(CanPay, Invoices)
        PhoneData.Invoices = Invoices
        cb('ok')
    end, society, amount, invoiceId)
    TriggerServerEvent('logi_phone:server:BillingEmail', data, false)
end)

RegisterNUICallback('EditContact', function(data, cb)
    local NewName = data.CurrentContactName
    local NewNumber = data.CurrentContactNumber
    local NewIban = data.CurrentContactIban
    local OldName = data.OldContactName
    local OldNumber = data.OldContactNumber
    local OldIban = data.OldContactIban

    for k, v in pairs(PhoneData.Contacts) do
        if v.name == OldName and v.number == OldNumber then
            v.name = NewName
            v.number = NewNumber
            v.iban = NewIban
        end
    end
    if PhoneData.Chats[NewNumber] ~= nil and next(PhoneData.Chats[NewNumber]) ~= nil then
        PhoneData.Chats[NewNumber].name = NewName
    end
    Wait(100)
    cb(PhoneData.Contacts)
    TriggerServerEvent('logi_phone:server:EditContact', NewName, NewNumber, NewIban, OldName, OldNumber, OldIban)
end)

RegisterNUICallback('GetHashtagMessages', function(data, cb)
    if PhoneData.Hashtags[data.hashtag] ~= nil and next(PhoneData.Hashtags[data.hashtag]) ~= nil then
        cb(PhoneData.Hashtags[data.hashtag])
    else
        cb(nil)
    end
end)

RegisterNUICallback('GetTweets', function(data, cb)
    cb(PhoneData.Tweets)
end)

RegisterNUICallback('UpdateProfilePicture', function(data)
    local pf = data.profilepicture
    PhoneData.MetaData.profilepicture = pf
    TriggerServerEvent('logi_phone:server:SaveMetaData', PhoneData.MetaData)
end)

RegisterNUICallback('PostNewTweet', function(data, cb)
    local TweetMessage = {
        firstName = PhoneData.PlayerData.firstName,
        lastName = PhoneData.PlayerData.lastName,
        identifier = PhoneData.PlayerData.identifier,
        message = escape_str(data.Message),
        time = data.Date,
        tweetId = GenerateTweetId(),
        picture = data.Picture,
        url = data.url
    }

    local TwitterMessage = data.Message
    local MentionTag = TwitterMessage:split("@")
    local Hashtag = TwitterMessage:split("#")

    for i = 2, #Hashtag, 1 do
        local Handle = Hashtag[i]:split(" ")[1]
        if Handle ~= nil or Handle ~= "" then
            local InvalidSymbol = string.match(Handle, patt)
            if InvalidSymbol then
                Handle = Handle:gsub("%"..InvalidSymbol, "")
            end
            TriggerServerEvent('logi_phone:server:UpdateHashtags', Handle, TweetMessage)
        end
    end

    for i = 2, #MentionTag, 1 do
        local Handle = MentionTag[i]:split(" ")[1]
        if Handle ~= nil or Handle ~= "" then
            local Fullname = Handle:split("_")
            local Firstname = Fullname[1]
            table.remove(Fullname, 1)
            local Lastname = table.concat(Fullname, " ")

            if (Firstname ~= nil and Firstname ~= "") and (Lastname ~= nil and Lastname ~= "") then
                if Firstname ~= PhoneData.PlayerData.firstName and Lastname ~= PhoneData.PlayerData.lastName then
                    TriggerServerEvent('logi_phone:server:MentionedPlayer', Firstname, Lastname, TweetMessage)
                end
            end
        end
    end

    PhoneData.Tweets[#PhoneData.Tweets+1] = TweetMessage
    Wait(100)
    cb(PhoneData.Tweets)

    TriggerServerEvent('logi_phone:server:UpdateTweets', PhoneData.Tweets, TweetMessage)
end)

RegisterNUICallback('DeleteTweet',function(data)
    TriggerServerEvent('logi_phone:server:DeleteTweet', data.id)
end)

RegisterNUICallback('GetMentionedTweets', function(data, cb)
    cb(PhoneData.MentionedTweets)
end)

RegisterNUICallback('GetHashtags', function(data, cb)
    if PhoneData.Hashtags ~= nil and next(PhoneData.Hashtags) ~= nil then
        cb(PhoneData.Hashtags)
    else
        cb(nil)
    end
end)

RegisterNUICallback('FetchSearchResults', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:FetchResult', function(result)
        cb(result)
    end, data.input)
end)

RegisterNUICallback('GetGalleryData', function(data, cb)
    local data = PhoneData.Images
    cb(data)
end)

RegisterNUICallback('DeleteImage', function(image,cb)
    TriggerServerEvent('logi_phone:server:RemoveImageFromGallery',image)
    Wait(400)
    TriggerServerEvent('logi_phone:server:getImageFromGallery')
    cb(true)
end)

RegisterNUICallback('gps-vehicle-garage', function(data, cb)
local veh = data.veh
if findVehFromPlateAndLocate(veh.plate) then
    TriggerEvent('ttyy_notify:Alert', "SUCCESS", "Your vehicle has been marked", 5000, "success")
else
    TriggerEvent('ttyy_notify:Alert', "ERROR", "This vehicle cannot be located", 5000, "error")
end
end)

RegisterNUICallback('DeleteContact', function(data, cb)
    local Name = data.CurrentContactName
    local Number = data.CurrentContactNumber
    local Account = data.CurrentContactIban

    for k, v in pairs(PhoneData.Contacts) do
        if v.name == Name and v.number == Number then
            table.remove(PhoneData.Contacts, k)
                SendNUIMessage({
                    action = "PhoneNotification",
                    PhoneNotify = {
                        title = "Phone",
                        text = "Contact deleted!",
                        icon = "fa fa-phone-alt",
                        color = "#04b543",
                        timeout = 1500,
                    },
                })
            break
        end
    end
    Wait(100)
    cb(PhoneData.Contacts)
    if PhoneData.Chats[Number] ~= nil and next(PhoneData.Chats[Number]) ~= nil then
        PhoneData.Chats[Number].name = Number
    end
    TriggerServerEvent('logi_phone:server:RemoveContact', Name, Number)
end)

RegisterNUICallback('GetAvailableRaces', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:GetRaces', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('JoinRace', function(data)
    TriggerServerEvent('logi_lapraces:server:JoinRace', data.RaceData)
end)

RegisterNUICallback('LeaveRace', function(data)
    TriggerServerEvent('logi_lapraces:server:LeaveRace', data.RaceData)
end)

RegisterNUICallback('StartRace', function(data)
    TriggerServerEvent('logi_lapraces:server:StartRace', data.RaceData.RaceId)
end)

RegisterNUICallback('SetAlertWaypoint', function(data)
    local coords = data.alert.coords
    TriggerEvent('ttyy_notify:Alert', "SUCCESS", 'GPS set: '..data.alert.title, 5000, "success")
    SetNewWaypoint(coords.x, coords.y)
end)

RegisterNUICallback('RemoveSuggestion', function(data, cb)
    local data = data.data
    if PhoneData.SuggestedContacts ~= nil and next(PhoneData.SuggestedContacts) ~= nil then
        for k, v in pairs(PhoneData.SuggestedContacts) do
            if (data.name[1] == v.name[1] and data.name[2] == v.name[2]) and data.number == v.number and data.bank == v.bank then
                table.remove(PhoneData.SuggestedContacts, k)
            end
        end
    end
end)

RegisterNUICallback('FetchVehicleResults', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetVehicleSearchResults', function(result)
        if result ~= nil then
            for k, v in pairs(result) do
                ESX.TriggerServerCallback('police:IsPlateFlagged', function(flagged)
                    result[k].isFlagged = flagged
                end, result[k].plate)
                Wait(50)
            end
        end
        cb(result)
    end, data.input)
end)

RegisterNUICallback('FetchVehicleScan', function(data, cb)
    local vehicle = ESX.Game.GetClosestVehicle()
    local plate = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle))
    local vehname = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()
    ESX.TriggerServerCallback('logi_phone:server:ScanPlate', function(result)
        ESX.TriggerServerCallback('police:IsPlateFlagged', function(flagged)
            result.isFlagged = flagged
            result.label = 'Unknown brand..'
            cb(result)
        end, plate)
    end, plate)
end)

RegisterNUICallback('GetRaces', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:GetListedRaces', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('GetTrackData', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:GetTrackData', function(TrackData, CreatorData)
        TrackData.CreatorData = CreatorData
        cb(TrackData)
    end, data.RaceId)
end)

RegisterNUICallback('SetupRace', function(data, cb)
    TriggerServerEvent('logi_lapraces:server:SetupRace', data.RaceId, tonumber(data.AmountOfLaps))
end)

RegisterNUICallback('HasCreatedRace', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:HasCreatedRace', function(HasCreated)
        cb(HasCreated)
    end)
end)

RegisterNUICallback('IsInRace', function(data, cb)
    local InRace = exports['ttyy_lapraces']:IsInRace()
    cb(InRace)
end)

RegisterNUICallback('IsAuthorizedToCreateRaces', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:IsAuthorizedToCreateRaces', function(IsAuthorized, NameAvailable)
        local data = {
            IsAuthorized = IsAuthorized,
            IsBusy = exports['ttyy_lapraces']:IsInEditor(),
            IsNameAvailable = NameAvailable,
        }
        cb(data)
    end, data.TrackName)
end)

RegisterNUICallback('StartTrackEditor', function(data, cb)
    TriggerServerEvent('logi_lapraces:server:CreateLapRace', data.TrackName)
end)

RegisterNUICallback('GetRacingLeaderboards', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:GetRacingLeaderboards', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('RaceDistanceCheck', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:GetRacingData', function(RaceData)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local checkpointcoords = RaceData.Checkpoints[1].coords
        local dist = #(coords - vector3(checkpointcoords.x, checkpointcoords.y, checkpointcoords.z))
        if dist <= 115.0 then
            if data.Joined then
                TriggerEvent('logi_lapraces:client:WaitingDistanceCheck')
            end
            cb(true)
        else
            TriggerEvent('ttyy_notify:Alert', "ERROR", 'You\'re too far away from the race. GPS set.', 5000, "error")
            SetNewWaypoint(checkpointcoords.x, checkpointcoords.y)
            cb(false)
        end
    end, data.RaceId)
end)

RegisterNUICallback('IsBusyCheck', function(data, cb)
    if data.check == "editor" then
        cb(exports['ttyy_lapraces']:IsInEditor())
    else
        cb(exports['ttyy_lapraces']:IsInRace())
    end
end)

RegisterNUICallback('CanRaceSetup', function(data, cb)
    ESX.TriggerServerCallback('logi_lapraces:server:CanRaceSetup', function(CanSetup)
        cb(CanSetup)
    end)
end)

RegisterNUICallback('TransferCid', function(data, cb)
    local TransferedCid = data.newBsn

    ESX.TriggerServerCallback('logi_phone:server:TransferCid', function(CanTransfer)
        cb(CanTransfer)
    end, TransferedCid, data.HouseData)
end)

RegisterNUICallback('SetGPSLocation', function(data, cb)
    local ped = PlayerPedId()

    SetNewWaypoint(data.coords.x, data.coords.y)
    TriggerEvent('ttyy_notify:Alert', "SUCCESS", "GPS set!", 5000, "success")
end)

RegisterNUICallback('GetCurrentLawyers', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetCurrentLawyers', function(lawyers)
        cb(lawyers)
    end)
end)

RegisterNUICallback('ClearMentions', function()
    Config.PhoneApplications["twitter"].Alerts = 0
    SendNUIMessage({
        action = "RefreshAppAlerts",
        AppData = Config.PhoneApplications
    })
    TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "twitter", 0)
    SendNUIMessage({ action = "RefreshAppAlerts", AppData = Config.PhoneApplications })
end)

RegisterNUICallback('ClearGeneralAlerts', function(data)
    SetTimeout(400, function()
        Config.PhoneApplications[data.app].Alerts = 0
        SendNUIMessage({
            action = "RefreshAppAlerts",
            AppData = Config.PhoneApplications
        })
        TriggerServerEvent('logi_phone:server:SetPhoneAlerts', data.app, 0)
        SendNUIMessage({ action = "RefreshAppAlerts", AppData = Config.PhoneApplications })
    end)
end)

RegisterNUICallback('TransferMoney', function(data, cb)
    data.amount = tonumber(data.amount)
    if tonumber(PhoneData.PlayerData.accounts['bank'].money) >= data.amount then
        local amaountata = PhoneData.PlayerData.accounts['bank'].money - data.amount
        TriggerServerEvent('logi_phone:server:TransferMoney', data.iban, data.amount)
        local cbdata = {
            CanTransfer = true,
            NewAmount = amaountata
        }
        cb(cbdata)
    else
        local cbdata = {
            CanTransfer = false,
            NewAmount = nil,
        }
        cb(cbdata)
    end
end)

RegisterNUICallback('CanTransferMoney', function(data, cb)
    local amount = tonumber(data.amountOf)
    local iban = data.sendTo
    local PlayerData = ESX.GetPlayerData()

    if (PlayerData.accounts['bank'].money - amount) >= 0 then
        ESX.TriggerServerCallback('logi_phone:server:CanTransferMoney', function(Transferd)
            if Transferd then
                cb({TransferedMoney = true, NewBalance = (PlayerData.accounts['bank'].money - amount)})
            else
		SendNUIMessage({ action = "PhoneNotification", PhoneNotify = { timeout=3000, title = "Bank", text = "Account does not exist!", icon = "fas fa-university", color = "#ff0000", }, })
                cb({TransferedMoney = false})
            end
        end, amount, iban)
    else
        cb({TransferedMoney = false})
    end
end)

RegisterNUICallback('GetWhatsappChats', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetContactPictures', function(Chats)
        cb(Chats)
    end, PhoneData.Chats)
end)

RegisterNUICallback('CallContact', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetCallState', function(CanCall, IsOnline, contactData)
        local status = {
            CanCall = CanCall,
            IsOnline = IsOnline,
            InCall = PhoneData.CallData.InCall,
        }
        cb(status)
        if CanCall and not status.InCall and (data.ContactData.number ~= PhoneData.PlayerData.phonedata['phone_number']) then
            CallContact(data.ContactData, data.Anonymous)
        end
    end, data.ContactData)
end)

RegisterNUICallback('SendMessage', function(data, cb)
    local ChatMessage = data.ChatMessage
    local ChatDate = data.ChatDate
    local ChatNumber = data.ChatNumber
    local ChatTime = data.ChatTime
    local ChatType = data.ChatType
    local Ped = PlayerPedId()
    local Pos = GetEntityCoords(Ped)
    local NumberKey = GetKeyByNumber(ChatNumber)
    local ChatKey = GetKeyByDate(NumberKey, ChatDate)
    if PhoneData.Chats[NumberKey] ~= nil then
        if(PhoneData.Chats[NumberKey].messages == nil) then
            PhoneData.Chats[NumberKey].messages = {}
        end
        if PhoneData.Chats[NumberKey].messages[ChatKey] ~= nil then
            if ChatType == "message" then
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = ChatMessage,
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {},
                }
            elseif ChatType == "location" then
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = "Shared Location",
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {
                        x = Pos.x,
                        y = Pos.y,
                    },
                }
            elseif ChatType == "picture" then
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = "Photo",
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {
                        url = data.url
                    },
                }
            end
            TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, false)
            NumberKey = GetKeyByNumber(ChatNumber)
            ReorganizeChats(NumberKey)
        else
            PhoneData.Chats[NumberKey].messages[#PhoneData.Chats[NumberKey].messages+1] = {
                date = ChatDate,
                messages = {},
            }
            ChatKey = GetKeyByDate(NumberKey, ChatDate)
            if ChatType == "message" then
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = ChatMessage,
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {},
                }
            elseif ChatType == "location" then
                PhoneData.Chats[NumberKey].messages[ChatDate].messages[#PhoneData.Chats[NumberKey].messages[ChatDate].messages+1] = {
                    message = "Shared Location",
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {
                        x = Pos.x,
                        y = Pos.y,
                    },
                }
            elseif ChatType == "picture" then
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = "Photo",
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = ChatType,
                    data = {
                        url = data.url
                    },
                }
            end
            TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, true)
            NumberKey = GetKeyByNumber(ChatNumber)
            ReorganizeChats(NumberKey)
        end
    else
        PhoneData.Chats[#PhoneData.Chats+1] = {
            name = IsNumberInContacts(ChatNumber),
            number = ChatNumber,
            messages = {},
        }
        NumberKey = GetKeyByNumber(ChatNumber)
        PhoneData.Chats[NumberKey].messages[#PhoneData.Chats[NumberKey].messages+1] = {
            date = ChatDate,
            messages = {},
        }
        ChatKey = GetKeyByDate(NumberKey, ChatDate)
        if ChatType == "message" then
            PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                message = ChatMessage,
                time = ChatTime,
                sender = PhoneData.PlayerData.identifier,
                type = ChatType,
                data = {},
            }
        elseif ChatType == "location" then
            PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                message = "Shared Location",
                time = ChatTime,
                sender = PhoneData.PlayerData.identifier,
                type = ChatType,
                data = {
                    x = Pos.x,
                    y = Pos.y,
                },
            }
        elseif ChatType == "picture" then
            PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                message = "Photo",
                time = ChatTime,
                sender = PhoneData.PlayerData.identifier,
                type = ChatType,
                data = {
                    url = data.url
                },
            }
        end
        TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, true)
        NumberKey = GetKeyByNumber(ChatNumber)
        ReorganizeChats(NumberKey)
    end

    ESX.TriggerServerCallback('logi_phone:server:GetContactPicture', function(Chat)
        SendNUIMessage({
            action = "UpdateChat",
            chatData = Chat,
            chatNumber = ChatNumber,
        })
    end,  PhoneData.Chats[GetKeyByNumber(ChatNumber)])
end)

RegisterNUICallback("TakePhoto", function(data,cb)
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    CreateMobilePhone(1)
    CellCamActivate(true, true)
    takePhoto = true
    while takePhoto do
        if IsControlJustPressed(1, 27) then
            frontCam = not frontCam
            CellFrontCamActivate(frontCam)
        elseif IsControlJustPressed(1, 177) then
            DestroyMobilePhone()
            CellCamActivate(false, false)
            cb(json.encode({ url = nil }))
            OpenPhone()
            takePhoto = false
            break
        elseif IsControlJustPressed(1, 176) then
            ESX.TriggerServerCallback("logi_phone:server:GetWebhook",function(hook)
                TriggerEvent('ttyy_notify:Alert', "SUCCESS", 'Touching up photo...', 5000, "success")
                exports['screenshot-basic']:requestScreenshotUpload(tostring(hook), "files[]", function(data)
                    local image = json.decode(data)
                    DestroyMobilePhone()
                    CellCamActivate(false, false)
                    TriggerServerEvent('logi_phone:server:addImageToGallery', image.attachments[1].proxy_url)
                    Wait(400)
                    TriggerServerEvent('logi_phone:server:getImageFromGallery')
                    cb(json.encode(image.attachments[1].proxy_url))
                    TriggerEvent('ttyy_notify:Alert', "SUCCESS", 'Photo saved!', 5000, "success")
                    OpenPhone()
                end)
            end)

            takePhoto = false
        end
          HideHudComponentThisFrame(7)
          HideHudComponentThisFrame(8)
          HideHudComponentThisFrame(9)
          HideHudComponentThisFrame(6)
          HideHudComponentThisFrame(19)
          HideHudAndRadarThisFrame()
          EnableAllControlActions(0)
          Wait(0)
    end
end)

-- Handler Events
RegisterNetEvent('ttyy_phone:ambulancedistress', function()
    ESX.TriggerServerCallback("esx_ambulancejob:getActiveAmbulance",function(numbertochat, ChatDate, ChatTime)
        for k,v in pairs(numbertochat) do
            local ChatNumber = v
            local Ped = PlayerPedId()
            local Pos = GetEntityCoords(Ped)
            local NumberKey = GetKeyByNumber(ChatNumber)
            local ChatKey = GetKeyByDate(NumberKey, ChatDate)
            if PhoneData.Chats[NumberKey] ~= nil then
                if(PhoneData.Chats[NumberKey].messages == nil) then
                    PhoneData.Chats[NumberKey].messages = {}
                end
                if PhoneData.Chats[NumberKey].messages[ChatKey] ~= nil then
                    PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                        message = "[MEDIC SIGNAL] Shared Location",
                        time = ChatTime,
                        sender = PhoneData.PlayerData.identifier,
                        type = 'location',
                        data = {
                            x = Pos.x,
                            y = Pos.y,
                        },
                    }
                    TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, false)
                    NumberKey = GetKeyByNumber(ChatNumber)
                    ReorganizeChats(NumberKey)
                else
                    PhoneData.Chats[NumberKey].messages[#PhoneData.Chats[NumberKey].messages+1] = {
                        date = ChatDate,
                        messages = {},
                    }
                    ChatKey = GetKeyByDate(NumberKey, ChatDate)
                    PhoneData.Chats[NumberKey].messages[ChatDate].messages[#PhoneData.Chats[NumberKey].messages[ChatDate].messages+1] = {
                        message = "[MEDIC SIGNAL] Shared Location",
                        time = ChatTime,
                        sender = PhoneData.PlayerData.identifier,
                        type = 'location',
                        data = {
                            x = Pos.x,
                            y = Pos.y,
                        },
                    }
                    TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, true)
                    NumberKey = GetKeyByNumber(ChatNumber)
                    ReorganizeChats(NumberKey)
                end
            else
                PhoneData.Chats[#PhoneData.Chats+1] = {
                    name = IsNumberInContacts(ChatNumber),
                    number = ChatNumber,
                    messages = {},
                }
                NumberKey = GetKeyByNumber(ChatNumber)
                PhoneData.Chats[NumberKey].messages[#PhoneData.Chats[NumberKey].messages+1] = {
                    date = ChatDate,
                    messages = {},
                }
                ChatKey = GetKeyByDate(NumberKey, ChatDate)
                PhoneData.Chats[NumberKey].messages[ChatKey].messages[#PhoneData.Chats[NumberKey].messages[ChatKey].messages+1] = {
                    message = "[MEDIC SIGNAL] Shared Location",
                    time = ChatTime,
                    sender = PhoneData.PlayerData.identifier,
                    type = 'location',
                    data = {
                        x = Pos.x,
                        y = Pos.y,
                    },
                }
                TriggerServerEvent('logi_phone:server:UpdateMessages', PhoneData.Chats[NumberKey].messages, ChatNumber, true)
                NumberKey = GetKeyByNumber(ChatNumber)
                ReorganizeChats(NumberKey)
            end
        
            ESX.TriggerServerCallback('logi_phone:server:GetContactPicture', function(Chat)
                SendNUIMessage({
                    action = "UpdateChat",
                    chatData = Chat,
                    chatNumber = ChatNumber,
                })
            end,  PhoneData.Chats[GetKeyByNumber(ChatNumber)])
        end
    end)
end)

RegisterNetEvent('esx:playerLoaded', function()
    ESX.PlayerLoaded = true
    LoadPhone()
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    PhoneData = {
        MetaData = {},
        isOpen = false,
        PlayerData = nil,
        Contacts = {},
        Tweets = {},
        MentionedTweets = {},
        Hashtags = {},
        Chats = {},
        Invoices = {},
        CallData = {},
        RecentCalls = {},
        Garage = {},
        Mails = {},
        Adverts = {},
        GarageVehicles = {},
        AnimationData = {
            lib = nil,
            anim = nil,
        },
        SuggestedContacts = {},
    }
end)

RegisterNetEvent('esx:setJob', function(JobInfo)
    SendNUIMessage({
        action = "UpdateApplications",
        JobData = JobInfo,
        applications = Config.PhoneApplications
    })

    PlayerJob = JobInfo
end)

-- Events

RegisterNetEvent('logi_phone:client:TransferMoney', function(amount, newmoney)
    PhoneData.PlayerData.accounts['bank'].money = newmoney
    SendNUIMessage({ action = "PhoneNotification", PhoneNotify = { title = "Bank", text = "&#36;"..amount.." added to your account!", icon = "fas fa-university", color = "#8c7ae6", }, })
    SendNUIMessage({ action = "UpdateBank", NewBalance = PhoneData.PlayerData.accounts['bank'].money })
end)

RegisterNetEvent('logi_phone:client:UpdateTweets', function(src, Tweets, NewTweetData, delete)
    PhoneData.Tweets = Tweets
    local MyPlayerId = PhoneData.PlayerData.source
    if not delete then 
        if src ~= MyPlayerId then
            SendNUIMessage({
                action = "PhoneNotification",
                PhoneNotify = {
                    title = "New Tweet: (@"..NewTweetData.firstName.." "..NewTweetData.lastName..")",
                    text = "A new tweet as been posted.",
                    icon = "fab fa-twitter",
                    color = "#1DA1F2",
                },
            })
            SendNUIMessage({
                action = "UpdateTweets",
                Tweets = PhoneData.Tweets
            })
        else
            SendNUIMessage({
                action = "PhoneNotification",
                PhoneNotify = {
                    title = "Twitter",
                    text = "Tweet posted!",
                    icon = "fab fa-twitter",
                    color = "#1DA1F2",
                    timeout = 1000,
                },
            })
        end
    else
        if src == MyPlayerId then
            SendNUIMessage({
                action = "PhoneNotification",
                PhoneNotify = {
                    title = "Twitter",
                    text = "Tweet deleted!",
                    icon = "fab fa-twitter",
                    color = "#1DA1F2",
                    timeout = 1000,
                },
            })
        end
        SendNUIMessage({
            action = "UpdateTweets",
            Tweets = PhoneData.Tweets
        })
    end
end)

RegisterNetEvent('logi_phone:client:RaceNotify', function(message)
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = "Racing",
            text = message,
            icon = "fas fa-flag-checkered",
            color = "#353b48",
            timeout = 3500,
        },
    })
end)

RegisterNetEvent('logi_phone:client:AddRecentCall', function(data, time, type)
    PhoneData.RecentCalls[#PhoneData.RecentCalls+1] = {
        name = IsNumberInContacts(data.number),
        time = time,
        type = type,
        number = data.number,
        anonymous = data.anonymous
    }
    TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "phone")
    Config.PhoneApplications["phone"].Alerts = Config.PhoneApplications["phone"].Alerts + 1
    SendNUIMessage({
        action = "RefreshAppAlerts",
        AppData = Config.PhoneApplications
    })
end)

RegisterNetEvent("logi_phone-new:client:BankNotify", function(text)
    SendNUIMessage({
        action = "PhoneNotification",
        NotifyData = {
            title = "Bank",
            content = text,
            icon = "fas fa-university",
            timeout = 3500,
            color = "#ff002f",
        },
    })
end)

RegisterNetEvent('logi_phone:client:NewMailNotify', function(MailData)
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = "Mail",
            text = "New E-Mail from: "..MailData.sender,
            icon = "fas fa-envelope",
            color = "#ff002f",
            timeout = 1500,
        },
    })
    Config.PhoneApplications['mail'].Alerts = Config.PhoneApplications['mail'].Alerts + 1
    TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "mail")
end)

RegisterNetEvent('logi_phone:client:UpdateMails', function(NewMails)
    SendNUIMessage({
        action = "UpdateMails",
        Mails = NewMails
    })
    PhoneData.Mails = NewMails
end)

RegisterNetEvent('logi_phone:client:UpdateAdvertsDel', function(Adverts)
    PhoneData.Adverts = Adverts
    SendNUIMessage({
        action = "RefreshAdverts",
        Adverts = PhoneData.Adverts
    })
end)

RegisterNetEvent('logi_phone:client:UpdateAdverts', function(Adverts, LastAd)
    PhoneData.Adverts = Adverts
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = "Advertisement",
            text = "New ad posted: "..LastAd,
            icon = "fas fa-ad",
            color = "#ff8f1a",
            timeout = 2500,
        },
    })
    SendNUIMessage({
        action = "RefreshAdverts",
        Adverts = PhoneData.Adverts
    })
end)

RegisterNetEvent('logi_phone:client:BillingEmail', function(data, paid, name)
    if paid then
        TriggerServerEvent('logi_phone:server:sendNewMail', {
            sender = 'Billing Department',
            subject = 'Invoice Paid',
            message = 'Invoice Has Been Paid From '..name..' In The Amount Of $'..data.amount,
        })
    else
        TriggerServerEvent('logi_phone:server:sendNewMail', {
            sender = 'Billing Department',
            subject = 'Invoice Declined',
            message = 'Invoice Has Been Declined From '..name..' In The Amount Of $'..data.amount,
        })
    end
end)

RegisterNetEvent('logi_phone:client:CancelCall', function()
    if PhoneData.CallData.CallType == "ongoing" then
        SendNUIMessage({
            action = "CancelOngoingCall"
        })
        exports['pma-voice']:removePlayerFromCall(PhoneData.CallData.CallId)
    end
    PhoneData.CallData.CallType = nil
    PhoneData.CallData.InCall = false
    PhoneData.CallData.AnsweredCall = false
    PhoneData.CallData.TargetData = {}

    if not PhoneData.isOpen then
        StopAnimTask(PlayerPedId(), PhoneData.AnimationData.lib, PhoneData.AnimationData.anim, 2.5)
        deletePhone()
        PhoneData.AnimationData.lib = nil
        PhoneData.AnimationData.anim = nil
    else
        PhoneData.AnimationData.lib = nil
        PhoneData.AnimationData.anim = nil
    end

    TriggerServerEvent('logi_phone:server:SetCallState', false)

    if not PhoneData.isOpen then
        SendNUIMessage({
            action = "PhoneNotification",
            NotifyData = {
                title = "Phone",
                content = "Call ended",
                icon = "fas fa-phone",
                timeout = 3500,
                color = "#e84118",
            },
        })
    else
        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Phone",
                text = "Call ended",
                icon = "fas fa-phone",
                color = "#e84118",
            },
        })

        SendNUIMessage({
            action = "SetupHomeCall",
            CallData = PhoneData.CallData,
        })

        SendNUIMessage({
            action = "CancelOutgoingCall",
        })
    end
end)

RegisterNUICallback('phone-silent-button', function(data,cb)
    if CallVolume == tonumber("0.2") then
        CallVolume = 0
        TriggerEvent('ttyy_notify:Alert', "SUCCESS", "Silent Mode On", 5000, "success")
        cb(true)
    else
        CallVolume = 0.2
        TriggerEvent('ttyy_notify:Alert', "SUCCESS", "Silent Mode Off", 5000, "success")
        cb(false)
    end
end)

RegisterNetEvent('logi_phone:client:GetCalled', function(CallerNumber, CallId, AnonymousCall)
    local RepeatCount = 0
    local CallData = {
        number = CallerNumber,
        name = IsNumberInContacts(CallerNumber),
        anonymous = AnonymousCall
    }

    if AnonymousCall then
        CallData.name = "Anonymous"
    end

    PhoneData.CallData.CallType = "incoming"
    PhoneData.CallData.InCall = true
    PhoneData.CallData.AnsweredCall = false
    PhoneData.CallData.TargetData = CallData
    PhoneData.CallData.CallId = CallId

    TriggerServerEvent('logi_phone:server:SetCallState', true)

    SendNUIMessage({
        action = "SetupHomeCall",
        CallData = PhoneData.CallData,
    })

    for i = 1, Config.CallRepeats + 1, 1 do
        if not PhoneData.CallData.AnsweredCall then
            if RepeatCount + 1 ~= Config.CallRepeats + 1 then
                if PhoneData.CallData.InCall then
                    ESX.TriggerServerCallback('logi_phone:server:HasPhone', function(HasPhone)
                        if HasPhone then
                            RepeatCount = RepeatCount + 1
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "ringing", CallVolume)

                            if not PhoneData.isOpen then
                                SendNUIMessage({
                                    action = "IncomingCallAlert",
                                    CallData = PhoneData.CallData.TargetData,
                                    Canceled = false,
                                    AnonymousCall = AnonymousCall,
                                })
                            end
                        end
                    end)
                else
                    SendNUIMessage({
                        action = "IncomingCallAlert",
                        CallData = PhoneData.CallData.TargetData,
                        Canceled = true,
                        AnonymousCall = AnonymousCall,
                    })
                    TriggerServerEvent('logi_phone:server:AddRecentCall', "missed", CallData)
                    break
                end
                Wait(Config.RepeatTimeout)
            else
                SendNUIMessage({
                    action = "IncomingCallAlert",
                    CallData = PhoneData.CallData.TargetData,
                    Canceled = true,
                    AnonymousCall = AnonymousCall,
                })
                TriggerServerEvent('logi_phone:server:AddRecentCall', "missed", CallData)
                break
            end
        else
            TriggerServerEvent('logi_phone:server:AddRecentCall', "missed", CallData)
            break
        end
    end
end)

RegisterNetEvent('logi_phone:client:UpdateMessages', function(ChatMessages, SenderNumber, New)
    local NumberKey = GetKeyByNumber(SenderNumber)

    if New then
	    PhoneData.Chats[#PhoneData.Chats+1] = {
            name = IsNumberInContacts(SenderNumber),
            number = SenderNumber,
            messages = {},
        }

        NumberKey = GetKeyByNumber(SenderNumber)

        PhoneData.Chats[NumberKey] = {
            name = IsNumberInContacts(SenderNumber),
            number = SenderNumber,
            messages = ChatMessages
        }

        if PhoneData.Chats[NumberKey].Unread ~= nil then
            PhoneData.Chats[NumberKey].Unread = PhoneData.Chats[NumberKey].Unread + 1
        else
            PhoneData.Chats[NumberKey].Unread = 1
        end

        if PhoneData.isOpen then
            if SenderNumber ~= PhoneData.PlayerData.phonedata['phone_number'] then
                SendNUIMessage({
                    action = "PhoneNotification",
                    PhoneNotify = {
                        title = "Messages",
                        text = "New message: "..IsNumberInContacts(SenderNumber),
                        icon = "fas fa-comment",
                        color = "#25D366",
                        timeout = 1500,
                    },
                })
            else
                SendNUIMessage({
                    action = "PhoneNotification",
                    PhoneNotify = {
                        title = "Messages",
                        text = "Messaged yourself?",
                        icon = "fas fa-comment",
                        color = "#25D366",
                        timeout = 4000,
                    },
                })
            end

            NumberKey = GetKeyByNumber(SenderNumber)
            ReorganizeChats(NumberKey)

            Wait(100)
            ESX.TriggerServerCallback('logi_phone:server:GetContactPictures', function(Chats)
                SendNUIMessage({
                    action = "UpdateChat",
                    chatData = Chats[GetKeyByNumber(SenderNumber)],
                    chatNumber = SenderNumber,
                    Chats = Chats,
                })
            end,  PhoneData.Chats)
        else
	    SendNUIMessage({
	        action = "PhoneNotification",
	        PhoneNotify = {
		    title = "Messages",
		    text = "New message: "..IsNumberInContacts(SenderNumber),
		    icon = "fas fa-comment",
		    color = "#25D366",
		    timeout = 3500,
	        },
	    })
            Config.PhoneApplications['whatsapp'].Alerts = Config.PhoneApplications['whatsapp'].Alerts + 1
            TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "whatsapp")
        end
    else
        PhoneData.Chats[NumberKey].messages = ChatMessages

        if PhoneData.Chats[NumberKey].Unread ~= nil then
            PhoneData.Chats[NumberKey].Unread = PhoneData.Chats[NumberKey].Unread + 1
        else
            PhoneData.Chats[NumberKey].Unread = 1
        end

        if PhoneData.isOpen then
            if SenderNumber ~= PhoneData.PlayerData.phonedata['phone_number'] then
                SendNUIMessage({
                    action = "PhoneNotification",
                    PhoneNotify = {
                        title = "Messages",
                        text = "New message: "..IsNumberInContacts(SenderNumber),
                        icon = "fas fa-comment",
                        color = "#25D366",
                        timeout = 1500,
                    },
                })
            else
                SendNUIMessage({
                    action = "PhoneNotification",
                    PhoneNotify = {
                        title = "Messages",
                        text = "Messaged yourself?",
                        icon = "fas fa-comment",
                        color = "#25D366",
                        timeout = 4000,
                    },
                })
            end

            NumberKey = GetKeyByNumber(SenderNumber)
            ReorganizeChats(NumberKey)

            Wait(100)
            ESX.TriggerServerCallback('logi_phone:server:GetContactPictures', function(Chats)
                SendNUIMessage({
                    action = "UpdateChat",
                    chatData = Chats[GetKeyByNumber(SenderNumber)],
                    chatNumber = SenderNumber,
                    Chats = Chats,
                })
            end,  PhoneData.Chats)
        else
            SendNUIMessage({
                action = "PhoneNotification",
                PhoneNotify = {
                    title = "Messages",
                    text = "New message: "..IsNumberInContacts(SenderNumber),
                    icon = "fas fa-comment",
                    color = "#25D366",
                    timeout = 3500,
                },
            })

            NumberKey = GetKeyByNumber(SenderNumber)
            ReorganizeChats(NumberKey)

            Config.PhoneApplications['whatsapp'].Alerts = Config.PhoneApplications['whatsapp'].Alerts + 1
            TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "whatsapp")
        end
    end
end)

RegisterNetEvent('logi_phone:client:RemoveBankMoney', function(amount)
    if amount > 0 then
        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Bank",
                text = "$"..amount.." removed from your balance!",
                icon = "fas fa-university",
                color = "#ff002f",
                timeout = 3500,
            },
        })
    end
end)

RegisterNetEvent('logi_phone:RefreshPhone', function()
    LoadPhone()
    SetTimeout(250, function()
        SendNUIMessage({
            action = "RefreshAlerts",
            AppData = Config.PhoneApplications,
        })
    end)
end)

RegisterNetEvent('logi_phone:client:AddNewSuggestion', function(SuggestionData)
    PhoneData.SuggestedContacts[#PhoneData.SuggestedContacts+1] = SuggestionData
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = "Phone",
            text = "New suggested contact!",
            icon = "fa fa-phone-alt",
            color = "#04b543",
            timeout = 1500,
        },
    })
    Config.PhoneApplications["phone"].Alerts = Config.PhoneApplications["phone"].Alerts + 1
    TriggerServerEvent('logi_phone:server:SetPhoneAlerts', "phone", Config.PhoneApplications["phone"].Alerts)
end)

RegisterNetEvent('logi_phone:client:UpdateHashtags', function(Handle, msgData)
    if PhoneData.Hashtags[Handle] ~= nil then
        PhoneData.Hashtags[Handle].messages[#PhoneData.Hashtags[Handle].messages+1] = msgData
    else
        PhoneData.Hashtags[Handle] = {
            hashtag = Handle,
            messages = {}
        }
        PhoneData.Hashtags[Handle].messages[#PhoneData.Hashtags[Handle].messages+1] = msgData
    end

    SendNUIMessage({
        action = "UpdateHashtags",
        Hashtags = PhoneData.Hashtags,
    })
end)

RegisterNetEvent('logi_phone:client:AnswerCall', function()
    if (PhoneData.CallData.CallType == "incoming" or PhoneData.CallData.CallType == "outgoing") and PhoneData.CallData.InCall and not PhoneData.CallData.AnsweredCall then
        PhoneData.CallData.CallType = "ongoing"
        PhoneData.CallData.AnsweredCall = true
        PhoneData.CallData.CallTime = 0

        SendNUIMessage({ action = "AnswerCall", CallData = PhoneData.CallData})
        SendNUIMessage({ action = "SetupHomeCall", CallData = PhoneData.CallData})

        TriggerServerEvent('logi_phone:server:SetCallState', true)

        if PhoneData.isOpen then
            DoPhoneAnimation('cellphone_text_to_call')
        else
            DoPhoneAnimation('cellphone_call_listen_base')
        end

        CreateThread(function()
            while true do
                if PhoneData.CallData.AnsweredCall then
                    PhoneData.CallData.CallTime = PhoneData.CallData.CallTime + 1
                    SendNUIMessage({
                        action = "UpdateCallTime",
                        Time = PhoneData.CallData.CallTime,
                        Name = PhoneData.CallData.TargetData.name,
                    })
                else
                    break
                end

                Wait(1000)
            end
        end)
        exports['pma-voice']:addPlayerToCall(PhoneData.CallData.CallId)
    else
        PhoneData.CallData.InCall = false
        PhoneData.CallData.CallType = nil
        PhoneData.CallData.AnsweredCall = false

        SendNUIMessage({
            action = "PhoneNotification",
            PhoneNotify = {
                title = "Phone",
                text = "You don't have an incoming call...",
                icon = "fas fa-phone",
                color = "#e84118",
            },
        })
    end
end)

RegisterNetEvent('logi_phone:client:addPoliceAlert', function(alertData)
    PlayerJob = ESX.PlayerData.job
    if PlayerJob.name == 'police' then
        SendNUIMessage({
            action = "AddPoliceAlert",
            alert = alertData,
        })
    end
end)

RegisterNetEvent('logi_phone:client:GiveContactDetails', function()
    local player, distance = GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local PlayerId = GetPlayerServerId(player)
        TriggerServerEvent('logi_phone:server:GiveContactDetails', PlayerId)
    else
        TriggerEvent('ttyy_notify:Alert', "ERROR", "No one nearby!", 5000, "error")
    end
end)

RegisterNetEvent('logi_phone:client:UpdateLapraces', function()
    SendNUIMessage({
        action = "UpdateRacingApp",
    })
end)

RegisterNetEvent('logi_phone:client:GetMentioned', function(TweetMessage, AppAlerts)
    Config.PhoneApplications["twitter"].Alerts = AppAlerts
    SendNUIMessage({ action = "PhoneNotification", PhoneNotify = { title = "New mention!", text = TweetMessage.message, icon = "fab fa-twitter", color = "#1DA1F2", }, })
    local TweetMessage = {firstName = TweetMessage.firstName, lastName = TweetMessage.lastName, message = escape_str(TweetMessage.message), time = TweetMessage.time, picture = TweetMessage.picture}
    PhoneData.MentionedTweets[#PhoneData.MentionedTweets+1] = TweetMessage
    SendNUIMessage({ action = "RefreshAppAlerts", AppData = Config.PhoneApplications })
    SendNUIMessage({ action = "UpdateMentionedTweets", Tweets = PhoneData.MentionedTweets })
end)

RegisterNetEvent('logi_phone:refreshImages', function(images)
    PhoneData.Images = images
end)

RegisterNetEvent("logi_phone:client:CustomNotification", function(title, text, icon, color, timeout) -- Send a PhoneNotification to the phone from anywhere
    SendNUIMessage({
        action = "PhoneNotification",
        PhoneNotify = {
            title = title,
            text = text,
            icon = icon,
            color = color,
            timeout = timeout,
        },
    })
end)


-- Threads

CreateThread(function()
    if ESX.PlayerLoaded then
        Wait(500)
        LoadPhone()
        PublicPhone()
    end
end)

CreateThread(function()
    while true do
        if PhoneData.isOpen then
            SendNUIMessage({
                action = "UpdateTime",
                InGameTime = CalculateTimeToDisplay(),
            })
        end
        Wait(1000)
    end
end)

CreateThread(function()
    while true do
        Wait(60000)
        if ESX.PlayerLoaded then
            ESX.TriggerServerCallback('logi_phone:server:GetPhoneData', function(pData)
                if pData.PlayerContacts ~= nil and next(pData.PlayerContacts) ~= nil then
                    PhoneData.Contacts = pData.PlayerContacts
                end
                SendNUIMessage({
                    action = "RefreshContacts",
                    Contacts = PhoneData.Contacts
                })
            end)
        end
    end
end)


-- ping

RegisterNUICallback('AcceptPingPlayer', function()
    TriggerServerEvent('logi_pings:server:acceptping')
    TriggerEvent("logi_phone:ping:client:UiUppers", false)
end)

RegisterNUICallback('rejectPingPlayer', function()
    TriggerServerEvent('logi_pings:server:denyping')
    TriggerEvent("logi_phone:ping:client:UiUppers", false)
end)

RegisterNUICallback('SendPingPlayer', function(data)
    TriggerServerEvent('logi_pings:server:SendPing2', data.id)
    
end)

local CurrentPings = {}

RegisterNetEvent('logi_pings:client:DoPing', function(id)
    TriggerServerEvent('logi_pings:server:SendPing', id)
end)

RegisterNetEvent('logi_pings:client:AcceptPing', function(PingData, SenderData)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    TriggerServerEvent('logi_pings:server:SendLocation', PingData, SenderData)
end)

RegisterNetEvent('logi_pings:client:SendLocation', function(PingData, SenderData)
    TriggerEvent('ttyy_notify:Alert', "SUCCESS", "Their location has been blipped on your map", 5000, "success")

    CurrentPings[PingData.sender] = AddBlipForCoord(PingData.coords.x, PingData.coords.y, PingData.coords.z)
    SetBlipSprite(CurrentPings[PingData.sender], 280)
    SetBlipDisplay(CurrentPings[PingData.sender], 4)
    SetBlipScale(CurrentPings[PingData.sender], 1.1)
    SetBlipAsShortRange(CurrentPings[PingData.sender], false)
    SetBlipColour(CurrentPings[PingData.sender], 0)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Friend")
    EndTextCommandSetBlipName(CurrentPings[PingData.sender])

    SetTimeout(5 * (60 * 1000), function()
        TriggerEvent('ttyy_notify:Alert', "ERROR", 'Ping '..PingData.sender..' has expired...', 5000, "error")
        RemoveBlip(CurrentPings[PingData.sender])
        CurrentPings[PingData.sender] = nil
        TriggerEvent("logi_phone:ping:client:UiUppers", false)
    end)
end)

RegisterNetEvent('logi_phone:ping:client:UiUppers', function(toggle)
    if toggle then
        SendNUIMessage({
            action = "acceptrejectBlock",
        })
    else
        SendNUIMessage({
            action = "acceptrejectNone",
        })
    end
end)

RegisterNUICallback('GetJobCentersJobs', function(data, cb)
    cb(Config.JobCenter)
end)

RegisterNUICallback('CasinoPhoneJobCenter', function(data)
    if data.action == 1 then
        TriggerServerEvent('logi_phone:server:SetJobJobCenter', data)
    elseif data.action == 2 then
        SetNewWaypoint(data.x, data.y)
        TriggerEvent('ttyy_notify:Alert', "SUCCESS", "GPS set!", 5000, "success")
    end
end)

RegisterNUICallback('employment_CreateJobGroup', function(data)
    TriggerServerEvent('logi_phone:server:employment_CreateJobGroup', data)
end)

RegisterNetEvent('logi_phone:client:EveryoneGrupAddsForAll', function(data)
    SendNUIMessage({
        action = "GroupAddDIV",
        datas = data,
    })
end)

RegisterNUICallback('employment_DeleteGroup', function(data)
    TriggerServerEvent('logi_phone:server:employment_DeleteGroup', data)
end)

RegisterNUICallback('GetGroupsApp', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetGroupsApp', function(HasGroups)
        cb(HasGroups)
    end)
end)

RegisterNUICallback('employment_JoinTheGroup', function(data)
    TriggerServerEvent('logi_phone:server:employment_JoinTheGroup', data)
end)

RegisterNUICallback('employment_leave_grouped', function(data)
    TriggerServerEvent('logi_phone:server:employment_leave_grouped', data)
end)

RegisterNUICallback('employment_CheckPlayerNames', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:employment_CheckPlayerNames', function(HasName)
        cb(HasName)
    end, data.id)
end)

RegisterNUICallback('SendBillForPlayer_debt', function(data)
    TriggerServerEvent('logi_phone:server:SendBillForPlayer_debt', data)
end)

RegisterNUICallback('GetHasBills_debt', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetHasBills_debt', function(Has)
        cb(Has)
    end)
end)

RegisterNUICallback('debit_AcceptBillForPay', function(data)
    TriggerServerEvent('logi_phone:server:debit_AcceptBillForPay', data)
end)

RegisterNetEvent('logi_phone:RefreshPhoneForDebt', function()
    SendNUIMessage({
        action = "DebtRefresh",
    })
end)

RegisterNUICallback('wenmo_givemoney_toID', function(data)
    TriggerServerEvent('logi_phone:server:wenmo_givemoney_toID', data)
end)

RegisterNetEvent('hud:client:OnMoneyChange', function(type, amount, isMinus, reason)
    if type == "bank" then
        if isMinus then
            SendNUIMessage({
                action = "ChangeMoney_Wenmo",
                Color = "#f5a15b",
                Amount = "-$"..amount,
                Reason = reason,
            })
        else
            SendNUIMessage({
                action = "ChangeMoney_Wenmo",
                Color = "#8ee074",
                Amount = "+$"..amount,
                Reason = reason,
            })
        end
    end
end)

RegisterNUICallback('documents_Save_Note_As', function(data)
    TriggerServerEvent('logi_phone:server:documents_Save_Note_As', data)
end)

RegisterNUICallback('GetNote_for_Documents_app', function(data, cb)
    ESX.TriggerServerCallback('logi_phone:server:GetNote_for_Documents_app', function(Has)
        cb(Has)
    end)
end)

RegisterNetEvent('logi_phone:RefReshNotes_Free_Documents', function()
    SendNUIMessage({
        action = "DocumentRefresh",
    })
end)

RegisterNetEvent('stx-phone:client:publocphoneopen',function()
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({type = 'publicphoneopen'})
end)

RegisterNUICallback('publicphoneclose', function()
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
end)

RegisterNUICallback('openHelp', function()  
    TriggerEvent('')
end)