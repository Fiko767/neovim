return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		-- Extensions
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-media-files.nvim",
		"nvim-telescope/telescope-ui-select.nvim",

		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>" },
		{ "<leader>fr", "<cmd>Telescope live_grep<CR>" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<CR>" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>" },

		-- Telescope git
		{ "<leader>fgb", "<cmd>Telescope git_branches<CR>" },
		{ "<leader>fgc", "<cmd>Telescope git_commits<CR>" },
		{ "<leader>fgf", "<cmd>Telescope git_files<CR>" },
		{ "<leader>fgs", "<cmd>Telescope git_status<CR>" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
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
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
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
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("media_files")
		require("telescope").load_extension("ui-select")
	end,
}
