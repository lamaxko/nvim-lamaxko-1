return {
    "numToStr/FTerm.nvim",
    lazy = false,  -- Set to true if you want lazy loading
    config = function()
        local fterm = require("FTerm")

        -- Configure FTerm (optional)
        fterm.setup({
            border = 'rounded',    -- Rounded window border
            dimensions = {
                height = 0.8,      -- 80% of the screen height
                width = 0.8,       -- 80% of the screen width
            },
        })

        -- Keybinding to toggle the floating terminal with <C-t>
        vim.api.nvim_set_keymap('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
    end
}

