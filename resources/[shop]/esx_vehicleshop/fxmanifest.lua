fx_version 'adamant'

game 'gta5'

description 'ESX Vehicle Shop'

version 'legacy'

shared_script '@es_extended/imports.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'config.lua',
	'server/main.lua',
	'server/main_shop.lua',
    'server/sv_tatto.lua',
	'server/sv_lockvehicle.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua',
    'client/main_tattoo.lua',
    'client/tattooList.lua',
	'client/main_shop.lua',
	'client/cl_lockvehicle.lua'
}

dependency 'es_extended'

export 'GeneratePlate'

