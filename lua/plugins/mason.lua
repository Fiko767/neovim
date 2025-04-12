return {
	"williamboman/mason.nvim", -- Basic config, can be expanded later
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"luacheck",
				"pylint",
				"bacon",
				"eslint_d",
				"stylelint",
				"cpplint",
				"golangci-lint",
				"markdownlint",
			},
			auto_update = true,
		})

		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"ts_ls",
				"html",
				"cssls",
				"clangd",
				"yamlls",
				"gopls",
				"marksman",
			},
			automatic_installation = true,
		})

		require("mason-lspconfig").setup_handlers({
			function(server_name)
				local lspconfig = require("lspconfig")
				local capabilities = require("cmp_nvim_lsp").default_capabilities()

				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
	end,
}
