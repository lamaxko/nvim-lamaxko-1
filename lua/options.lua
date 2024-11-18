-- Keymapping
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.smartindent = true
vim.opt.wrap = false
