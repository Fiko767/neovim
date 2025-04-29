return {
	"stevearc/oil.nvim",
	keys = {
		{ "-", "<cmd>Oil<CR>", desc = "Oil" },
	},
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
			win_options = {
				signcolumn = "yes:2",
			},
		})
	end,
}
