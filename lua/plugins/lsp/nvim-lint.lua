return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
			python = { "pylint" },
			rust = { "clippy" },
			javascript = { "eslint_d" },
			css = { "stylelint" },
			c = { "cppcheck" },
			cpp = { "cppcheck" },
			yaml = { "actionlint" },
			go = { "golangci-lint" },
			markdown = { "markdownlint" },
			json = { "jsonlint" },
			jsonc = { "jsonlint" },
		}
	end,
}
