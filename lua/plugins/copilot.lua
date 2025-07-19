return {
    "github/copilot.vim",
    lazy = false,
    config = function()
        -- Основные настройки
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true

        -- Включить Copilot для всех файлов
        vim.g.copilot_filetypes = {
            ["*"] = true,
        }

        -- Принять предложение
        vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
            expr = true,
            replace_keycodes = false,
            desc = "Accept Copilot suggestion",
        })

        -- Отклонить предложение
        vim.keymap.set("i", "<C-x>", "<Plug>(copilot-dismiss)", {
            desc = "Dismiss Copilot suggestion",
        })

        -- Следующее предложение
        vim.keymap.set("i", "<C-n>", "<Plug>(copilot-next)", {
            desc = "Next Copilot suggestion",
        })

        -- Предыдущее предложение
        vim.keymap.set("i", "<C-p>", "<Plug>(copilot-previous)", {
            desc = "Previous Copilot suggestion",
        })

        -- Запросить предложение
        vim.keymap.set("i", "<C-i>", "<Plug>(copilot-suggest)", {
            desc = "Request Copilot suggestion",
        })

        -- Принять следующее слово
        vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)", {
            desc = "Accept next word of Copilot suggestion",
        })

        -- Принять следующую строку
        vim.keymap.set("i", "<C-k>", "<Plug>(copilot-accept-line)", {
            desc = "Accept next line of Copilot suggestion",
        })

        vim.api.nvim_del_keymap("i", "<Tab>")
    end,
}
