return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                auto_install = true,
                ensure_installed = { "lua_ls", "pyright", "ts_ls", "html", "bashls", "cssls", "jsonls", "yamlls", "marksman", "dockerls", "clangd", "emmet_ls", "gopls", "rust_analyzer" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            local lspconfig = require("lspconfig")
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
            })
        end,
    },
}
