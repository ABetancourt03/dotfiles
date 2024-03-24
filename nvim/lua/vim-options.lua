vim.cmd("syntax on")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set showmode")
vim.cmd("set showcmd")

vim.cmd("set matchpairs+=<:>")

vim.cmd("set clipboard=unnamed")
vim.cmd("set mouse=a")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set splitright")

vim.o.termguicolors = true

vim.keymap.set("n", "<Tab>", ":bnext<cr>")
vim.keymap.set("n", "<S-Tab>", ":bprev<cr>")

vim.g.mapleader = " "

vim.keymap.set("i", "ii", "<Esc>")
