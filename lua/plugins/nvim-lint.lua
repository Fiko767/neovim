return {
	"mfussenegger/nvim-lint",
	dependencies = {
		"rshkarin/mason-nvim-lint",
	},
	config = function()
		require("lint").linters_by_ft = {
			css = { "stylelint" },
			go = { "golangcilint" },
			java = { "checkstyle" },
			javascript = { "eslint_d" },
			lua = { "luacheck" },
			markdown = { "markdownlint" },
			python = { "flake8" },
			typescript = { "eslint_d" },
			yaml = { "yamllint" },
		}
		require("mason-nvim-lint").setup()
	end,
}
