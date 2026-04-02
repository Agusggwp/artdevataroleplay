resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
this_is_a_map 'yes'
name 'TTYY ROLEPLAY BASE'
author 'Ttyy'
version 'v1.0.3'
lua54 'yes'

ui_page 'html/ui.html'
files {
	'html/ui.html',
	'html/logo.png',
	'html/cursor.png',
	'html/styles.css',
	'html/questions.js',
	'html/scripts.js',
	'html/debounce.min.js',
	'popcycle.dat'
}

shared_scripts {
    '@es_extended/imports.lua',
	'@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
	'client/*.lua',
	'config.lua',
	'shared/connectqueue.lua'
}

server_scripts {
	'@oxmysql/lib/MySQl.lua',
	'server/*.lua',
	'config.lua',
	'shared/connectqueue.lua'
}

data_file 'POPSCHED_FILE' 'popcycle.dat'
-- client_script "api-ac_lRAhmrqCXrmb.lua"