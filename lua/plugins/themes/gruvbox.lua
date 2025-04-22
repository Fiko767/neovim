return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = true,
	opts = ...,
	config = function()
		vim.cmd("colorscheme gruvbox")
	end,
}
