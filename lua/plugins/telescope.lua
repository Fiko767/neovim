return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		-- Extensions
		"nvim-telescope/telescope-file-browser.nvim",
		"xiyaowong/telescope-emoji.nvim",

		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				file_browser = {
					hijack_netrw = true,
					hidden = true,
					no_ignore = true,
				},
				emoji = {
					action = function(emoji)
						vim.api.nvim_put({ emoji.value }, "c", false, true)
					end,
				},
			},
			defaults = {
				file_ignore_patterns = { "%.git/" },
			},
			pickers = {
				find_files = {
					hidden = true,
					no_ignore = true,
				},
			},
		})
		require("telescope").load_extension("file_browser")
		require("telescope").load_extension("emoji")
	end,
}
