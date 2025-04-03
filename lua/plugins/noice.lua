return {
    "folke/noice.nvim",
    depencidies = { "MunifTanjim/nui.nvim" },
    config = function()
        require("noice").setup()
    end,
}
