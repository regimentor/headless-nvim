return {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- or if using mini.icons/mini.nvim
        -- dependencies = { "echasnovski/mini.icons" },
        opts = {
                files = {
                        git_icons = true
                },
                winopts = {
                        preview = {
                                layout = 'vertical',
                                vertical = 'down:70%',
                                height = 0.85,
                                width = 0.85,
                        }
                },
        }
}
