fx_version 'cerulean'
games {'gta5' }

author 'Aldi'
version '2.1.5'


this_is_a_map 'yes'
-- gabung client

client_scripts {
    'cl_esx.lua',
    'config/*.lua',
    'client/*.lua'

}

server_scripts {
    'sv_esx.lua',
    'config/*.lua',
    'server/*.lua'
}

shared_scripts {
    '@es_extended/imports.lua'
}