return {
  "github/copilot.vim",
  lazy = false,
  config = function()
    -- Basic settings
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true

    -- Enable Copilot for all file types
    vim.g.copilot_filetypes = {
      ["*"] = true,
    }

    -- Accept suggestion
    vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = "Accept Copilot suggestion",
    })

    -- Dismiss suggestion
    vim.keymap.set("i", "<C-x>", "<Plug>(copilot-dismiss)", {
      desc = "Dismiss Copilot suggestion",
    })

    -- Next suggestion
    vim.keymap.set("i", "<C-n>", "<Plug>(copilot-next)", {
      desc = "Next Copilot suggestion",
    })

    -- Previous suggestion
    vim.keymap.set("i", "<C-p>", "<Plug>(copilot-previous)", {
      desc = "Previous Copilot suggestion",
    })

    -- Request suggestion
    vim.keymap.set("i", "<C-i>", "<Plug>(copilot-suggest)", {
      desc = "Request Copilot suggestion",
    })

    -- Accept next word
    vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)", {
      desc = "Accept next word of Copilot suggestion",
    })

    -- Accept next line
    vim.keymap.set("i", "<C-k>", "<Plug>(copilot-accept-line)", {
      desc = "Accept next line of Copilot suggestion",
    })

    vim.api.nvim_del_keymap("i", "<Tab>")
  end,
}
