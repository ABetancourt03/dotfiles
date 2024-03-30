require("catppuccin").setup({
	flavour = "macchiato",
	transparent_background = true,
	styles = {
		comments = { "italic" },
	},
})

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme catppuccin]])
