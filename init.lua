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
vim.cmd("ShowkeysToggle")
