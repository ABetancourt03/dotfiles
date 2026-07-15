require('nvim-treesitter').setup {
	ensure_installed = {"lua", "help", "javascript", "typescript"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
}
