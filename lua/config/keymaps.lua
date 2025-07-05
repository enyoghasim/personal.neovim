vim.g.mapleader = " " -- Space as leader key

-- Basic keymaps
local keymap = vim.keymap.set

keymap('n', '<leader>ff', "<cmd>Telescope find_files<CR>",
       {desc = 'Telescope find files'})
keymap('n', '<leader>fg', "<cmd>Telescope live_grep<CR>",
       {desc = 'Telescope live grep'})
keymap('n', '<leader>fb', "<cmd>Telescope buffers<CR>",
       {desc = 'Telescope buffers'})
keymap('n', '<leader>fh', "<cmd>Telescope help_tags<CR>",
       {desc = 'Telescope help tags'})

keymap("n", "<leader>e", "<Cmd>Neotree reveal<CR>")
