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
              buildScripts = {
                enable = true,
              },
              allTargets = true,
            },
            check = { 
              command = "clippy",
              extraEnv = {},
              allTargets = true,
            },
            checkOnSave = {
              command = "clippy",
              allTargets = true,
            },
            procMacro = { 
              enable = true,
              attributes = {
                enable = true,
              },
            },
            -- Improve type inference and analysis
            rustc = {
              source = "discover",
            },
            files = {
              watcher = "client",
            },
            -- Improve type inference
            completion = {
              autoimport = {
                enable = true,
              },
              fullFunctionSignatures = {
                enable = true,
              },
            },
            -- Improve diagnostics for better type information
            diagnostics = {
              enable = true,
              experimental = {
                enable = true,
              },
              disabled = {},
              warningsAsHint = {},
            },
            -- Improve type analysis
            typing = {
              continueCommentsOnNewline = true,
            },
            -- Indexing settings for better type resolution
            index = {
              procMacro = {
                enable = true,
              },
            },
            -- Inlay hints settings
            inlayHints = {
              enable = true,
              -- Show variable types
              typeHints = {
                enable = true,
                hideClosureInitialization = false,
                hideNamedConstructor = false,
                maxLength = 50,
                separator = " → ",
              },
              -- Function parameters
              parameterHints = {
                enable = true,
                showNames = true,
                maxLength = 25,
              },
              -- Chaining hints
              chainingHints = {
                enable = true,
                maxLength = 25,
              },
              -- Lifetime hints
              lifetimeElisionHints = {
                enable = "always",
                useParameterNames = false,
              },
              -- Closure return type hints
              closureReturnTypeHints = {
                enable = "always",
              },
              -- Discriminant hints
              discriminantHints = {
                enable = "always",
              },
            },
          },
        },
      },
    }
  end,
}

