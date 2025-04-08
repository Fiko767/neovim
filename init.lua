local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

map = function(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = opts.silent ~= false
	vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.autoindent = true

vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.undofile = true

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>x", ":wqa<CR>")
map("n", "<leader>h", ":nohlsearch<CR>")

map("i", "jj", "<Esc>")

-- For Copilot
map("n", "<leader>ac", ":CopilotChat<CR>")
map("v", "<leader>ae", ":CopilotChatExplain<CR>")
map("v", "<leader>ar", ":CopilotChatReview<CR>")
map("v", "<leader>af", ":CopilotChatFix<CR>")
map("v", "<leader>ao", ":CopilotChatOptimize<CR>")
map("v", "<leader>ad", ":CopilotChatDocs<CR>")
map("v", "<leader>at", ":CopilotChatTests<CR>")
map("v", "<leader>am", ":CopilotChatCommit<CR>")
map("n", "<leader>am", ":CopilotChatCommit<CR>")

require("lazy").setup("plugins")

return {}
