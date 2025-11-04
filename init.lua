-- ============================================================================
-- Neovim Configuration Entry Point
-- ============================================================================

-- Load plugin manager
require("config.lazy")

-- Load configuration modules
require("config.options")
require("config.keymaps")
require("config.diagnostics")
require("config.highlights")
require("config.autocmds")
