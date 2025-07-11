-- lazy.nvim
return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        cmdline = {
            enabled = true,
            view = "cmdline_popup",
            opts = {
                border = {
                    style = "single"
                },
                position = {
                    row = 5,
                    col = "50%"
                },
                size = {
                    width = 60,
                    height = "auto"
                }
            }
        },
        popupmenu = {
            enabled = true,
            backend = "nui",
            kind_icons = {}
        },
        messages = {
            enabled = true,
            view = "notify",
            view_error = "notify",
            view_warn = "notify",
            view_history = "messages",
            view_search = "virtualtext"
        }
    },
    dependencies = { -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim", -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify"}
}
