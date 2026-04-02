resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'JOBPACK OPTIMIZED @TTYY'

version '1.1.0'

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/death.js',
	'html/app.js',
	'html/app.css',
	'html/img/1.png',
	'html/font/OSL.ttf',
	'html/death.html',
	'html/death.js',
	'html/font/OSL.ttf',
	'html/font/OpenSans-Light.ttf',
	'html/font/OpenSans-Regular.ttf',
	'html/font/OpenSans-Semibold.ttf',
	'html/font/OpenSans-ExtraBold.ttf',
	'html/font/OpenSans-Bold.ttf',
}

shared_scripts {
    '@es_extended/imports.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'shared/*.lua',
	'server/*.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'shared/*.lua',
	'client/badside/*.lua',
	'client/mechanic/*.lua',
	'client/pedagang/*.lua',
	'client/police/*.lua',
	'client/utils/*.lua',
	'mhacking/mhacking.lua',
	'mhacking/sequentialhack.lua'
}

dependencies {
	'es_extended',
	'esx_vehicleshop'
}

exports {
	"Notify",
	"Loading",
	"playAnim",
	"addProp"
}
