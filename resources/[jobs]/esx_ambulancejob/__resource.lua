resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Ambulance Job'

version '1.2.0'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/server.lua',
	'server/sv_oplas.lua',
	'server/sv_revive.lua',
	'server/cl_wheelchair.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/deathcause.lua',
	'client/job.lua',
	'client/client.lua',
	'client/vehicles.lua',
	'client/cl_target.lua'
}

dependencies {
	'es_extended',
	'esx_vehicleshop'
}

exports {
	'GetDeath',
  }
client_script "api-ac_lRAhmrqCXrmb.lua"