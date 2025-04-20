return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	keys = {
		{ "<Leader>bh", "<cmd>BufferPrevious<CR>" },
		{ "<Leader>bl", "<cmd>BufferNext<CR>" },
		{ "<Leader>bH", "<cmd>BufferMovePrevious<CR>" },
		{ "<Leader>bL", "<cmd>BufferMoveNext<CR>" },
		{ "<Leader>bd", "<cmd>BufferClose<CR>" },
	},
	event = { "BufAdd", "BufReadPre" },
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
}
