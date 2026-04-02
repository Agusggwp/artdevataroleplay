fx_version 'adamant'
game 'gta5'
version '1.1.0'
lua54 'yes'

shared_script '@ox_lib/init.lua'

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config*.lua',
	'cl_esx.lua',
	'client/*.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'sv_esx.lua',
	'config*.lua',
	'server/*.lua'
}
