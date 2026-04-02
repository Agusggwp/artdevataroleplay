--SENJATA-ANIM--
Config.CooldownPolice = 700
Config.cooldown		  = 1700

Config.Locale = 'en'

Config.Weapons = {
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_FLAREGUN",
	"WEAPON_STUNGUN",
	"WEAPON_REVOLVER",
}

Config.OpenFunction = true --- Nyalakan / Matikan Pukulan Bug
Config.DiffPunch = 1.0 -- Ini Sudah Pas Ya Tapi Sesuai Ke Inginan Kalian Aja

--
Config.JobsColor = {
    ['police'] = 77,
    ['ambulance'] = 1,
}

-- LOG SYSTEM

DiscordWebhookSystemInfos = 'ISI_WEBHOOK_HERE'
DiscordWebhookKillinglogs = 'ISI_WEBHOOK_HERE'
DiscordWebhookChat = 'ISI_WEBHOOK_HERE'

SystemAvatar = ''

UserAvatar = ''

SystemName = 'ARTDEVATA ROLEPLAY'


--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				   {'/911', '**[911]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/AnyCommand',
					   '/AnyCommand2',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/ooc', ''},
					  {'/ad', ''},
					  {'/mecha', ''},
					  {'/amb', ''},
					  {'/police', ''},
					  {'/hold', ''},
					  {'/ev', ''},
					  {'/car', ''},
					  {'/revive', ''},
					  {'/heal', ''},
					  {'/bring', ''},
					  {'/goto', ''},
					  {'/spawnobject', ''},
					  {'/spawnped', ''},
					  {'/giveitem', ''},
					  {'/giveweapon', ''},
					  {'/giveaccountmoney', ''},
					  {'/giveweapon', ''},
					  {'/clearall', ''},
					  {'/clearinventory', ''},
					  {'/clear', ''},
					  {'/dv', ''},
					  {'/cardel', ''},
					  {'/noclip', ''},
					  {'/setjob', ''},
					  {'/setgroup', ''},
					  {'/setlevel', ''},
					  {'/setmoney', ''},
					  {'/setbank', ''},
					  {'/tpw', ''},
					  {'/tpm', ''},
					  {'/spec', ''},
					  {'/announce', ''},
					  {'/me', ''},
					  {'/transfervehicle', ''},
					  {'/adm', ''},
					  {'/a', ''},
					  {'/report', ''},
					  {'/report2', ''},
					  {'/reply', ''},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/Whatever',
			   '/Whatever2',
			  }




--

--[[Config.BLUEZONE = {x = -520.63, y = -1712.40, z = 19.45}
Config.REDZONE = {x = -514.79, y = -1711.49, z = 19.45}
Config.CENTER = {x = -517.61, y = -1712.04, z = 20.45}
Config.BETZONE = {x = -523.33, y = -1715.44, z = 18.32}

Config.DISTANCE = 10 -- Distance to see fight indicators
Config.TP_DISTANCE = 4 -- Minimum distance between fight and spectators
Config.LEAVE_FIGHT_DISTANCE = 15 -- Distance to quit fight
Config.DISTANCE_INTERACTION = 2.0 -- Interaction for fighter events
Config.E_KEY = 38 -- Action key 'E' default

Config.BLIP = {
    coords = {x = -517.61, y = -1712.04, z = 20.45},
    text   = 'Ring Tinju',
    sprite = 84,
    color  = 1,
    scale  = 1.0
}--]]


--========================================================================================================================================================================-
--========================================================================================================================================================================-
--=========================================                                                                                      =========================================-                         
--=========================================                                                                                      =========================================-
--=========================================                                                                                      =========================================-
--========================================================================================================================================================================-
--========================================================================================================================================================================-



globalConfig = {

  language = 'en', --change with 'en' for english, 'fr' for french, 'cz' for czech, 'de' for german




      --Set up new line to add a table, xyz are the coordinate, model is the props used as table. The 3 tables for armwrestling are 

                                                    -- 'prop_arm_wrestle_01' --
                                              -- 'bkr_prop_clubhouse_arm_wrestle_01a' --
                                              -- 'bkr_prop_clubhouse_arm_wrestle_02a' --

  props = { 
    


    {x = -1694.89, y= -952.98, z= 7.72, model = 'bkr_prop_clubhouse_arm_wrestle_01a'}, -- pedagang
{x = -308.11, y= -947.25, z= 31.08, model = 'bkr_prop_clubhouse_arm_wrestle_01a'}, -- garkot1
{x = 415.57, y= -990.81, z= 29.39, model = 'bkr_prop_clubhouse_arm_wrestle_01a'}, -- kanpol
--{x = -737.15, y= -1432.15, z= 5.06, model = 'bkr_prop_clubhouse_arm_wrestle_01a'}, -- Mechanic


  },

  showBlipOnMap = true, -- Set to true to show blip for each table

  blip = { --Blip info

    title="Adu Panco",  
    colour=1, -- 
    id=311

  }

}

