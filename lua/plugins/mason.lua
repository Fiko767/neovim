return {
    "williamboman/mason.nvim", -- Basic config, can be expanded later
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {},
            automatic_installation = true,
        })

        require("mason-lspconfig").setup_handlers({
            function(server_name)
                local lspconfig = require("lspconfig")
                local capabilities = require("cmp_nvim_lsp").default_capabilities()

                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
            end,
        })
    end,
}

