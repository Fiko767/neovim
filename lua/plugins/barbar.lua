return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",     -- OPTIONAL
        "nvim-tree/nvim-web-devicons", -- OPTIONAL
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    config = function()
        -- Setup aufrufen, sonst kommt keine Leiste!
        require("barbar").setup {
            animation = true,
            auto_hide = false,
            -- Weitere Optionen hier …
        }

        map("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
        map("n", "<A-l>", "<Cmd>BufferNext<CR>")
        map("n", "<A-,>", "<Cmd>BufferMovePrevious<CR>")
        map("n", "<A-.>", "<Cmd>BufferMoveNext<CR>")
        map("n", "<A-q>", "<Cmd>BufferClose<CR>")
    end
}
