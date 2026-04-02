ESX = nil

Citizen.CreateThread(function()
    while true do
        Wait(5)
        if ESX then
       
        else
            ESX = nil
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        end
    end
end)
 
local isJudge = false
local isPolice = false
local isMedic = false
local isDoctor = false
local isNews = false
local isInstructorMode = false
local myJob = "unemployed"
local isHandcuffed = false
local isHandcuffedAndWalking = false
local hasOxygenTankOn = false
local gangNum = 0
local cuffStates = {}
 
rootMenuConfig =  {
    {
        id="phone",
        displayName = "Phone",
        icon="#phone",
        enableMenu = function()
            return not fuck
        end,
        functionName = "phone"
    },
    {
        id = "clothes",
        displayName = "Clothes",
        icon = "#clothes",
        enableMenu = function()
         
            return not fuck
        end,
        subMenus = {'pants','shirt','all','hat','mask','ear','glasses','shoes','bag'}
    },
    {
        id = "policeaction",
        displayName = "Police Action",
        icon = "#police-action",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            
            if PlayerData.job.name == "police" and not fuck then
                return true
            end
        end,
        subMenus = {'drag','borgol','lepasborgol','geledah','billing','masukpaksa','keluarpaksa','penjara'}
    },
    {
        id = "policevehaction",
        displayName = "Police Vehicle Action",
        icon = "#vehicle-options",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            
            if PlayerData.job.name == "police" and not fuck then
                return true
            end
        end,
        subMenus = {'bobol','impound2','impound','cekkendaraan'}
    },
    {
        id = "ambulanceaction",
        displayName = "Ems Action",
        icon = "#police-action",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            if PlayerData.job.name == "ambulance" and not fuck then
                return true
            end
        end,
        subMenus = {'revive','healkecil','healbesar','cekmati'}
    },
    {
        id = "pedagangaction",
        displayName = "Pedagang Action",
        icon = "#police-action",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            if PlayerData.job.name == "pedagang" and not fuck then
                return true
            end
        end,
        subMenus = {'billing'}
    },
    {
        id = "mechanicaction",
        displayName = "Mechanic Action",
        icon = "#police-action",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            if PlayerData.job.name == "mechanic" and not fuck then
                return true
            end
        end,
        subMenus = {'repair','wash','boboll','sitamech'}
    },
    {
        id = "mechanicvehicleaction",
        displayName = "Mechanic Vehicle Action",
        icon = "#police-action",
        enableMenu = function()
        local ped = PlayerPedId()
           PlayerData = ESX.GetPlayerData()
            if PlayerData.job.name == "mechanic" and not fuck then
                return true
            end
        end,
        subMenus = {'deployramp','removeramp','attachramp','detachramp'}
    },
    {
        id = "objectaction",
        displayName = "Object Interact",
        icon = "#box",
        enableMenu = function()
            if ESX.GetPlayerData().job.name == 'police' then
                return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
            end
        end,
        subMenus = {"cone", "tent", "barrier", 'delobject', 'light', 'roadsign'}
    },
    {
        id = "vehicle2",
        displayName = "Car Control",
        icon = "#vehicle-options",
        functionName = "vehcontrol:openExternal",
        enableMenu = function()
         
            return not fuck
        end
    },
    {
        id = "wallet",
        displayName = "Dokumen",
        icon = "#wallet",
        enableMenu = function()
         
            return not fuck
        end,
        subMenus = {'document','billing','report',}
    },


    {
        id = "identitas",
        displayName = "Identitas",
        icon = "#identitas",
        enableMenu = function()
            return not fuck
        end,
        subMenus = {"identitas:showId", "identitas:giveId", "identitas:showDriving", "identitas:giveDriving", "identitas:showFirearm", "identitas:giveFirearm"}
    },

    {
        id = "emotes",
        displayName = "Emotes",
        icon = "#general-emotes",
        functionName = "dp:RecieveMenu",
        enableMenu = function()
         
            return not fuck
        end
    },

    {
        id = "Tablet",
        displayName = "Tablet",
        icon = "#tablet",
        enableMenu = function()
         
            return not fuck
        end,
        functionName = "tablet"
    },

    
    {
        id = "citizenbadside",
        displayName = "Action",
        icon = "#k9-sniff",
        enableMenu = function()
            if ESX.GetPlayerData().job.name == 'mafia' or ESX.GetPlayerData().job.name == 'biker' or ESX.GetPlayerData().job.name == 'cartel' or ESX.GetPlayerData().job.name == 'gang3'  or ESX.GetPlayerData().job.name == 'gang2' or ESX.GetPlayerData().job.name == 'gang' then
                return (not isDead)
            end
        end,
        subMenus = {"steal", "seret2", "borgol2", "lepasborgol2", "masukpaksa2", "keluarpaksa2"}
    }
}

