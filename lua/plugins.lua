local plugins = {}

local function declarePlugins(use)
    use "wbthomason/packer.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = function() 
            require("nvim-treesitter.install").update({ with_sync = true }) 
        end,
        config = function() 
            require("config.treesitter").setup()
        end,
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("config.whichkey").setup()
        end,
    }

    use {
        "kyazdani42/nvim-web-devicons",
        module = "nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    }

    use {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter",
        config = function()
            require("config.lualine").setup()
        end,
        requires = { "nvim-web-devicons" },
    }
end

function plugins.setup() 
    vim.cmd [[packadd packer.nvim]]
     -- still learning the language here, but I think this is passing the function literal, so packer provides whatever `use` is. 
     -- in many examples, I saw this function declared anonymously, but I think that syntax is so ugly, I'm avoiding it. 
    require("packer").startup(declarePlugins) 
end

return plugins
