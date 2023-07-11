
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth= 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"
vim.opt.updatetime = 50

vim.keymap.set("v", "<M-.>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-,>", ":m '<-2<CR>gv=gv")
