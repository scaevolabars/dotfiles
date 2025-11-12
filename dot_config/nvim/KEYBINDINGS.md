# Neovim Keybindings Reference

**Leader Key:** `<Space>`

---

## Core Vim Options

### General Settings
- Line numbers enabled
- 4-space indentation (tabs converted to spaces)
- Swap files disabled
- System clipboard integration enabled

### Basic Keybindings
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>h` | Normal | `:nohlsearch` | Clear search highlighting |
| `<leader>?` | Normal | Show Local Keymaps | Display buffer-specific keybindings |

---

## Which-Key (Command Discovery)

**Which-Key** automatically shows available keybindings after you press the leader key.

### How to Use
1. Press `<Space>` (leader key)
2. Wait 500ms - a popup will appear showing all available commands
3. Type the next key to execute a command

### Key Groups
- `<leader>f` - Find/Search commands (Telescope)
- `<leader>g` - Go/Git/Format commands (LSP & Git)
- `<leader>l` - Lazy plugin management
- `<leader>c` - Code actions

### Which-Key Features
- Shows marks on `'` and `` ` ``
- Shows registers on `"` in Normal mode or `<C-r>` in Insert mode
- Spelling suggestions on `z=`
- Rounded border popup window

---

## Window & Navigation

### Window Navigation (vim-tmux-navigator)
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-h>` | Normal | Navigate Left | Move to left window/tmux pane |
| `<C-j>` | Normal | Navigate Down | Move to window/tmux pane below |
| `<C-k>` | Normal | Navigate Up | Move to window/tmux pane above |
| `<C-l>` | Normal | Navigate Right | Move to right window/tmux pane |

---

## File Explorer (Neo-tree)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-n>` | Normal | `:Neotree filesystem reveal left` | Toggle file explorer |

### Neo-tree Settings
- Shows dotfiles (hidden files visible)
- Hides gitignored files
- Left-side panel

---

## Fuzzy Finder (Telescope)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ff` | Normal | Find Files | Search for files in project |
| `<leader>fg` | Normal | Live Grep | Search for text in project files |
| `<leader>/` | Normal | Current Buffer Search | Fuzzy search in current file |

### Telescope Completion Mappings
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-b>` | Insert | Scroll Docs Up | Scroll documentation up |
| `<C-f>` | Insert | Scroll Docs Down | Scroll documentation down |
| `<C-Space>` | Insert | Complete | Trigger completion |
| `<C-e>` | Insert | Abort | Close completion menu |
| `<CR>` | Insert | Confirm | Accept selected completion |

---

## LSP (Language Server Protocol)

### LSP Keybindings
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `K` | Normal | Hover | Show hover information |
| `<leader>gd` | Normal | Go to Definition | Jump to symbol definition |
| `<leader>gr` | Normal | Go to References | Show all references |
| `<leader>ca` | Normal | Code Action | Show available code actions |
| `<leader>gf` | Normal | Format | Format current buffer |

### Installed Language Servers
- **lua_ls** - Lua language server
- **basedpyright** - Python type checker
- **ruff** - Python linter/formatter
- **clangd** - C/C++ language server

### LSP Features
- Auto-complete via nvim-cmp
- Diagnostics with virtual text (● prefix)
- Underlined errors/warnings
- Severity sorting

---

## Buffer Management (Barbar)

### Buffer Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<A-,>` | Normal | Previous Buffer | Switch to previous buffer |
| `<A-.>` | Normal | Next Buffer | Switch to next buffer |

### Buffer Reordering
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<A-<>` | Normal | Move Buffer Left | Move current buffer left |
| `<A->>` | Normal | Move Buffer Right | Move current buffer right |

### Buffer Actions
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<A-c>` | Normal | Close Buffer | Close current buffer |
| `<A-p>` | Normal | Pin/Unpin Buffer | Pin/unpin current buffer |
| `<C-p>` | Normal | Buffer Pick | Pick buffer to switch to |

### Barbar Features
- Git status indicators (+ added, ~ changed, - deleted)
- Integrates with Neo-tree sidebar

---

## Git Integration

