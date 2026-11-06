fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-quiet-city'
author 'Pigeon Studios'
description 'Turns off GTA\'s fake distant sirens, the police scanner voice, wanted music and flight music.'
version '0.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-quiet-city'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-quiet-city'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
