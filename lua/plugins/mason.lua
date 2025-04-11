return {
	"williamboman/mason.nvim", -- It's a very basic config later it will be more
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
	end,
}
