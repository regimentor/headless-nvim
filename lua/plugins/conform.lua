return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "isort", "black" },
            -- Customize format options for the filetype (:help conform.format)
            rust = {
                "rustfmt",
                lsp_format = "fallback",
            },
            -- Conform will run the first available formatter
            -- Используем LSP форматирование ESLint с fallback на prettier
            javascript = {
                lsp_format = "prefer",
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            typescript = {
                lsp_format = "prefer",
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            javascriptreact = {
                lsp_format = "prefer",
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            typescriptreact = {
                lsp_format = "prefer",
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            prisma = {
                lsp_format = "prefer",
            },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 200,
            lsp_format = "fallback",
        },
    },
}
