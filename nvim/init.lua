print('init.lua')

-- steup plugins
require('packer-plugins')
require('setup-toggleterm')
require('setup-nvim-tree')
require('setup-gitsigns')
require('setup-lazygit')
require('setup-barbar')
require('setup-hlslens')
require('setup-lsp')

-- keymaps
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':bprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 't', ':ToggleTerm<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-t>', ':NvimTreeOpen<CR>', { noremap = true })

-- general
vim.wo.number = true
vim.o.wrap = false

-- tabsize
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- command hooks
vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = {"*.ts", "*.tsx"},
  command = "! yarn format %:p",
})

