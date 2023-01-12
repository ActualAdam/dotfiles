return {
  'tpope/vim-fugitive', -- git client 
  'tpope/vim-rhubarb', -- browse github links
  'lewis6991/gitsigns.nvim', -- git decorations in the buffer
  {
    "ruifm/gitlinker.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function ()
      require("gitlinker").setup()
    end
  },
}
