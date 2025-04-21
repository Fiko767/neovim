return {
	"supermaven-inc/supermaven-nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>St", "<cmd>SupermavenToggle<CR>" },
	},
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<Tab>",
				clear_suggestion = "<C-]>",
				accept_word = "<C-s>",
			},
		})
	end,
}
