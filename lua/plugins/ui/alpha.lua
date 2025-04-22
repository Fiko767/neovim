return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("l", "󰒲 Lazy.nvim", "<cmd>Lazy<CR>"),
			dashboard.button("t", "󰂿 Themes", "<cmd>Huez<CR>"),
			dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
		}

		dashboard.section.footer.val = { "Happy coding with Neovim!" }

		alpha.setup(dashboard.opts)
	end,
}
