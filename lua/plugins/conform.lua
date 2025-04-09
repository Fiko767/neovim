return {
	"stevearc/conform.nvim",
	dependencies = {
		"zapling/mason-conform.nvim",
		"williamboman/mason.nvim",
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				bash = { "shfmt" },
				css = { "prettierd", "prettier" },
				go = { "gofumpt", "goimports" },
				html = { "prettierd", "prettier" },
				java = { "google-java-format" },
				javascript = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				lua = { "stylua" },
				markdown = { "prettierd", "prettier" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				sh = { "shfmt" },
				toml = { "taplo" },
				typescript = { "prettierd", "prettier" },
				yaml = { "prettierd", "prettier" },
				zsh = { "shfmt" },
			},
			format_on_save = {
				lsp_fallback = false,
			},
		})

		require("mason-conform").setup()
	end,
}
