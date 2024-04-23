require("lazy").setup({
	{
		"morhetz/gruvbox",
		"dracula/vim",
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		{ "olimorris/onedarkpro.nvim", priority = 1000 },
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = {},
		},
	},
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"startup-nvim/startup.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	"b0o/schemastore.nvim",
	"tpope/vim-commentary",
	"mattn/emmet-vim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"vim-test/vim-test",
	"lewis6991/gitsigns.nvim",
	"preservim/vimux",
	"christoomey/vim-tmux-navigator",
	"tpope/vim-fugitive",
	"tpope/vim-surround",
	"stevearc/oil.nvim",
	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"github/copilot.vim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{
		"vinnymeller/swagger-preview.nvim",
		run = "npm install -g swagger-ui-watcher",
	},
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup({
				auto_update = true,
				neovim_image_text = "The One True Text Editor",
				main_image = "neovim",
				client_id = "793271441293967371",
				log_level = nil,
				debounce_timeout = 10,
				enable_line_number = false,
				blacklist = {},
				buttons = true,
				file_assets = {},
				show_time = true,
				editing_text = "Editing %s",
				file_explorer_text = "Browsing %s",
				git_commit_text = "Committing changes",
				plugin_manager_text = "Managing plugins",
				eading_text = "Reading %s",
				workspace_text = "Working on %s",
				line_number_text = "Line %s out of %s",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					json = { "prettier" },
					css = { "prettier" },
					astro = { "prettier" },
					python = { "black" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				},
			})

			vim.keymap.set({ "n", "v" }, "<leader>f", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format file or range (in visual mode)" })
		end,
	},
	"jiangmiao/auto-pairs",
	"alvan/vim-closetag",
	"mg979/vim-visual-multi",
	{
		"wuelnerdotexe/vim-astro",
		config = function()
			vim.filetype.add({
				extension = {
					astro = "astro",
				},
			})
		end,
	},
	"gko/vim-coloresque",
	{
		"easymotion/vim-easymotion",
		config = function()
			vim.keymap.set("n", "<Leader>s", "<Plug>(easymotion-s2)")
		end,
	},
})
