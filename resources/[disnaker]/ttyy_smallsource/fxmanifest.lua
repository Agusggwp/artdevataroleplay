fx_version 'cerulean'
games { 'gta5' }

lua54 'yes'


shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua'
}


client_scripts {
    '@ox_lib/init.lua',
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
    'server/*.lua',
}
