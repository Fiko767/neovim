return {
	"sindrets/diffview.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>vo", "<cmd>DiffviewOpen<CR>" },
		{ "<leader>vc", "<cmd>DiffviewClose<CR>" },
		{ "<leader>vf", "<cmd>DiffviewFileHistory<CR>" },
	},
	config = function()
		require("diffview").setup()
	end,
}
