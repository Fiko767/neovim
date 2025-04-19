vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>wqa<CR>")

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<leader>t", "<cmd>terminal<CR>")

-- Navigate in insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- LSP (from ChatGPT)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gf", vim.lsp.buf.definition)

vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration)
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help)

vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>lq", vim.diagnostic.setqflist)
vim.keymap.set("n", "<leader>ln", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_prev)

-- Supermaven
vim.keymap.set("n", "<leader>St", "<cmd>SupermavenToggle<CR>")
vim.keymap.set("n", "<leader>Sc", "<cmd>SupermavenClearLog<CR>")
vim.keymap.set("n", "<leader>Ss", "<cmd>SupermavenStatus<CR>")
