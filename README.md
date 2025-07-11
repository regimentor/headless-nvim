# Neovim Config

This is a personal Neovim configuration based on `lazy.nvim`.

## Plugin Manager

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager.

## Installed Plugins

| Plugin | Description |
|---|---|
| [blink.cmp](https://github.com/saghen/blink.cmp) | Modern completion framework for Neovim with LSP support |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Lightweight yet powerful formatter plugin for Neovim |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder for Neovim |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration for buffers with signs and blame |
| [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) | Color scheme |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Language Server Protocol (LSP) configurations for Neovim |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | A blazing fast and easy to configure statusline for Neovim |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters. |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer tree for Neovim |
| [noice.nvim](https://github.com/folke/noice.nvim) | Replaces the UI for messages, cmdline and popupmenu |
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
| `ga` | See available code actions |
| `gr` | Smart rename |
| `gb` | Show buffer diagnostics |
| `gB` | Show workspace diagnostics |
| `D` | Show line diagnostics |
| `K` | Show documentation for what is under cursor |
| `gs` | Show document symbols |
| `<leader>rs` | Restart LSP |
| `<C-h>` | Signature help (insert mode) |

### Git

| Keybinding | Description |
|---|---|
| `]c` | Go to next hunk |
| `[c` | Go to previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>tb` | Toggle current line blame |
| `<leader>hd` | Diff this |
| `<leader>td` | Toggle deleted |

### Navigation

| Keybinding | Description |
|---|---|
| `h` | Move left |
| `j` | Move down |
| `k` | Move up |
| `l` | Move right |
| `w` | Move to next word |
| `b` | Move to previous word |
| `0` | Move to beginning of line |
| `$` | Move to end of line |
| `gg` | Go to top of file |
| `G` | Go to bottom of file |
| `Ctrl-u` | Scroll up half page |
| `Ctrl-d` | Scroll down half page |
| `Ctrl-f` | Scroll down full page |
| `Ctrl-b` | Scroll up full page |

### Editing

| Keybinding | Description |
|---|---|
| `i` | Insert mode |
| `a` | Insert after cursor |
| `A` | Insert at end of line |
| `o` | Insert new line below |
| `O` | Insert new line above |
| `x` | Delete character |
| `dd` | Delete line |
| `yy` | Copy line |
| `p` | Paste |
| `u` | Undo |
| `Ctrl-r` | Redo |
| `r` | Replace character |
| `cw` | Change word |
| `dw` | Delete word |

### Search & Replace

| Keybinding | Description |
|---|---|
| `/` | Search forward |
| `?` | Search backward |
| `n` | Next search result |
| `N` | Previous search result |
| `*` | Search word under cursor |
| `:%s/old/new/g` | Replace all occurrences |
| `:%s/old/new/gc` | Replace with confirmation |

### Windows & Tabs

| Keybinding | Description |
|---|---|
| `:split` | Split window horizontally |
| `:vsplit` | Split window vertically |
| `Ctrl-w h` | Move to left window |
| `Ctrl-w j` | Move to bottom window |
| `Ctrl-w k` | Move to top window |
| `Ctrl-w l` | Move to right window |
| `Ctrl-w q` | Close window |
| `:tabnew` | New tab |
| `gt` | Next tab |
| `gT` | Previous tab |

### File Operations

| Keybinding | Description |
|---|---|
| `:w` | Save file |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |
| `:e filename` | Edit file |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Delete buffer |

### Fuzzy Finder & Search

| Keybinding | Description |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep search |
| `<leader>fd` | FZF builtin commands |
| `<leader><leader>` | Switch between buffers |

### File Explorer

| Keybinding | Description |
|---|---|
| `<leader>o` | Open parent directory in Oil |

### Formatting

| Keybinding | Description |
|---|---|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| Format on save | Automatic formatting (conform.nvim) |

### Other

| Keybinding | Description |
|---|---|
| `<leader>?` | Buffer Local Keymaps (which-key) |
| `<Esc><Esc>` | Exit terminal mode |
| `<Esc>` | Clear search highlights |
| `J` | Open line diagnostic |

## Features

- **Modern Completion**: Fast and intelligent code completion with `blink.cmp`
- **Git Integration**: Visual git signs, blame, and hunk navigation with `gitsigns.nvim`
- **Fuzzy Finding**: Powerful file and text search with `fzf-lua`
- **LSP Support**: Full Language Server Protocol support with diagnostics and code actions
- **Auto-formatting**: Automatic code formatting on save with `conform.nvim`
- **File Explorer**: Edit filesystem like a buffer with `oil.nvim` and tree view with `neo-tree.nvim`
- **Enhanced UI**: Better command line and notifications with `noice.nvim`
- **Syntax Highlighting**: Advanced syntax highlighting with `nvim-treesitter`
- **Status Line**: Informative status line with LSP status and git info
- **Key Bindings**: Helpful key binding popups with `which-key.nvim`
- **System Clipboard**: Automatic clipboard integration with system clipboard
- **Visual Keybindings**: Show pressed keys in real-time with `showkeys.nvim`
- **Smart Indentation**: Automatic indentation detection with `vim-sleuth`

## Configuration Highlights

- **System Clipboard Integration**: All yank (`y`), delete (`d`, `x`), and paste (`p`) operations are automatically synchronized with the system clipboard
- **Custom Diagnostics**: Beautiful diagnostic icons and floating windows with rounded borders
- **LSP Optimization**: Prevented duplicate LSP server instances with proper Mason configuration
- **Performance**: Lazy loading of plugins for fast startup times
- **Modern UI**: Kanagawa colorscheme with transparent diagnostic backgrounds

## Installation

1.  Clone this repository to `~/.config/nvim`.
2.  Start Neovim. `lazy.nvim` will automatically install all the plugins.
3.  Restart Neovim to ensure all plugins are loaded correctly.

## Requirements

- Neovim >= 0.9.0
- Git
- A terminal with true color support
- A [Nerd Font](https://www.nerdfonts.com/) for icons (optional but recommended)

## Supported Languages

- **Lua**: lua_ls, stylua
- **Rust**: rust_analyzer, rustfmt
- **Go**: gopls, gofmt, gofumpt, golines, gomodifytags, gotests
- **Python**: isort, black
- **JavaScript/TypeScript**: prettier
- **Bash**: bash-language-server
- **JSON**: prettier
- **YAML**: prettier
- **Markdown**: prettier
