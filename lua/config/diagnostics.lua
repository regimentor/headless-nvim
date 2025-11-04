-- ============================================================================
-- Diagnostics Configuration
-- ============================================================================

vim.diagnostic.config({
  severity_sort = true,
  float = {
    border = "rounded",
    source = "if_many",
  },
  underline = {
    severity = vim.diagnostic.severity.ERROR,
  },
  virtual_text = true, -- Enable virtual text for diagnostics
  update_in_insert = false, -- Keep diagnostics active in insert mode
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
  },
})

