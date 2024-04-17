vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<Tab>", ":bnext<cr>")
vim.keymap.set("n", "<S-Tab>", ":bprev<cr>")

vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>Q", ":q!<cr>")

vim.keymap.set("n", "<leader>x", ":!node %<cr>")
vim.keymap.set("n", "<leader>z", ":!python3 %<cr>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("i", "jj", "<Esc>")
