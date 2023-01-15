return  {
  -- Additional lua configuration, makes nvim stuff amazing
  {
    "folke/neodev.nvim",
    config = function()
      require('neodev').setup()
    end
  },

  {
    "simrat39/rust-tools.nvim",
    config = function()
      require('rust-tools').setup()
    end
  },

}
