-- ============================================================================
-- Highlight Groups Configuration
-- ============================================================================

local groups = {
  "NeoTreeDiagnosticError",
  "NeoTreeDiagnosticWarn",
  "NeoTreeDiagnosticInfo",
  "NeoTreeDiagnosticHint",
  "NeoTreeSignColumn",
  "DiagnosticSignError",
  "DiagnosticSignWarn",
  "DiagnosticSignInfo",
  "DiagnosticSignHint",
}

for _, name in ipairs(groups) do
  vim.api.nvim_set_hl(0, name, {
    bg = "NONE",
  })
end

