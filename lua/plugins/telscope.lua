return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },
    config = function()
        require("telescope").setup({
            defaults = {
                prompt_prefix = "> ",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = { width = 0.75, preview_cutoff = 120 },
            extensions = {
                    file_browser = {}
                },
            pickers = {
                    find_files = {
                        hidden = true
                    }
                }
            },
        })

        require("telescope").load_extension "file_browser"

        map("n", "<leader>ff", ":Telescope find_files<CR>")
        map("n", "<leader>fg", ":Telescope git_files<CR>")
        map("n", "<leader>fb", ":Telescope buffers<CR>")
        map("n", "<leader>fr", ":Telescope live_grep<CR>")
        map("n", "<leader>fh", ":Telescope help_tags<CR>")
        map("n", "<leader>fd", ":Telescope file_browser<CR>")
    end,
}

