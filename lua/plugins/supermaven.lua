return {
	"supermaven-inc/supermaven-nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>St", "<cmd>SupermavenToggle<CR>" },
	},
	config = function()
		require("supermaven-nvim").setup({})
	end,
}