text = { 
  ['en'] = {
    ['win'] = "You win !",
    ['lose'] = "You lost",
    ['full'] = "A wrestling match is already in progress",
    ['tuto'] = "To win, quickly press ",
    ['wait'] = "Waiting for an opponent",
  },
  ['fr'] = {
    ['win'] = "Vous avez gagn  !",
    ['lose'] = "Vous avez perdu",
    ['full'] = "Un bras de fer est d j  en cours",
    ['tuto'] = "Pour gagner, appuyez rapidement sur ",
    ['wait'] = "En attente d'un adversaire",
  },
  ['cz'] = {
    ['win'] = "Vyhr l jsi !",
    ['lose'] = "Prohr l jsi",
    ['full'] = "Z pasov  z pas ji  prob h ",
    ['tuto'] = "Chcete-li vyhr t, rychle stisknete ",
    ['wait'] = "Cek n  na protivn ka",
  },
  ['de'] = {
    ['win'] = "Du hast gewinnen !",
    ['lose'] = "Du hast verloren",
    ['full'] = "Ein Wrestling Match ist bereits im Gange",
    ['tuto'] = "Um zu gewinnen, dr cken Sie schnell ",
    ['wait'] = "Warten auf einen Gegner",
  },

}

-- JAIL

Config.JailPositions = {
	["Cell"] = { ["x"] = 1772.31, ["y"] = 2492.53, ["z"] = 45.74, ["h"] = 122.21 }
}

Config.Cutscene = {
	["PhotoPosition"] = { ["x"] = 402.91567993164, ["y"] = -996.75970458984, ["z"] = -99.000259399414, ["h"] = 186.22499084473 },

	["CameraPos"] = { ["x"] = 402.88830566406, ["y"] = -1003.8851318359, ["z"] = -97.419647216797, ["rotationX"] = -15.433070763946, ["rotationY"] = 0.0, ["rotationZ"] = -0.31496068835258, ["cameraId"] = 0 },

	["PolicePosition"] = { ["x"] = 402.91702270508, ["y"] = -1000.6376953125, ["z"] = -99.004028320313, ["h"] = 356.88052368164 }
}

Config.PrisonWork = {
	["DeliverPackage"] = { ["x"] = 1027.2347412109, ["y"] = -3101.419921875, ["z"] = -38.999870300293, ["h"] = 267.89135742188 },

	["Packages"] = {
		[1] = { ["x"] = 1003.6661987305, ["y"] = -3108.4221191406, ["z"] = -38.999866485596, ["state"] = true },
		[2] = { ["x"] = 1006.0420532227, ["y"] = -3103.0024414063, ["z"] = -38.999866485596, ["state"] = true },
		[3] = { ["x"] = 1015.7958374023, ["y"] = -3102.8337402344, ["z"] = -38.99991607666, ["state"] = true },
		[4] = { ["x"] = 1012.8907470703, ["y"] = -3108.2907714844, ["z"] = -38.999912261963, ["state"] = true },
		[5] = { ["x"] = 1018.2017822266, ["y"] = -3109.1982421875, ["z"] = -38.999897003174, ["state"] = true },
		[6] = { ["x"] = 1018.0194091797, ["y"] = -3096.5700683594, ["z"] = -38.999897003174, ["state"] = true },
		[7] = { ["x"] = 1015.6422119141, ["y"] = -3091.7392578125, ["z"] = -38.999897003174, ["state"] = true },
		[8] = { ["x"] = 1010.7862548828, ["y"] = -3096.6135253906, ["z"] = -38.999897003174, ["state"] = true },
		[9] = { ["x"] = 1005.7819824219, ["y"] = -3096.8415527344, ["z"] = -38.999897003174, ["state"] = true },
		[10] = { ["x"] = 1003.4543457031, ["y"] = -3096.7048339844, ["z"] = -38.999897003174, ["state"] = true }
	}
}

Config.Teleports = {
	["Prison Work"] = { 
		["x"] = 992.51770019531, 
		["y"] = -3097.8413085938, 
		["z"] = -38.995861053467, 
		["h"] = 81.15771484375, 
		["goal"] = { 
			"Jail" 
		} 
	},

	["Boiling Broke"] = { 
		["x"] = 1845.6022949219, 
		["y"] = 2585.8029785156, 
		["z"] = 45.672061920166, 
		["h"] = 92.469093322754, 
		["goal"] = { 
			"Security" 
		} 
	},

	["Jail"] = { 
		["x"] = 1800.6979980469, 
		["y"] = 2483.0979003906, 
		["z"] = -122.68814849854, 
		["h"] = 271.75274658203, 
		["goal"] = { 
			"Prison Work", 
			"Security", 
			"Visitor" 
		} 
	},

	["Security"] = { 
		["x"] = 1706.7625732422,
		["y"] = 2581.0793457031, 
		["z"] = -69.407371520996, 
		["h"] = 267.72802734375, 
		["goal"] = { 
			"Jail",
			"Boiling Broke"
		} 
	},

	["Visitor"] = {
		["x"] = 1699.7196044922, 
		["y"] = 2574.5314941406, 
		["z"] = -69.403930664063, 
		["h"] = 169.65020751953, 
		["goal"] = { 
			"Jail" 
		} 
	}
}

