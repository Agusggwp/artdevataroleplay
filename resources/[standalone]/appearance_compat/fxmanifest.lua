fx_version 'cerulean'
game 'gta5'

description 'ESX Skin to illenium-appearance Compatibility Wrapper'
version '1.0.0'

dependencies {
    'es_extended',
    'illenium-appearance'
}

client_scripts {
    'client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}
