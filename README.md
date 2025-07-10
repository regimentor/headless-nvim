# Neovim Config

This is a personal Neovim configuration based on `lazy.nvim`.

## Plugin Manager

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager.

## Installed Plugins

| Plugin | Description |
|---|---|
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder for Neovim |
| [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) | Color scheme |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Language Server Protocol (LSP) configurations for Neovim |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | A blazing fast and easy to configure statusline for Neovim |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters. |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | A completion plugin for neovim written in Lua. |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | A vim-vinegar like file explorer that lets you edit your filesystem like a normal buffer. |
| [showkeys.nvim](https://github.com/nvzone/showkeys.nvim) | A Neovim plugin to show keys pressed. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | A highly extendable fuzzy finder over lists. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Neovim Treesitter configurations and abstraction layer |
| [vim-sleuth](https://github.com/tpope/vim-sleuth) | Heuristically set buffer options. |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | A Neovim plugin that displays a popup with possible keybindings of the command you started typing. |

## Key-bindings

### LSP

| Keybinding | Description |
|---|---|
| `gR` | Show LSP references |
| `gD` | Go to declaration |
| `gd` | Show LSP definitions |
| `gi` | Show LSP implementations |
| `gt` | Show LSP type definitions |
| `<leader>vca` | See available code actions |
| `<leader>rn` | Smart rename |
| `<leader>D` | Show buffer diagnostics |
| `<leader>d` | Show line diagnostics |
| `K` | Show documentation for what is under cursor |
| `<leader>rs` | Restart LSP |
| `<C-h>` | Signature help |

### Other

| Keybinding | Description |
|---|---|
| `<leader>?` | Buffer Local Keymaps (which-key) |

## Installation

1.  Clone this repository to `~/.config/nvim`.
2.  Start Neovim. `lazy.nvim` will automatically install all the plugins.

## TODO

- [ ] Add code completions
- [ ] Add LSP status (starting/loading)
- [ ] Display git status on the status line
- [ ] Add cmdline
