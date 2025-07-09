-- Open parrent directory in Oil
vim.keymap.set("n", "<Leader>o", "<cmd>Oil --float<CR>", {desc = "Open parrent directory in Oil"});


-- Code Actions
vim.keymap.set('n', 'J', function() vim.diagnostic.open_float() end, {desc = "Open line diagnostic"})

-- Basics commands
vim.keymap.set('n', '<leader>w', "<cmd>w<CR>" , { desc = 'Save' })
vim.keymap.set('n', '<leader>q', "<cmd>q<CR>" , { desc = 'Quit' })
vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeFocus<CR>", { desc = "Project Explorer" })
-- Search keymaps
vim.keymap.set('n', '<leader>ff', function() require('fzf-lua').files() end, {desc = "files search"})
vim.keymap.set('n', '<leader>fg', function() require('fzf-lua').live_grep() end, {desc = "grep search"})
vim.keymap.set('n', '<leader>fd', function() require('fzf-lua').builtin() end, {desc = "fzf all"})
vim.keymap.set('n', '<leader><leader>', function() require('fzf-lua').buffers() end, {desc = "buffers"})

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
