resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page 'html/ui.html'
files {
	'html/ui.html',
	'html/logo.png',
	'html/cursor.png',
	'html/styles.css',
	'html/questions.js',
	'html/scripts.js',
	'html/debounce.min.js'
}

server_scripts {
		'@oxmysql/lib/MySQL.lua',
        'config.lua',
        'server.lua'
}
client_script {
		'config.lua',
        'client.lua'
}