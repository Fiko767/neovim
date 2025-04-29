return {
	"refractalize/oil-git-status.nvim",
	after = "oil.nvim",
	config = function()
		require("oil-git-status").setup()
	end,
}
