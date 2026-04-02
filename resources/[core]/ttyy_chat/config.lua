Config = {}
--------------------------------
-- [Date Format]

Config.DateFormat = '%H:%M' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- [Staff Groups]

Config.StaffGroups = {
	'superadmin',
	'admin',
	'mod'
}

--------------------------------
-- [Clear Player Chat]

Config.AllowPlayersToClearTheirChat = true

Config.ClearChatCommand = 'clear'

--------------------------------
-- [Staff]

Config.EnableStaffCommand = true

Config.StaffCommand = 'staff'

Config.AllowStaffsToClearEveryonesChat = true

Config.ClearEveryonesChatCommand = 'clearall'

-- [Staff Only Chat]

Config.EnableStaffOnlyCommand = true

Config.StaffOnlyCommand = 'admin'

--------------------------------
-- [Advertisements]

Config.EnableAdvertisementCommand = true

Config.AdvertisementCommand = 'ad'

Config.AdvertisementPrice = 1000

Config.AdvertisementCooldown = 5 -- in minutes

--------------------------------
-- [Twitch]

Config.EnableTwitchCommand = true

Config.TwitchCommand = 'twitch'

-- Types of identifiers: steam: | license: | xbl: | live: | discord: | fivem: | ip:
Config.TwitchList = {
	'steam:110000134d0d4b8' -- Example, change this
}

--------------------------------
-- [Youtube]

Config.EnableYoutubeCommand = true

Config.YoutubeCommand = 'youtube'

-- Types of identifiers: steam: | license: | xbl: | live: | discord: | fivem: | ip:
Config.YoutubeList = {
	'steam:110000134d0d4b8' -- Example, change this
}

--------------------------------
-- [Twitter]

Config.EnableTwitterCommand = true

Config.TwitterCommand = 'twitter'

--------------------------------
-- [Police]

Config.EnablePoliceCommand = true

Config.PoliceCommand = 'pol'

Config.PoliceJobName = 'police'

--------------------------------
-- [Dealer]

Config.EnableDealerCommand = true

Config.DealerCommand = 'dea'

Config.DealerJobName = 'cardealer'

--------------------------------
-- [Ambulance]

Config.EnableAmbulanceCommand = true

Config.AmbulanceCommand = 'ems'

Config.AmbulanceJobName = 'ambulance'

--------------------------------

--------------------------------
-- [Mechanic]

Config.EnableMechanicCommand = true

Config.MechanicCommand = 'mech'

Config.MechanicJobName = 'mechanic'

--------------------------------

--------------------------------
-- [MONTIR]

Config.EnableMontirCommand = true

Config.MontirCommand = 'mon'

Config.MontirJobName = 'montir'

--------------------------------

--------------------------------
-- [AGEN RUMAH]

Config.EnableReaCommand = true

Config.ReaCommand = 'rea'

Config.ReaJobName = 'rea'

--------------------------------

--------------------------------
-- [GOJEK]

Config.EnableGojekCommand = true

Config.GojekCommand = 'trans'

Config.GojekJobName = 'gojek'

--------------------------------

--------------------------------
-- [PEDAGANG]

Config.EnablePedagangCommand = true

Config.PedagangCommand = 'pdg'

Config.PedagangJobName = 'pedagang'

--------------------------------

-- [OOC]

Config.EnableOOCCommand = true

Config.OOCCommand = 'ooc'

Config.OOCDistance = 20.0

--------------------------------

Config.EnableDoCommand = true

Config.DoCommand = 'do'

Config.DoDistance = 5.0