return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                prompt_prefix = "> ",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = { width = 0.75, preview_cutoff = 120 },
            },
        })

        map("n", "<leader>ff", ":Telescope find_files<CR>")
        map("n", "<leader>fg", ":Telescope git_files<CR>")
        map("n", "<leader>fb", ":Telescope buffers<CR>")
        map("n", "<leader>fr", ":Telescope live_grep<CR>")
        map("n", "<leader>fh", ":Telescope help_tags<CR>")
    end,
}

