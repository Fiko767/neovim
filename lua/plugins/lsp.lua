return {
	"williamboman/mason.nvim", -- Basic config, can be expanded later
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
	},
	-- from AI
	keys = {
		{ "gd", vim.lsp.buf.definition, desc = "Go to Definition" },

		{ "<leader>ls", vim.lsp.buf.signature_help, desc = "Signature Help" },

		{ "<leader>lS", vim.lsp.buf.workspace_symbol, desc = "Workspace Symbols" },
		{ "<leader>ld", vim.lsp.buf.document_symbol, desc = "Document Symbols" },
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