newSubMenus = {
    ['all'] = {
        title = "Satu Set",
        icon = "#all",
        functionName = "ttyy:pullbaju"
    },
    ['hat'] = {
        title = "Hat",
        icon = "#hat",
        functionName = "hat:"
    },
    ['mask'] = {
        title = "Mask",
        icon = "#mask",
        functionName = "mask:"
    },
    ['pants'] = {
        title = "Pants",
        icon = "#pants",
        functionName = "pants:"
    },
    ['ear'] = {
        title = "Ear",
        icon = "#ear",
        functionName = "ear:"
    },
    ['shoes'] = {
        title = "Shoes",
        icon = "#shoes",
        functionName = "shoes:"
    },
    ['glasses'] = {
        title = "Glasses",
        icon = "#glasses",
        functionName = "glasses:"
    },
    ['shirt'] = {
        title = "Shirt",
        icon = "#shirt",
        functionName = "shirt:"
    },
    ['bag'] = {
        title = "Bag",
        icon = "#bag",
        functionName = "tas:"
    },
    
    ['engine'] = {
        title = "On/Off",
        icon = "#toggle",
        functionName = "ttyy:mesin"
    },
    ['hood'] = {
        title = "Hood",
        icon = "#hood",
        functionName = "hood"
    },
    ['trunk'] = {
        title = "Trunk",
        icon = "#trunk",
        functionName = "trunk"
    },
    ['vehcontol'] = {
        title = "Vehicle Control",
        icon = "#left",
        functionName = "vehcontrolopen"
    },
    ['front:r'] = {
        title = "Front Right",
        icon = "#right",
        functionName = "front:R"
    },
    ['back:l'] = {
        title = "Back Left",
        icon = "#left",
        functionName = "back:L"
    },
    ['back:r'] = {
        title = "Back Right",
        icon = "#right",
        functionName = "back:R"
    },
    ['document'] = {
        title = "Document",
        icon = "#document",
        functionName = "document"
    },
    ['billing'] = {
        title = "Billing",
        icon = "#document",
        functionName = "ttyy:invoices"
    },

    ['report'] = {
        title = "Report",
        icon = "#document",
        functionName = "report"
    },

    ['ktp1'] = {
        title = "See ID",
        icon = "#police-check-licenses",
        functionName = "lihat:id"
    },
    ['ktp2'] = {
        title = "Show ID",
        icon = "#police-check-licenses",
        functionName = "tunjukkan:id"
    },
    ['sim1'] = {
        title = "See driver's license",
        icon = "#police-check",
        functionName = "lihat:sim"
    },
    ['sim2'] = {
        title = "Show driver's license",
        icon = "#police-check",
        functionName = "tunjukkan:kendaraan"
    },
    ['lisensi1'] = {
        title = "See Weapon license",
        icon = "#police-check-bank",
        functionName = "lihatlisensi"
    },
    ['lisensi2'] = {
        title = "Show Weapon license",
        icon = "#police-check-bank",
        functionName = "tunjukkan:senjata"
    },
    -- POLISI
    ['drag'] = {
        title = "Seret/Lepas Seret",
        icon = "#general-escort",
        functionName = "seret"
    },

    ['steal'] = {
        title = "Geledah",
        icon = "#general-escort",
        functionName = "steal"
    },

    ['seret2'] = {
        title = "Seret/Lepas Seret",
        icon = "#general-escort",
        functionName = "seret2"
    },

    ['masukpaksa2'] = {
        title = "Masukkin Paksa",
        icon = "#general-escort",
        functionName = "ttyy-badside:masukpaksa"
    },

    ['keluarpaksa2'] = {
        title = "Keluarin Paksa",
        icon = "#general-escort",
        functionName = "ttyy-badside:keluarpaksa"
    },

    ['borgol2'] = {
        title = "Ikat",
        icon = "#general-escort",
        functionName = "ttyy-badside:ikat"
    },

    ['lepasborgol2'] = {
        title = "Lepas Ikat",
        icon = "#general-escort",
        functionName = "ttyy-badside:lepasikat"
    },


    ['borgol'] = {
        title = "Borgol",
        icon = "#general-escort",
        functionName = "ttyy-police:borgol"
    },
    ['cekkendaraan'] = {
        title = "Cek Kendaraan",
        icon = "#general-escort",
        functionName = "ttyy-police:checkstnk"
    },
    ['lepasborgol'] = {
        title = "Lepas Borgol",
        icon = "#general-escort",
        functionName = "ttyy-police:lepasborgol"
    },
    ['impound'] = {
        title = "Menyita Samsat",
        icon = "#car",
        functionName = "epimpound:ShowImpoundMenu"
    },
    ['impound2'] = {
        title = "Menyita Asuransi",
        icon = "#car",
        functionName = "ttyy-police:sendtoinsurance"
    },
    ['bobol'] = {
        title = "Bobol Kendaraan",
        icon = "#car",
        functionName = "ttyy-police:bobol"
    },
    ['geledah'] = {
        title = "Geledah",
        icon = "#general-escort",
        functionName = "ttyy-police:geledah"
    },
    ['denda'] = {
        title = "Denda",
        icon = "#general-escort",
        functionName = "ttyy-police:fine"
    },
    ['masukpaksa'] = {
        title = "Masukkin Paksa",
        icon = "#general-escort",
        functionName = "ttyy-police:masukpaksa"
    },
    ['keluarpaksa'] = {
        title = "Keluarin Paksa",
        icon = "#general-escort",
        functionName = "ttyy-police:keluarpaksa"
    },
    -- EMS
    ['heal'] = {
        title = "Heal",
        icon = "#general-escort",
        functionName = "mk-ems:heal"
    },
    ['force:out'] = {
        title = "Force Out",
        icon = "#general-unseat-nearest",
        functionName = "uu-pol:keluarpaksa"
    },
    ['force:insert'] = {
        title = "Force Insert",
        icon = "#general-put-in-veh",
        functionName = "kk-pol:masukpaksa"
    },
    ['menukendaraan'] = {
        title = "Vehicle Interaction",
        icon = "#car",
        functionName = "kk-polisi:menukendaraanlspd"
    },
    ['shuff'] = {
        title = "Shuff",
        icon = "#shuffering",
        functionName = "Seat:Shuffle"
    },
    ['wash:car'] = {
        title = "Wash",
        icon = "#mech-wash",
        functionName = "ttyymech:wash"
    },
    ['door:car'] = {
        title = "Bobol",
        icon = "#mech-door",
        functionName = "ttyy-police:bobol"
    },
    ['kunci:ken'] = {
        title = "Lock Vehicle",
        icon = "#car",
        functionName = "kunciken"
    },

    --id

    ['identitas:showId'] = {
        title = "Melihat KTP",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:showId"
    },
    ['identitas:giveId'] = {
        title = "Menunjukkan KTP",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:giveId"
    },
    ['identitas:showDriving'] = {
        title = "Melihat SIM",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:showDriving"
    },
    ['identitas:giveDriving'] = {
        title = "Menunjukkan SIM",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:giveDriving"
    },
    ['identitas:showFirearm'] = {
        title = "Melihat Lisensi",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:showFirearm"
    },
    ['identitas:giveFirearm'] = {
        title = "Menunjukkan Lisensi",
        icon = "#identitas-menu",
        functionName = "ttyy_radmenu:identitas:giveFirearm"
    },  
    -- EMS
    ['revive'] = {
        title = "Revive",
        icon = "#general-escort",
        functionName = "emsrevive"
    },
    ['healkecil'] = {
        title = "Heal Kecil",
        icon = "#general-escort",
        functionName = "healkecil"
    },
    ['healbesar'] = {
        title = "Heal Besar",
        icon = "#general-escort",
        functionName = "healbesar"
    },
    ['masukkenems'] = {
        title = "Masukkan Paksa",
        icon = "#general-escort",
        functionName = "masukkinkenems"
    },
    ['keluarkenems'] = {
        title = "Keluarkan Paksa",
        icon = "#general-escort",
        functionName = "keluarkanems"
    },
    ['cekmati'] = {
        title = "Cek Penyebab Kematian",
        icon = "#general-escort",
        functionName = "esx_checkdeathcause:emsCheck"
    },
    ['giveaskes'] = {
        title = "Kasih Askes",
        icon = "#general-escort",
        functionName = "kasihaskes"
    },
    ['cabuttaskes'] = {
        title = "Cabut Askes",
        icon = "#general-escort",
        functionName = "cabutaskes"
    },
    -- Mecha
    ['repair'] = {
        title = "Repair",
        icon = "#mech-repair",
        functionName = "repairmech"
    },
    ['wash'] = {
        title = "Wash",
        icon = "#mech-wash",
        functionName = "cleanmech"
    },
    ['boboll'] = {
        title = "Bobol",
        icon = "#mech-door",
        functionName = "bobolmecha"
    },
    ['sitamech'] = {
        title = "Impound",
        icon = "#car",
        functionName = "sitamech"
    }, 
    ['deployramp'] = {
        title = "Deploy Ramp",
        icon = "#car",
        functionName = "ttyy_mechanic:DeployRamp"
    },
    ['removeramp'] = {
        title = "Remove Ramp",
        icon = "#car",
        functionName = "ttyy_mechanic:RemoveRamp"
    },
    ['attachramp'] = {
        title = "Attach Vehicle",
        icon = "#car",
        functionName = "ttyy_mechanic:AttachRamp"
    },
    ['detachramp'] = {
        title = "Detach Vehicle",
        icon = "#car",
        functionName = "ttyy_mechanic:DetachRamp"
    },

    -- TODO : PEDAGANG ACTION
    ['billingped'] = {
        title = "Billing",
        icon = "#car",
        functionName = "billingngontol"
    },
    -- TODO SPAWN OBJECT POLICE
    ['cone'] = {
        title = "Spawn Cone",
        icon = "#box",
        functionName = "police:client:spawnCone"
    },
    ['barrier'] = {
        title = "Spawn Barrier",
        icon = "#box",
        functionName = "police:client:spawnBarrier"
    },
    ['roadsign'] = {
        title = "Spawn Road Sign",
        icon = "#box",
        functionName = "police:client:spawnRoadSign"
    },
    ['tent'] = {
        title = "Spawn Tent",
        icon = "#box",
        functionName = "police:client:spawnTent"
    },
    ['light'] = {
        title = "Spawn Light",
        icon = "#box",
        functionName = "police:client:spawnLight"
    },
    ['delobject'] = {
        title = "Delete Object",
        icon = "#box",
        functionName = "police:client:deleteObject"
    },

    ['tablet'] = {
        title = "Tablet",
        icon = "#tablet",
        functionName = "tablet"
    },
}


function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

RegisterNetEvent('garasi')
AddEventHandler('garasi', function()
    ExecuteCommand('garasi')
end)

RegisterNetEvent('dp:RecieveMenu', function ()
    ExecuteCommand('openemote')
end)

RegisterNetEvent("tablet")
AddEventHandler("tablet", function()
    ExecuteCommand("tablet")
end)

RegisterNetEvent("document")
AddEventHandler("document", function()
    ExecuteCommand("documents")
end)

RegisterNetEvent("report")
AddEventHandler("report", function()
    ExecuteCommand("report")
end)

RegisterNetEvent('hape', function()
    ExecuteCommand('TooglePhone')
end)

RegisterNetEvent("phone")
AddEventHandler("phone", function()
    ExecuteCommand("phone")
end)
