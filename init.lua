require("config.lazy");
require("config.keymaps");

-- Make line numbers default
vim.o.number = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
vim.cmd("colorscheme kanagawa");
vim.diagnostic.config({
    severity_sort = true,
    float = {
        border = 'rounded',
        source = 'if_many'
    },
    underline = {
        severity = vim.diagnostic.severity.ERROR
    },
    virtual_text = true, -- Specify Enable virtual text for diagnostics
    update_in_insert = false, -- Keep diagnostics active in insert mode
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 '
        }
    }
})

local groups = {"NeoTreeDiagnosticError", "NeoTreeDiagnosticWarn", "NeoTreeDiagnosticInfo", "NeoTreeDiagnosticHint",
                "NeoTreeSignColumn", "DiagnosticSignError", "DiagnosticSignWarn", "DiagnosticSignInfo",
                "DiagnosticSignHint"}

for _, name in ipairs(groups) do
    vim.api.nvim_set_hl(0, name, {
        bg = "NONE",
    })
end

