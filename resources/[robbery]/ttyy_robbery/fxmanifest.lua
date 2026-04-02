fx_version 'bodacious'
game 'gta5'
lua54 'yes'

ui_page {
	'hud/index.html'
}

dependencies {
	'PolyZone',
	'qtarget',
	'ttyy_nuipack',
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
  '@oxmysql/lib/MySQL.lua'
}

files {
	'hud/**/*',
}

-- TODO : CALL EVENT
-- All modules are external resources, not loaded from modules/ directory
-- The ttyybabon() function calls have been removed to prevent missing file warnings

exports {
    'AddCircleZone',
    'AddBoxZone',
    'AddPolyZone',
    'Progress',
    'ProgressWithStartEvent',
    'ProgressWithTickEvent',
    'ProgressWithStartAndTick',
    'GetFuel',
    'SetFuel',
    'AddStress',
    'RemoveStress',
    'SendAlert',
}