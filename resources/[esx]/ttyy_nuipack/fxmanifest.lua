fx_version 'bodacious'
game 'gta5'
lua54 'yes'

ui_page {
	'hud/index.html'
}

client_scripts {
	'@es_extended/client/wrapper.lua',
	'@es_extended/locale.lua',
	'client.lua',
  '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
}

server_scripts {
	'@es_extended/locale.lua',
  '@es_extended/imports.lua',
  '@ttyy_account/async.lua',
  '@oxmysql/lib/MySQL.lua'
}

files {
	'hud/**/*',
}

dependency 'es_extended'

-- Function
function ttyy(rsc)

  file('modules/' .. rsc .. '/data/html/**/*')
  client_script('modules/' .. rsc .. '/locales/en.lua')
  client_script('modules/' .. rsc .. '/common.lua')
  client_script('modules/' .. rsc .. '/*.lua')
  client_script('modules/' .. rsc .. '/client/*.lua')
  client_script('modules/' .. rsc .. '/locales/*.lua')
  client_script('modules/' .. rsc .. '/client/classes/status.lua')
  client_script('modules/' .. rsc .. '/client/hansolo.lua')
  client_script('modules/' .. rsc .. '/radiovolume.lua')
  server_script('modules/' .. rsc .. '/locales/en.lua')
  server_script('modules/' .. rsc .. '/*.lua')
  server_script('modules/' .. rsc .. '/server/*.lua')
  server_script('modules/' .. rsc .. '/locales/*.lua')
  server_script('modules/' .. rsc .. '/server/yarn_builder.js')
  server_script('modules/' .. rsc .. '/radiotower.lua')
  
end

-- TODO : CALL EVENT
-- All modules are external resources, not loaded from modules/ directory
-- The ttyy() function calls have been removed to prevent missing file warnings

-- TODO : EXPORTS CONTENT
exports {
    'showInteraction',
    'hideInteraction',
    'Alert',
    'OpenHackingGame',
    'GetHackingStatus',
    "Start",
    "Custom",
    "Stop",
    "Static",
    "Linear",
    "MiniGame",
    "Open",
    "Close",
    "Showfirearms_license",
    "Showidentification",
    "Showdrivers_license",
    "getSpeed",
    "getStreet",
    "zoneChance",
    'DoShortHudText',
    'DoHudText',
    'DoLongHudText',
    'DoCustomHudText',
    'PersistentHudText',
    'SendAlert',
    'DialogInput',
    'WalkMenuStart'
}
