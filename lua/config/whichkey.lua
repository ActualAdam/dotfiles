local M = {}

function M.setup() 
    local whichkey = require "which-key"

    local conf = {
        window = {
            border = "single"
            position = "bottom"
        },
    }

    local opts = {
        mode = "n", -- Normal mode
        prefix = "<leader>",
        buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent = true, -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = false, -- use `nowait` when creating keymaps
    }

    local mappings = {
        ["w"] = { "<cmd>update!<CR>", "Save" },
        ["q"] = { "<cmd>q!<CR>", "Quit" },
    }

    whichkey.setup(conf)
    whichkey.register(mappings, opts)
end

return M
