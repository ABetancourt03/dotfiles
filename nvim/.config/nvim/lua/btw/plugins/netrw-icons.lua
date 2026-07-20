return {
	"Fasamii/netrw-icons.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("netrw-icons").setup()
	end,
}
