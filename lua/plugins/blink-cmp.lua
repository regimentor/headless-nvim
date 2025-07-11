return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    event = "InsertEnter",
    -- Используем версию, как в примере, для стабильности
    version = "1.*",

    opts = {
        -- Используем пресет 'default', как в примере
        keymap = { preset = "default",
            ['<Tab>'] = {
                function(cmp)
                    if cmp.snippet_active() then return cmp.accept()
                    else return cmp.select_and_accept() end
                end,
                'snippet_forward',
                'fallback'
            },
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = { 
            documentation = { auto_show = false, window = { border = 'single' }}, 
            menu = {
                border = 'single',
                draw = {
                    components = {
                        kind_icon = {
                            text = function(ctx)
                                local icon = ctx.kind_icon
                                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                                    local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                                    if dev_icon then
                                        icon = dev_icon
                                    end
                                else
                                    icon = require("lspkind").symbolic(ctx.kind, {
                                        mode = "symbol",
                                    })
                                end

                                return icon .. ctx.icon_gap
                            end,

                            highlight = function(ctx)
                                local hl = ctx.kind_hl
                                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                                    local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                                    if dev_icon then
                                        hl = dev_hl
                                    end
                                end
                                return hl
                            end,
                        }
                    }
                }
            }
        },

        -- Определяем источники, которые будут использоваться
        sources = {
            default = { "lsp", "path", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
}

