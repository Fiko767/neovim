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
		{ "<leader>vh", "<cmd>DiffviewOpenHunks<CR>" },
	},
	config = function()
		require("diffview").setup()
	end,
}
