return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			background_colour = "NormalFloat",
		})
	end,
}
