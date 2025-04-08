return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
			python = { "flake8" },
			rust = { "bacon" },
			javascript = { "prettier" },
			go = { "golangci-lint" },
		}
	end,
}
