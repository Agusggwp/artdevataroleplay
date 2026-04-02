game {'gta5'}
fx_version 'cerulean'
author 'Brave404#1102'
description 'Brave Spawn Selector V1.0'

ui_page 'html/index.html'

files {
    'html/*.*',
}

shared_scripts {
	'@es_extended/imports.lua',
    'config*.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}