return {
	"nvim-telekasten/telekasten.nvim",
	keys = {
		{ "<leader>zp", "<cmd>Telekasten panel<CR>", desc = "Telekasten Panel" },
		{ "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "Find Notes" },
		{ "<leader>zg", "<cmd>Telekasten search_notes<CR>", desc = "Search Notes" },
		{ "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "Goto Today's Note" },
		{ "<leader>zz", "<cmd>Telekasten follow_link<CR>", desc = "Follow Link" },
		{ "<leader>zn", "<cmd>Telekasten new_note<CR>", desc = "New Note" },
		{ "<leader>zc", "<cmd>Telekasten show_calendar<CR>", desc = "Show Calendar" },
		{ "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", desc = "Show Backlinks" },
		{ "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", desc = "Insert Image Link" },
	},
	config = function()
		require("telekasten").setup({
			home = vim.fn.expand("~/.notes"),
		})
	end,
}
