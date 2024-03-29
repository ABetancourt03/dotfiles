vim.cmd("syntax on")
vim.cmd("syntax enable")

vim.cmd("set clipboard=unnamed")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])

vim.wo.number = true
vim.cmd("set relativenumber")

vim.cmd("set matchpairs+=<:>")
