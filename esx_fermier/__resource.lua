
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
ui_page 'ui/index.html'

client_scripts {
    '@es_extended/locale.lua',
    'client.lua',
} 

server_scripts{
    '@es_extended/locale.lua',
	"server.lua",
}
files {
    'ui/index.html',
    'ui/index.css',
    'ui/index.js'
}