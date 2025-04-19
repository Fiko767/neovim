return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()
	end,
	keys = {
		{ "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>" },
		{ "<leader>gn", "<cmd>Gitsigns next_hunk<CR>" },
		{ "<leader>gp", "<cmd>Gitsigns prev_hunk<CR>" },

		{ "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>" },
		{ "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>" },
		{ "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>" },
		{ "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>" },
		{ "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>" },
		{ "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>" },

		{ "<leader>gP", "<cmd>Gitsigns preview_hunk<CR>" },
		{ "<leader>gd", "<cmd>Gitsigns diffthis<CR>" },
	},
}
