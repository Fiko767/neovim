return {
	"stevearc/conform.nvim",
	dependencies = {
		"zapling/mason-conform.nvim",
		"williamboman/mason.nvim",
	},
	config = function()
		require("mason").setup()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier" },
				go = { "gofumpt", "goimports" },
			},
			format_on_save = {
				lsp_fallback = false,
			},
		})

		require("mason-conform").setup()
	end,
}
