return {
    {
        "nvim-lua/plenary.nvim", -- Dependency for Harpoon
        lazy = true,
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false, -- Ensure it loads at startup
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            -- Keybindings
            vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to Harpoon" }) -- Add file
            vim.keymap.set("n", "<leader>m", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" }) -- Quick menu
            vim.keymap.set("n", "<C-h>", ui.nav_prev, { desc = "Navigate to previous Harpoon mark" }) -- Previous file
            vim.keymap.set("n", "<C-t>", ui.nav_next, { desc = "Navigate to next Harpoon mark" }) -- Next file
        end,
    },
}

