fx_version "cerulean"
game "gta5"
lua54 "yes"
author "Alfaben"
description "iPhone 15"
version "1.0.0"

-- ui_page "http://localhost:5173"
ui_page "html/index.html"

client_scripts {
	"client/core/*.lua",
	"client/animation.lua",
	"client/zones.lua",
	"client/feature/*.lua",
	"client/main.lua"
}

server_scripts {
  	"@oxmysql/lib/MySQL.lua",
	"server/core/*.lua",
	"server/feature/*.lua",
	"server/main.lua"
}

shared_scripts {
  	"@ox_lib/init.lua",
	"config/**"
}

files {
  	"html/index.html",
	"html/**/*.png",
	"html/**/*.svg",
	"html/**/*.json",
	"html/**/*.jpg",
	"html/assets/*.css",
	"html/assets/*.js",
}

exports {
	'setStatedead'
}