return function(use)
  use 'navarasu/onedark.nvim' -- Theme inspired by Atom

  use { -- Fancier statusline
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = false,
          theme = 'onedark',
          component_separators = '|',
          section_separators = '',
        },
      }
    end,
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
end
