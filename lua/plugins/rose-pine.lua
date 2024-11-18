return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "auto",
            dark_variant = "main", -- main, moon or dawn
            transparency = true,
        })
    end,
}

