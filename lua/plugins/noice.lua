return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        cmdline = {
            enabled = true,
            view = "cmdline_popup",
            opts = {
                border = {
                    style = "single",
                },
                position = {
                    row = 5,
                    col = "50%",
                },
                size = {
                    width = 60,
                    height = "auto",
                },
            }
        },
        popupmenu = {
            enabled = true,
            backend = "nui",
            kind_icons = {},
        },
        messages = {
            enabled = true,
            view = "notify",
            view_error = "notify",
            view_warn = "notify",
            view_history = "messages",
            view_search = "virtualtext",
        },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
