return {
    "stevearc/oil.nvim",
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,

    config = function()
        require("oil").setup({
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
            },
        })
    end,
}
