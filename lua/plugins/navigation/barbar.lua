return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	keys = {
		{ "<A-h>", "<cmd>BufferPrevious<CR>" },
		{ "<A-l>", "<cmd>BufferNext<CR>" },
		{ "<A-k>", "<cmd>BufferMovePrevious<CR>" },
		{ "<A-j>", "<cmd>BufferMoveNext<CR>" },
		{ "<A-q>", "<cmd>BufferClose<CR>" },
	},
	event = { "BufAdd", "BufReadPre" },
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
}
