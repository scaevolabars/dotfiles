vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.swapfile = false

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Window navigation handled by vim-tmux-navigator plugin
-- (Ctrl+hjkl keybindings are set by the plugin automatically)

vim.opt.clipboard = "unnamedplus"
