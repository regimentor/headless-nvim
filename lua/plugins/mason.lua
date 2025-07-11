return {
    "mason-org/mason.nvim",
    opts = {},
    dependencies = {'mason-org/mason-lspconfig.nvim', 'neovim/nvim-lspconfig',
                    'WhoIsSethDaniel/mason-tool-installer.nvim'},
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local mason_tool_installer = require('mason-tool-installer')

        mason.setup()
        mason_lspconfig.setup({
            automatic_installation = true,
            ensure_installed = {"lua_ls", "rust_analyzer", "gopls"}
        })

        mason_tool_installer.setup({
            automatic_installation = true,
            ensure_installed = {"golangci-lint", "bash-language-server", "prettier", "stylua", "rustfmt", 'gofumpt',
                                'golines', 'gomodifytags', 'gotests', "isort", "black"}
        })
    end
}