### LazyGit
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>lg` | Normal | `:LazyGit` | Open LazyGit interface |

### LazyGit Commands
- `:LazyGit` - Open LazyGit
- `:LazyGitConfig` - Open LazyGit config
- `:LazyGitCurrentFile` - Open LazyGit for current file
- `:LazyGitFilter` - Open LazyGit with filter
- `:LazyGitFilterCurrentFile` - Filter current file

### Gitsigns
- Git decorations in sign column
- Visual indicators for added/changed/deleted lines

---

## Formatting & Linting

### None-ls (null-ls)
- **stylua** - Lua formatter (auto-installed via Mason)

### Format Command
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>gf` | Normal | Format Buffer | Format current buffer with LSP |

---

## Completion (nvim-cmp)

### Completion Sources
1. LSP completions
2. LuaSnip snippets
3. Buffer text completions

### Completion Keybindings
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-b>` | Insert | Scroll Docs Up | Scroll documentation up |
| `<C-f>` | Insert | Scroll Docs Down | Scroll documentation down |
| `<C-Space>` | Insert | Complete | Trigger completion |
| `<C-e>` | Insert | Abort | Close completion menu |
| `<CR>` | Insert | Confirm | Accept selected completion |

### Snippet Engine
- LuaSnip with friendly-snippets collection

---

## Theme & UI

### Color Scheme
- **Catppuccin Mocha** - Dark theme with warm colors

### Status Line (Lualine)
- Shows mode, file info, git status
- Catppuccin theme

### Start Screen (Alpha)
- Custom Neovim logo on startup

---

## Package Management (Lazy.nvim)

### Lazy Commands
- `:Lazy` - Open Lazy.nvim UI
- `:Lazy sync` - Install/update/clean plugins
- `:Lazy update` - Update all plugins
- `:Lazy clean` - Remove unused plugins
- `:Lazy check` - Check for updates
- `:Lazy restore` - Restore from lockfile

---

## Tool Management (Mason)

### Mason Commands
- `:Mason` - Open Mason UI
- `:MasonInstall <package>` - Install a package
- `:MasonUninstall <package>` - Uninstall a package
- `:MasonUpdate` - Update all packages

### Auto-installed Tools
**Language Servers:**
- lua_ls
- basedpyright
- ruff
- clangd

**Formatters:**
- stylua

---

## Treesitter

### Installed Parsers
- lua
- javascript
- rust
- python
- sql
- cpp
- bash

### Features
- Enhanced syntax highlighting
- Smart indentation
- Code folding support

---

## Remote Development

### Remote-nvim
- Connect to remote servers
- Edit files over SSH
- Integrated with tmux sessions

**Note:** This plugin creates tmux sessions for remote connections automatically.

---

## Tips & Tricks

### Quick Reference
1. **Find anything:** `<leader>ff` then type filename
2. **Search in files:** `<leader>fg` then type search term
3. **Toggle file tree:** `<C-n>`
4. **Format code:** `<leader>gf`
5. **Git interface:** `<leader>lg`
6. **Jump to definition:** `<leader>gd`
7. **See documentation:** `K` (hover)
8. **Code actions:** `<leader>ca`

### Common Workflows

**Opening a project:**
1. `cd` to project directory
2. Run `nvim`
3. Use `<C-n>` to browse files or `<leader>ff` to search

**Working with LSP:**
1. Hover over symbol: `K`
2. Jump to definition: `<leader>gd`
3. Find all usages: `<leader>gr`
4. Quick fix: `<leader>ca`

**Git workflow:**
1. Open LazyGit: `<leader>lg`
2. Stage/commit changes in LazyGit UI
3. Visual git indicators in bufferline and gutter

---

## Diagnostic Symbols

### Virtual Text Prefix
- `●` - Diagnostic indicator (errors, warnings, hints)

### Diagnostic Configuration
- Virtual text enabled with spacing
- Signs in gutter enabled
- Underlines for issues
- Severity sorting (errors first)

---

## Notes

- All `<leader>` commands use `Space` as the leader key
- `<C-*>` means Ctrl + key
- `<A-*>` means Alt/Option + key (may require terminal configuration)
- Some Alt/Option key combinations may not work in all terminals
- Tmux navigation requires tmux to be installed and configured

---

**Configuration Location:** `~/.config/nvim/`

**To reload config:** Restart Neovim or use `:source ~/.config/nvim/init.lua`
