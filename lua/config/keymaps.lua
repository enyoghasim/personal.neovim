vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>",
               {desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<CR>",
               {desc = 'Telescope live grep'})
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<CR>",
               {desc = 'Telescope buffers'})
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<CR>",
               {desc = 'Telescope help tags'})
