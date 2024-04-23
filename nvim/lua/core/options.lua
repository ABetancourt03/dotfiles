vim.cmd("syntax on")
vim.cmd("syntax enable")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamedplus"

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.showmode = false
vim.opt.scrolloff = 10

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])

vim.wo.number = true
vim.cmd("set relativenumber")

vim.cmd("set matchpairs+=<:>")

vim.cmd([[
  nnoremap <Leader>> 10<C-w>>
  nnoremap <Leader>< 10<C-w><
]])

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
