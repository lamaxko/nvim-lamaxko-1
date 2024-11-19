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

vim.keymap.set("x", "<C-k>", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("x", "<C-j>", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "yyp", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- Move left
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- Move right
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- Move down
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- Move up
vim.keymap.set("n", "<leader>sc", ":set spell!<CR>", { noremap = true, silent = true })
