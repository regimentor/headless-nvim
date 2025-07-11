return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "ibhagwan/fzf-lua", -- Добавляем fzf-lua как зависимость
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }
                local fzf_lua = require("fzf-lua")

                opts.desc = "Show LSP references"
                vim.keymap.set("n", "gR", function() fzf_lua.lsp_references() end, opts) 

                opts.desc = "Go to declaration"
                vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts) 

                opts.desc = "Show LSP definitions"
                vim.keymap.set("n", "gd", function() fzf_lua.lsp_definitions() end, opts) 

                opts.desc = "Show LSP implementations"
                vim.keymap.set("n", "gi", function() fzf_lua.lsp_implementations() end, opts) 

                opts.desc = "Show LSP type definitions"
                vim.keymap.set("n", "gt", function() fzf_lua.lsp_type_definitions() end, opts) 

                opts.desc = "See available code actions"
                vim.keymap.set({ "n", "v" }, "<leader>vca", function() vim.lsp.buf.code_action() end, opts)                 

                opts.desc = "Smart rename"
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts) 

                opts.desc = "Show buffer diagnostics"
                vim.keymap.set("n", "<leader>D", function() fzf_lua.diagnostics_buf() end, opts) 

                opts.desc = "Show line diagnostics"
                vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts) 

                opts.desc = "Show documentation for what is under cursor"
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts) 

                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) 

                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end
        })


        local lspconfig = require("lspconfig")
        lspconfig.rust_analyzer.setup({
            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        allFeatures = true,
                        loadOutDirsFromCheck = true,
                    },
                    check = { command = "clippy" },
                    checkOnSave = true,
                    procMacro = { enable = true },
                },
            },
        })
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
    end,
}
