return {
	"GeorgesAlkhouri/nvim-aider",
	cmd = "Aider",
	dependencies = {
		"nvim-tree/nvim-tree.lua",
	},
	keys = {
		{ "<leader>At", "<cmd>Aider toggle<CR>" },
		{ "<leader>As", "<cmd>Aider send<CR>" },
		{ "<leader>Ac", "<cmd>Aider command<CR>" },
		{ "<leader>Ab", "<cmd>Aider buffer<CR>" },
		{ "<leader>Aa", "<cmd>Aider add<CR>" },
		{ "<leader>Ad", "<cmd>Aider drop<CR>" },
		{ "<leader>Aar", "<cmd>Aider add readonly<CR>" },
	},
}
