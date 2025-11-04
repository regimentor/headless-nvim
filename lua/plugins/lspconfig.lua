-- ============================================================================
-- LSP Configuration
-- ============================================================================

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "ibhagwan/fzf-lua",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local fzf_lua = require("fzf-lua")

    -- Setup LSP keymaps
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        -- Navigation
        vim.keymap.set("n", "gR", function()
          fzf_lua.lsp_references()
        end, vim.tbl_extend("force", opts, { desc = "Show LSP references" }))

        vim.keymap.set("n", "gD", function()
          vim.lsp.buf.declaration()
        end, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))

        vim.keymap.set("n", "gd", function()
          fzf_lua.lsp_definitions()
        end, vim.tbl_extend("force", opts, { desc = "Show LSP definitions" }))

        vim.keymap.set("n", "gi", function()
          fzf_lua.lsp_implementations()
        end, vim.tbl_extend("force", opts, { desc = "Show LSP implementations" }))

        vim.keymap.set("n", "gt", function()
          fzf_lua.lsp_typedefs()
        end, vim.tbl_extend("force", opts, { desc = "Show LSP type definitions" }))

        -- Code actions
        vim.keymap.set({ "n", "v" }, "ga", function()
          vim.lsp.buf.code_action()
        end, vim.tbl_extend("force", opts, { desc = "See available code actions" }))

        vim.keymap.set("n", "gr", function()
          vim.lsp.buf.rename()
        end, vim.tbl_extend("force", opts, { desc = "Smart rename" }))

        -- Diagnostics
        vim.keymap.set("n", "gb", function()
          fzf_lua.diagnostics_document()
        end, vim.tbl_extend("force", opts, { desc = "Show buffer diagnostics" }))

        vim.keymap.set("n", "gB", function()
          fzf_lua.diagnostics_workspace()
        end, vim.tbl_extend("force", opts, { desc = "Show workspace diagnostics" }))

        vim.keymap.set("n", "D", function()
          vim.diagnostic.open_float()
        end, vim.tbl_extend("force", opts, { desc = "Show line diagnostics" }))

        -- Documentation
        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover()
        end, vim.tbl_extend("force", opts, { desc = "Show documentation for what is under cursor" }))

        vim.keymap.set("i", "<C-h>", function()
          vim.lsp.buf.signature_help()
        end, opts)

        -- Symbols
        vim.keymap.set("n", "gs", function()
          fzf_lua.lsp_document_symbols()
        end, vim.tbl_extend("force", opts, { desc = "Show Document Symbols" }))

        vim.keymap.set("n", "gS", function()
          fzf_lua.lsp_workspace_symbols()
        end, vim.tbl_extend("force", opts, { desc = "Show workspace Symbols" }))

        -- LSP management
        vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", vim.tbl_extend("force", opts, { desc = "Restart LSP" }))
      end,
    })

    -- Configure LSP servers
    -- Note: rust_analyzer is configured via rustaceanvim plugin
    local function setup_lua_ls()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              callSnippet = "Replace",
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })
    end

    local function setup_gopls()
      lspconfig.gopls.setup({
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })
    end

    -- Initialize LSP servers
    -- Note: rust_analyzer is initialized by rustaceanvim
    setup_lua_ls()
    setup_gopls()
  end,
}
