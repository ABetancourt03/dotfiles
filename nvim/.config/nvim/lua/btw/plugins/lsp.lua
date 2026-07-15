return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				ts_ls = {},
				eslint = {},
				tailwindcss = {},
			},
		},

		config = function(_, opts)
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"astro",
					"cssls",
					"cssmodules_ls",
					"tailwindcss",
					"emmet_ls",
					"jsonls",
					"yamlls",
					"vimls",
					"svelte",
					"pyright",
					"intelephense",
					"eslint",
				},
			})

			for server, config in pairs(opts.servers) do
				vim.lsp.config(server, config)
				vim.lsp.enable(server)
			end

			vim.diagnostic.config({
				virtual_text = true,
				underline = true,
			})

			vim.api.nvim_create_autocmd("BufWritePost", {
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end,
	}
}
