vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>wqa<CR>")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("v", "jj", "<Esc>")

vim.keymap.set("n", "<leader>t", "<cmd>terminal<CR>")

-- Navigate in insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- Split and Vsplit
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>")

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

-- Nvim-Tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- Telescop Extensions
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope emoji<CR>")

-- Telescope git
vim.keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>fgc", "<cmd>Telescope git_commits<CR>")
vim.keymap.set("n", "<leader>fgf", "<cmd>Telescope git_files<CR>")
vim.keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<CR>")

-- Neogit
vim.keymap.set("n", "<leader>ng", "<cmd>Neogit<CR>")
vim.keymap.set("n", "<leader>nc", "<cmd>NeogitCommit<CR>")
vim.keymap.set("n", "<leader>nl", "<cmd>NeogitLogCurrent<CR>")

-- Gitsigns
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
vim.keymap.set("n", "<leader>gn", "<cmd>Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns prev_hunk<CR>")

vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>")
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>")
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>")

vim.keymap.set("n", "<leader>gP", "<cmd>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>")

-- Barbar
vim.keymap.set("n", "<A-h>", "<cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<A-l>", "<cmd>BufferNext<CR>")
vim.keymap.set("n", "<A-,>", "<cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<A-.>", "<cmd>BufferMoveNext<CR>")
vim.keymap.set("n", "<A-q>", "<cmd>BufferClose<CR>")
