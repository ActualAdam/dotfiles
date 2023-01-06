return function(use)

  use {
    "tzachar/cmp-tabnine",
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require("cmp_tabnine.config"):setup {}
    end
  }

  use {
    "mfussenegger/nvim-jdtls",
    ft = { "java" }
  }
end

