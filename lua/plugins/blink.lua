return {
    {
        "saghen/blink.compat",
        version = "*",
        lazy = true,
        opts = {},
    },

    {
        "saghen/blink.cmp",
        version = "1.*",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "moyiz/blink-emoji.nvim",
            "ray-x/cmp-sql",
            "Kaiser-Yang/blink-cmp-avante",
        require("blink").setup({
                provider = "avante",
                auto_trigger = true,
            })
        },

        opts = {
            keymap = {
                preset = "enter",
                ["<C-n>"] = { "select_next", "fallback" },
                ["<C-p>"] = { "select_prev", "fallback" },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = { documentation = { auto_show = true } },
            signature = { enabled = true },

            sources = {
                default = { "avante", "lsp", "path", "snippets", "buffer", "emoji", "sql" },
                providers = {
                    emoji = {
                        module = "blink-emoji",
                        name = "Emoji",
                        score_offset = 15,
                        opts = { insert = true },
                        should_show_items = function()
                            return vim.tbl_contains({ "gitcommit", "markdown" }, vim.o.filetype)
                        end,
                    },
                    sql = {
                        name = "sql",
                        module = "blink.compat.source",
                        score_offset = -3,
                        opts = {},
                        should_show_items = function()
                            return vim.o.filetype == "sql"
                        end,
                    },
                    avante = {
                        module = "blink-cmp-avante",
                        name = "Avante",
                        opts = {}
                    }
                },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" },
        },

        opts_extend = { "sources.default" },
    },
}
