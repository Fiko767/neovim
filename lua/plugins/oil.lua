return {
    "stevearc/oil.nvim",
    dependencies = { "refractalize/oil-git-status.nvim" },
    config = function ()
        require("oil").setup({
            view_options = {
                show_hidden = true,
            },
            win_options = {
               signcolumn = "yes:2", 
            }
        })
        require("oil-git-status").setup()
    map("n", "-", ":Oil<CR>")
    end
}
