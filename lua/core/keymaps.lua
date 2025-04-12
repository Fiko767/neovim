vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>wqa<CR>")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("v", "jj", "<Esc>")

-- Nvim-Tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- Telescope git
vim.keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>fgc", "<cmd>Telescope git_commits<CR>")
vim.keymap.set("n", "<leader>fgf", "<cmd>Telescope git_files<CR>")
vim.keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<CR>")
