Config_Bobcat = {}

-- Discord Config_Bobcat is inside server.lua 

-- Blip info: https://docs.fivem.net/docs/game-references/blips/
Config_Bobcat.Blip = true -- Create a blip for Bobcat Building?
Config_Bobcat.BlipIcon = 108
Config_Bobcat.BlipColour = 5
Config_Bobcat.BlipText = 'Bobcat Security'

Config_Bobcat.MinPolice = 3 -- Min Police online to start robbery.
Config_Bobcat.PoliceJobName = 'police' 
Config_Bobcat.CooldownTime = 60 -- Time before the robbery can be triggered again (1 hour by default).

Config_Bobcat.NeedsBlowtorch = false -- Needs Blowtorch for 1st step?
Config_Bobcat.BlowtorchName = 'blowtorch' -- Item name
Config_Bobcat.RemoveBlowtorch = false -- Remove blowtorch?

Config_Bobcat.NeedsC4 = true -- Needs C4 for vault?
Config_Bobcat.C4amount = 2 -- How much C4 needed for vault?
Config_Bobcat.C4Name = 'c4' -- C4 name
Config_Bobcat.RemoveC4 = true -- Remove C4?

Config_Bobcat.SpawnGuards = true -- Spawn NPC guards?
Config_Bobcat.Guards = {
	[1] = {
		pos = {266.00, 298.79, 105.55, 275.35},
		ped = 'mp_s_m_armoured_01',
		weapon = 'WEAPON_PISTOL',
		armour = 100
	},
	[2] = {
		pos = {269.62, 292.94, 105.55, 344.74},
		ped = 's_m_m_armoured_02',
		weapon = 'WEAPON_PISTOL',
		armour = 100
	},
	[3] = {
		pos = {272.99, 300.26, 105.55, 74.10},
		ped = 'mp_s_m_armoured_01',
		weapon = 'WEAPON_PISTOL',
		armour = 100
	},
	[4] = {
		pos = {272.92, 306.76, 105.55, 144.07},
		ped = 's_m_m_armoured_02',
		weapon = 'WEAPON_PISTOL',
		armour = 100
	},
}

Config_Bobcat.Money = math.random(20000,30000) -- Money per trolley (3 in total)
Config_Bobcat.Account = 'black_money' -- Maybe your server uses a different name for black money

-- Language
Config_Bobcat.Lang = {
	['sabotage'] = 'Press ~r~[E]~w~ to sabotage',
	['missing_blowtorch'] = 'You need a blowtorch',
	['install_c4'] = 'Install C4 on vault to open',
	['c4'] = 'Press ~r~[E]~w~ to install C4',
	['missing_c4'] = 'You need C4',
	['stole'] = 'You stole $',
	['loot'] = 'Press ~r~[E]~w~ to loot',
	['cooldown_active'] = 'Cooldown active',
	['not_enough'] = 'Not enough cops online',
	['cops_notification'] = 'Robbery started at Bobcat Security'
}

--	Your Notification trigger goes here
RegisterNetEvent('av_bobcat:notify')
AddEventHandler('av_bobcat:notify', function(msg)
	exports['ttyy_nuipack']:DoHudText('inform', msg)
end)