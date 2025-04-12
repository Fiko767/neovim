return {
	"stevearc/conform.nvim",
	dependencies = {
		"zapling/mason-conform.nvim",
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				html = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettierd", "prettier", stop_after_first = true },
				yaml = { "prettierd", "prettier", stop_after_first = true },
				go = { "goimports", "gofumpt" },
				markdown = { "prettierd", "prettier", stop_after_first = true },
			},
			format_on_save = {
				lsp_format = "fallback",
			},
		})
		require("mason-conform").setup()
	end,
}
