local ayu = {}

function ayu.setup() 
    require("ayu").setup({
        mirage = true,
        overrides = {},
    })
end

return ayu
