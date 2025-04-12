return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
				ignore = false,
			},
			renderer = {
				indent_markers = {
					enable = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "├",
						none = " ",
					},
				},
				highlight_git = "none",
				icons = {
					glyphs = {
						git = {
							unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "",
							untracked = "",
							deleted = "",
							ignored = "󰴲",
						},
					},
				},
			},
		})
	end,
}
