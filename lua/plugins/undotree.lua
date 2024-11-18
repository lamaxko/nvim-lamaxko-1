return {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
        { "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle Undotree" },
    },
    config = function()
        if vim.fn.has("persistent_undo") == 1 then
            local undodir = vim.fn.expand("~/.undodir")
            if vim.fn.isdirectory(undodir) == 0 then
                vim.fn.mkdir(undodir, "p", 0700)
            end
            vim.o.undodir = undodir
            vim.o.undofile = true
        end

        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
    end,
}
