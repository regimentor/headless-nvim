# 🚀 Headless Neovim Configuration

A modern, feature-rich Neovim configuration focused on developer productivity, LSP integration, and AI-powered coding assistance.

## ✨ Features

- **🎨 Beautiful UI**: Kanagawa colorscheme with modern aesthetics
- **🧠 AI Integration**: GitHub Copilot for intelligent code suggestions
- **⚡ Fast Performance**: Lazy loading with optimized startup times
- **🔧 LSP Support**: Complete language server integration with diagnostics
- **📁 File Management**: Both tree-style (neo-tree) and buffer-style (oil) explorers
- **🔍 Fuzzy Search**: Powerful file and content search with fzf-lua
- **📊 Visual Diagnostics**: Beautiful error/warning indicators with custom icons
- **🎯 Key Visualization**: Real-time display of pressed key combinations
- **📋 System Integration**: Seamless clipboard synchronization
- **🌈 Syntax Highlighting**: Advanced highlighting with nvim-treesitter

## Plugin Manager

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager.

## Installed Plugins

| Plugin | Description |
|---|---|
| [blink.cmp](https://github.com/saghen/blink.cmp) | Modern completion framework for Neovim with LSP support |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Lightweight yet powerful formatter plugin for Neovim |
| [copilot.vim](https://github.com/github/copilot.vim) | GitHub Copilot AI pair programmer for Neovim |
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

### GitHub Copilot

| Keybinding | Description |
|---|---|
| `<C-j>` | Accept Copilot suggestion |
| `<C-x>` | Dismiss Copilot suggestion |
| `<C-n>` | Next Copilot suggestion |
| `<C-p>` | Previous Copilot suggestion |
| `<C-i>` | Request Copilot suggestion |
| `<C-l>` | Accept next word of suggestion |
| `<C-k>` | Accept next line of suggestion |

**Note**: All Copilot keybindings work in Insert mode only.

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
- **AI Pair Programming**: GitHub Copilot integration for AI-powered code suggestions
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

1. **Backup your existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/regimentor/headless-nvim.git ~/.config/nvim
   ```

3. **Start Neovim** - `lazy.nvim` will automatically install all plugins:
   ```bash
   nvim
   ```

4. **Setup GitHub Copilot**:
   - Run `:Copilot setup` in Neovim
   - Follow the authentication process
   - Verify with `:Copilot status`

5. **Restart Neovim** to ensure all plugins are loaded correctly.

## Requirements

- **Neovim** >= 0.9.0
- **Git** for cloning repositories and version control
- **Node.js** >= 16.0 (for some LSP servers)
- **A terminal with true color support**
- **[Nerd Font](https://www.nerdfonts.com/)** for icons (recommended)
- **GitHub Copilot subscription** for AI suggestions (optional)

## Quick Start

After installation, here are the essential commands to get started:

### First Steps
1. **Check plugin status**: `:Lazy` 
2. **Setup Copilot**: `:Copilot setup`
3. **Check LSP servers**: `:Mason`
4. **View diagnostics**: `:LspInfo`

### Essential Keybindings
- **File Navigation**: `<leader>ff` (find files), `<leader>fg` (grep search)
- **LSP**: `gd` (go to definition), `gr` (rename), `K` (hover documentation)
- **Copilot**: `<C-j>` (accept suggestion), `<C-\>` (request suggestion)
- **Git**: `]c` (next hunk), `[c` (previous hunk)

### Common Commands
- `:Copilot status` - Check Copilot connection
- `:LspRestart` - Restart LSP servers
- `:Mason` - Manage LSP servers and tools
- `:Lazy sync` - Update all plugins

### GitHub Copilot Setup

After starting Neovim for the first time:

1. Run `:Copilot setup`
2. Follow the authentication process
3. Verify installation with `:Copilot status`

### Copilot Commands

- `:Copilot enable` - Enable Copilot
- `:Copilot disable` - Disable Copilot
- `:Copilot status` - Check Copilot status
- `:Copilot panel` - Open suggestions panel
- `:Copilot signout` - Sign out of Copilot

## Troubleshooting

### Common Issues

#### LSP not working
```bash
# Check LSP status
:LspInfo

# Restart LSP
:LspRestart

# Check Mason installations
:Mason
```

#### Copilot not responding
```bash
# Check Copilot status
:Copilot status

# Restart Copilot
:Copilot disable
:Copilot enable
```

#### Plugins not loading
```bash
# Check plugin manager
:Lazy

# Sync all plugins
:Lazy sync

# Clean and reinstall
:Lazy clean
:Lazy sync
```

#### Keybindings not working
- Check if you're in the correct mode (Insert/Normal)
- Verify no conflicts with terminal emulator shortcuts
- Use `:verbose map <key>` to see what's mapped to a key

### Performance Issues
- Run `:Lazy profile` to identify slow plugins
- Check startup time with `nvim --startuptime startup.log`
- Disable unused language servers in Mason

## Supported Languages

- **Lua**: lua_ls, stylua
- **Rust**: rust_analyzer, rustfmt, clippy
- **Go**: gopls, gofmt, gofumpt, golines, gomodifytags, gotests
- **Python**: pyright, isort, black
- **JavaScript/TypeScript**: typescript-language-server, prettier
- **Bash**: bash-language-server
- **JSON**: json-lsp, prettier
- **YAML**: yaml-language-server, prettier
- **Markdown**: marksman, prettier
- **HTML/CSS**: html-lsp, css-lsp
- **C/C++**: clangd (install manually)

## Contributing

Feel free to submit issues and enhancement requests! 

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This configuration is open source and available under the [MIT License](LICENSE).
