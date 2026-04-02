fx_version 'adamant'
game 'gta5'
lua54 'yes'

client_script 'client.lua'

server_script 'server.lua'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

files {
    "html/alarm.html",
    "html/alarm.ogg"
}

ui_page 'html/alarm.html'

client_script "@LKAC/acloader.lua"