return function(use)
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
  use { -- close braces, quotes, etc.
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  }
  use {
    "ellisonleao/glow.nvim",
    config = function()
      local status_ok, glow = pcall(require, "glow")
      if not status_ok then
        require("utils").error("ellisonleao/glow: module not found")
        return
      end
      glow.setup()
    end
  }

end