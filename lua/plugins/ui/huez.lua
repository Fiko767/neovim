return {
	"vague2k/huez.nvim",
	lazy = false,
	keys = {
		{ "<leader>th", "<cmd>Huez<cr>" },
	},
	config = function()
		require("huez").setup()
	end,
}
