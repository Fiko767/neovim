return {
	"nvimdev/lspsaga.nvim",
	event = "VeryLazy",
	keys = {
		{ "K", "<cmd>Lspsaga hover_doc<CR>", desc = "Hover Documentation" },

		{ "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "Go to Definition" },
		{ "gi", "<cmd>Lspsaga finder imp<CR>", desc = "Go to Implementation" },
		{ "gr", "<cmd>Lspsaga finder ref<CR>", desc = "Go to References" },
		{ "gT", "<cmd>Lspsaga goto_type_definition<CR>", desc = "Go to Type Definition" },

		{ "<leader>la", "<cmd>Lspsaga code_action<CR>", desc = "Code Action" },
		{ "<leader>lr", "<cmd>Lspsaga rename<CR>", desc = "Rename Symbol" },

		{ "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous Diagnostic" },
		{ "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next Diagnostic" },
		{ "<leader>le", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Show Line Diagnostics" },
		{ "<leader>lq", "<cmd>Lspsaga show_buf_diagnostics<CR>", desc = "Buffer Diagnostics" },
		{ "<leader>lo", "<cmd>Lspsaga outline<CR>", desc = "Outline" },
	},
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				enable = false,
			},
		})
	end,
}
