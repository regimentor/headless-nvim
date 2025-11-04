-- ============================================================================
-- Keymaps Configuration
-- ============================================================================

-- Helper function for fzf-lua keymaps
local function fzf_keymap(key, method, desc)
  vim.keymap.set("n", key, function()
    require("fzf-lua")[method]()
  end, { desc = desc })
end

-- ============================================================================
-- Basic Commands
-- ============================================================================
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree<CR>", { desc = "Project Explorer" })

-- ============================================================================
-- File Management
-- ============================================================================
vim.keymap.set("n", "<leader>o", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })

-- ============================================================================
-- Search and Navigation (fzf-lua)
-- ============================================================================
fzf_keymap("<leader>ff", "files", "Search files")
fzf_keymap("<leader>fg", "live_grep", "Live grep search")
fzf_keymap("<leader>fd", "builtin", "Fzf builtin commands")
fzf_keymap("<leader><leader>", "buffers", "Search buffers")

-- ============================================================================
-- Text Editing
-- ============================================================================
-- Visual mode indentation
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection and keep selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection and keep selection" })

-- Move lines up and down in visual mode
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

-- Format file
vim.keymap.set("n", "<C-S-i>", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

-- ============================================================================
-- Terminal
-- ============================================================================
-- Exit terminal mode with a shortcut that is easier to discover
-- NOTE: This won't work in all terminal emulators/tmux/etc.
-- Use <C-\><C-n> as fallback to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- ============================================================================
-- Utilities
-- ============================================================================
-- Clear search highlights when pressing <Esc> in normal mode
-- See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
