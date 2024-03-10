return {
	{
		"easymotion/vim-easymotion",
		config = function()
			vim.keymap.set("n", "<Leader>s", "<Plug>(easymotion-s2)")
		end,
	},
	"christoomey/vim-tmux-navigator",
}
