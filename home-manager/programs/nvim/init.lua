-- define space as the leader key
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true})
vim.g.mapleader = ' '

-- define the color scheme to rose pine
vim.cmd('colorscheme rose-pine')

-- define the tab width to 4 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- import plugins
require('lspconfig')

print("after that")
