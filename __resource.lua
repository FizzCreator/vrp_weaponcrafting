resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page 'nui/zirix.html'

client_scripts {
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	"client.lua",
	"config.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua",
	"config.lua"
}

files {
	'nui/zirix.html',
	'nui/zirix.js',
    'nui/zirix.css',
    
	'nui/imagens/ak47.png',
	'nui/imagens/aks.png',
	'nui/imagens/corpo-ak47.png',
	'nui/imagens/corpo-aks.png',
	'nui/imagens/corpo-glock.png',
	'nui/imagens/corpo-magnum44.png',
	'nui/imagens/corpo-uzi.png',
	'nui/imagens/gatilho.png',
	'nui/imagens/glock.png',
	'nui/imagens/magnum44.png',
	'nui/imagens/molas.png',
	'nui/imagens/placa-metal.png',
	'nui/imagens/uzi.png',
}