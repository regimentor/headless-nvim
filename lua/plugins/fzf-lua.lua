return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        files = {
            git_icons = true,
        },
        winopts = {
            preview = {
                layout = "vertical",
                vertical = "down:70%",
                height = 0.85,
                width = 0.85,
            },
        },
    },
}
