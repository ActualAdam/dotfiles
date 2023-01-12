return function(use)
  local utils = require("utils")

  use 'tpope/vim-fugitive' -- git client 
  use 'tpope/vim-rhubarb' -- browse github links
  use 'lewis6991/gitsigns.nvim' -- git decorations in the buffer
  utils.info("HI from git config")
  use {
    "ruifm/gitlinker.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function ()
      require("utils").info("Hi from inside the gtilinker config function")
      require("gitlinker").setup()
    end
      -- utils.info("Hi from inside the gtilinker config function")
      -- local status_ok, gitlinker = pcall(require, "gitlinker")
      -- if not status_ok then
      --   utils.error_plugin_not_installed("gitlinker")
      --   return
      -- end
      -- utils.info("starting the gitlinker set")
    --   local gitlinker = require("gitlinker")
    --   return gitlinker.setup()
    -- end
      -- 
  }
end
