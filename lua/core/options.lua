vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.expandtab = true
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8

vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	severity_sort = true,
})

default = {
	keymaps = {
		slient = true,
		noremap = true,
	},
}

vim.o.clipboard = "unnamedplus"
