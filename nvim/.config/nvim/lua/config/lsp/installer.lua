local installer = {}

local lsp_installer_servers = require("nvim-lsp-installer.servers")
local utils = require("utils")

function installer.setup(servers, options)
    for server_name, _ in pairs(servers) do
        local server_available, server = lsp_installer_servers.get_server(server_name)

        if server_available then
            server:on_ready(function()
                local opts = vim.tbl_deep_extend("force", options, servers[server.name] or {})
               -- server:setup(require("coq").lsp_ensure_capabilities(opts))
                server:setup(opts)
            end)

            if not server:is_installed() then
                utils.info("Installing " .. server.name)
                server:install()
            end
        else
            utils.error(server)
        end
    end
end

return installer
