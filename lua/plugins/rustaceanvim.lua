-- ============================================================================
-- Rustaceanvim Configuration
-- ============================================================================

return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  ft = { "rust" },
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    vim.g.rustaceanvim = {
      -- LSP server configuration
      server = {
        on_attach = function(client, bufnr)
          -- Enable inlay hints on LSP attach
          if vim.lsp.inlay_hint then
            vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
          end
        end,
        default_settings = {
          -- rust-analyzer settings
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
            },
            check = { command = "clippy" },
            checkOnSave = true,
            procMacro = { enable = true },
            -- Inlay hints settings
            inlayHints = {
              enable = true,
              -- Show variable types (like in RustRover)
              typeHints = {
                enable = true,
              },
              -- Function parameters (disabled, like in RustRover)
              parameterHints = {
                enable = true,
              },
              -- Chaining hints (disabled)
              chainingHints = {
                enable = true,
              },
            },
          },
        },
      },
    }
  end,
}

