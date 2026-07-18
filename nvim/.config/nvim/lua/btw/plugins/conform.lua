return {
	"stevearc/conform.nvim",
	event = { "LspAttach", "BufReadPost", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettier", stop_after_first = true },
			typescript = { "prettier", stop_after_first = true },
			astro = { "prettier", stop_after_first = true },
			python = { "black" },
			html = { "prettier", stop_after_first = true },
			css = { "prettier", stop_after_first = true },
			json = { "prettier", stop_after_first = true },
			markdown = { "prettier", stop_after_first = true },
			yaml = { "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 2500,
			lsp_fallback = true,
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
