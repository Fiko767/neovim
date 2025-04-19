return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"nvim-telescope/telescope.nvim", -- optional
	},
	keys = {
		{ "<leader>ng", "<cmd>Neogit<CR>" },
		{ "<leader>nc", "<cmd>NeogitCommit<CR>" },
		{ "<leader>nl", "<cmd>NeogitLogCurrent<CR>" },
	},
}