-------------------------- PAWNSHOP

--[[Config.PawnLocation = vector3(182.79, -1319.38, 29.32)
Config.PawnBlackMoney = true

Config.PawnItems = {

	['jewels'] = {
		label = 'Jewels',
		min = 50,
		max = 200,
		price = 64
	},
	
	['goldwatch'] = {
		label = 'Gold Watch',
		min = 10,
		max = 15,
		price = 72
	},
	
}--]]

-- BALAP LIAR

-- CLIENT CONFIGURATION
config_cl = {
    joinProximity = 25,                 -- Proximity to draw 3D text and join race
    joinKeybind = 51,                   -- Keybind to join race ("E" by default)
    joinDuration = 30000,               -- Duration in ms to allow players to join the race
    freezeDuration = 5000,              -- Duration in ms to freeze players and countdown start (set to 0 to disable)
    checkpointProximity = 25.0,         -- Proximity to trigger checkpoint in meters
    checkpointRadius = 25.0,            -- Radius of 3D checkpoints in meters (set to 0 to disable cylinder checkpoints)
    checkpointHeight = 10.0,            -- Height of 3D checkpoints in meters
    checkpointBlipColor = 5,            -- Color of checkpoint map blips and navigation (see SetBlipColour native reference)
    hudEnabled = true,                  -- Enable racing HUD with time and checkpoints
    hudPosition = vec(0.015, 0.725)     -- Screen position to draw racing HUD
}

-- SERVER CONFIGURATION
config_sv = {
    finishTimeout = 180000,             -- Timeout in ms for removing a race after winner finishes
    notifyOfWinner = true               -- Notify all players of the winner (false will only notify the winner)
}

-- TARGET

Config.Sitable = {
	--Only verticalOffset works right now!
	--all scenarios: pastebin.com/6mrYTdQv
	
	-- BENCH
	prop_bench_01a 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_01b 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_01c 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_02 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_03 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_04 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_05 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_06 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_05 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.45, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_08 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_09 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.31, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_10 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_bench_11 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_fib_3b_bench 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_ld_bench01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_wait_bench_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},

	-- CHAIR
	v_club_stagechair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	hei_prop_heist_off_chair 	= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	hei_prop_hei_skid_chair 	= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_01a 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_01b 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_02 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_03 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_04a 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_04b 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_05 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_06 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_05 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_08 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_09 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chair_10 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_chateau_chair_01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_clown_chair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_cs_office_chair 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_direct_chair_01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_direct_chair_02 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_gc_chair02 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_03 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_04 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_04b 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_04_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_off_chair_05 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.45, forwardOffset = 0.0, leftOffset = 0.0},
	prop_old_deck_chair 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_old_wood_chair 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_rock_chair_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_skid_chair_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_skid_chair_02 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_skid_chair_03 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_sol_chair 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_wheelchair_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_wheelchair_01_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_armchair_01_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_clb_officechair_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_dinechair_01_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_ilev_p_easychair_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_soloffchair_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_yacht_chair_01_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_club_officechair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_corp_bk_chair3 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_corp_cd_chair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_corp_offchair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_chair02_ped 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_hd_chair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_p_easychair 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ret_gc_chair03 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_ld_farm_chair01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_04_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.56, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_05_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_06_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_leath_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_01_chr_a 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_01_chr_b 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_02_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_03b_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_table_03_chr 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_torture_ch_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_fh_dineeamesa 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},


	v_ilev_fh_kitchenstool 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_tort_stool 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_fh_kitchenstool 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_fh_kitchenstool 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_fh_kitchenstool 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_fh_kitchenstool 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},

	-- SEAT
	hei_prop_yah_seat_01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	hei_prop_yah_seat_02 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	hei_prop_yah_seat_03 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_waiting_seat_01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_yacht_seat_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_yacht_seat_02 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_yacht_seat_03 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_hobo_seat_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.65, forwardOffset = 0.0, leftOffset = 0.0},

	-- COUCH
	prop_rub_couch01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	miss_rub_couch_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_ld_farm_couch01 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_ld_farm_couch02 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_rub_couch02 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_rub_couch03 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_rub_couch04 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},

	-- SOFA
	p_lev_sofa_s 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_res_sofa_l_s 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_v_med_p_sofa_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	p_yacht_sofa_01_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_ilev_m_sofa 				= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_res_tre_sofa_s 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_tre_sofa_mess_a_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_tre_sofa_mess_b_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	v_tre_sofa_mess_c_s 		= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},

	-- MISC
	prop_roller_car_01 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
	prop_roller_car_02 			= { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0},
}

Config.MinThrowForce = 8.0
Config.MaxThrowForce = 80.0

Config.Throwables = {
	`prop_cone_float_1`,
	`prop_mp_cone_01`,
	`prop_mp_cone_02`,
	`prop_mp_cone_03`,
	`prop_mp_cone_04`,
	`prop_roadcone01a`,
	`prop_roadcone01b`,
	`prop_roadcone01c`,
	`prop_roadcone02a`,
}