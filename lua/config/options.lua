-- ============================================================================
-- Basic Vim Options
-- ============================================================================

-- Line numbers
vim.o.number = true

-- Enable mouse mode (useful for resizing splits)
vim.o.mouse = "a"

-- Use system clipboard for all yank, delete, change and put operations
vim.o.clipboard = "unnamedplus"

-- Tab settings
vim.o.tabstop = 4 -- Tab width in spaces
vim.o.shiftwidth = 4 -- Indent size for >> and <<
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Smart indentation

-- Scroll offset - number of lines visible above and below cursor
vim.o.scrolloff = 10

-- Show confirmation dialog for operations that would fail due to unsaved changes
-- See `:help 'confirm'`
vim.o.confirm = true

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
