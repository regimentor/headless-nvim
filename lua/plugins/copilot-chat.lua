return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken",                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
        },
        -- See Commands section for default commands if you want to lazy load on them
        config = function()
            require("CopilotChat").setup({
                -- See Configuration section for options
            })


            local function open_copilot_chat_right()
                -- Сохраняем текущее окно
                local current_win = vim.api.nvim_get_current_win()
                
                -- Открываем CopilotChat
                vim.cmd('CopilotChat')
                
                -- Получаем окно CopilotChat
                local chat_win = vim.api.nvim_get_current_win()
                
                -- Если это не то же окно, перемещаем его вправо
                if chat_win ~= current_win then
                    -- Перемещаем окно в правую часть экрана
                    vim.cmd('wincmd L')
                    
                    -- Устанавливаем ширину окна (40% от общей ширины)
                    local total_width = vim.o.columns
                    local chat_width = math.floor(total_width * 0.3) -- 30% ширины экрана
                    vim.api.nvim_win_set_width(chat_win, chat_width)
                end
                
                -- Возвращаемся в исходное окно
                vim.api.nvim_set_current_win(current_win)
            end

            -- Optional: Set up keymaps for Copilot Chat
            vim.keymap.set("n", "<leader>cc", open_copilot_chat_right, { desc = "Open Copilot Chat" })
        end
    },
}
