return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
    config = function()
      require("CopilotChat").setup({})

      local function open_copilot_chat_right()
        -- Save current window
        local current_win = vim.api.nvim_get_current_win()

        -- Open CopilotChat
        vim.cmd("CopilotChat")

        -- Get CopilotChat window
        local chat_win = vim.api.nvim_get_current_win()

        -- If it's a different window, move it to the right
        if chat_win ~= current_win then
          -- Move window to the right side of the screen
          vim.cmd("wincmd L")

          -- Set window width (30% of total width)
          local total_width = vim.o.columns
          local chat_width = math.floor(total_width * 0.3)
          vim.api.nvim_win_set_width(chat_win, chat_width)
        end

        -- Return to original window
        vim.api.nvim_set_current_win(current_win)
      end

      -- Set up keymaps for Copilot Chat
      vim.keymap.set("n", "<leader>cc", open_copilot_chat_right, { desc = "Open Copilot Chat" })
    end,
  },
}
