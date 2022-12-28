return function(use)
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  use {
    "tzachar/cmp-tabnine",
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require("cmp_tabnine.config"):setup {}
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
end

