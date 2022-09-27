client_script '@X.Brain/Shared/xGuardPlayer.lua'
server_script '@X.Brain/Shared/xGuardServer.lua'
fx_version 'adamant' 
game 'gta5' 


version '1.0'

client_scripts {	
	'config.lua',
	'client/main.lua'
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
	'config.lua',
	'server/server.lua'
}

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/css/style.css',
    'html/js/app.js',
    'html/js/function.js'
}

