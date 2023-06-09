fx_version 'adamant'
game 'gta5'
lua54 'on'

author 'Lama Development'
description 'Lama Lottery Tickets'
version '1.0'

shared_scripts {
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
    'config.lua',
    'locales/*.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}