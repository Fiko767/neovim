return {
	"aweis89/aider.nvim",
	dependencies = {
		-- required for core functionality
		"akinsho/toggleterm.nvim",

		-- for fuzzy file `/add`ing functionality ("ibhagwan/fzf-lua" supported as well)
		"nvim-telescope/telescope.nvim",

		-- Optional, but great for diff viewing and after_update_hook integration
		"sindrets/diffview.nvim",
		"folke/snacks.nvim",
	},
	keys = {
		{ "<leader>As", "<cmd>AiderSpawn<CR>", desc = "Toggle Aidper (default)" },
		{ "<leader>A<space>", "<cmd>AiderToggle<CR>", desc = "Toggle Aider" },
		{ "<leader>Af", "<cmd>AiderToggle float<CR>", desc = "Toggle Aider Float" },
		{ "<leader>Av", "<cmd>AiderToggle vertical<CR>", desc = "Toggle Aider Float" },
		{ "<leader>Al", "<cmd>AiderAdd<CR>", desc = "Add file to aider" },
		{ "<leader>Ad", "<cmd>AiderAsk<CR>", desc = "Ask with selection", mode = { "v", "n" } },
		{ "<leader>Am", desc = "Change model" },
		{ "<leader>Ams", "<cmd>AiderSend /model sonnet<CR>", desc = "Switch to sonnet" },
		{ "<leader>Amh", "<cmd>AiderSend /model haiku<CR>", desc = "Switch to haiku" },
		{ "<leader>Amg", "<cmd>AiderSend /model gemini/gemini-exp-1206<CR>", desc = "Switch to haiku" },
		{ "<C-x>", "<cmd>AiderToggle<CR>", desc = "Toggle Aider", mode = { "i", "t", "n" } },
	},
	opts = {
		after_update_hook = function()
			require("diffview").open({ "HEAD^" })
		end,
	},
	lazy = false,
}
