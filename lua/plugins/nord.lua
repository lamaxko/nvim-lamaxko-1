return {
    "shaunsingh/nord.nvim",
    name = "nord",
    config = function()
        vim.g.nord_disable_background = true   -- Disable Nord's background color
        vim.g.nord_cursorline_transparent = true -- Make cursorline transparent (optional)
        vim.g.nord_enable_sidebar_background = false -- Disable sidebar background
    end,
}
