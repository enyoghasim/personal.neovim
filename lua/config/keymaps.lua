-- Set leader key (like a prefix for custom shortcuts)
vim.g.mapleader = " "  -- Space as leader key

-- Basic keymaps
local keymap = vim.keymap.set

-- File explorer (nvim-tree)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Telescope (fuzzy finder)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find in files" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Save file
keymap("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- Quit
keymap("n", "<C-q>", ":q<CR>", { desc = "Quit" })
