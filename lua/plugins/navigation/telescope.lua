return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		-- Extensions
		"nvim-telescope/telescope-file-browser.nvim",
		"xiyaowong/telescope-emoji.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-media-files.nvim",

		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>" },
		{ "<leader>fr", "<cmd>Telescope live_grep<CR>" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<CR>" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>" },

		-- Telescope Extensions
		{ "<leader>fb", "<cmd>Telescope file_browser<CR>" },
		{ "<leader>fe", "<cmd>Telescope emoji<CR>" },

		-- Telescope git
		{ "<leader>fgb", "<cmd>Telescope git_branches<CR>" },
		{ "<leader>fgc", "<cmd>Telescope git_commits<CR>" },
		{ "<leader>fgf", "<cmd>Telescope git_files<CR>" },
		{ "<leader>fgs", "<cmd>Telescope git_status<CR>" },
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
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				media_files = {
					filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "webm", "ogv", "gif", "pdf" },
					find_cmd = "rg",
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
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("media_files")
	end,
}
