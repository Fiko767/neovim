return {
	"vague2k/huez.nvim",
	keys = {
		{ "<leader>th", "<cmd>Huez<cr>" },
	},
	branch = "stable",
	event = "UIEnter",
	config = function()
		require("huez").setup({})
	end,
}
