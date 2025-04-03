return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    config = function()
        require("neo-tree").setup({
            filesystem ={
                follow_current_file = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                }
            } 
        })
        map("n", "<leader>e", ":Neotree toggle<CR>")
    end,
}
