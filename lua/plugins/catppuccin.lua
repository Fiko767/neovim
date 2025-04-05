return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            integrations = {
                native_lsp = {
                    enabled = true,
                },
            },
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = colors.lavender },
                    CursorLineNr = { fg = colors.rosewater, style = { "bold" } },
                }
            end
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
