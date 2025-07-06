-- tries getting lazy.nvim from the standard data path of Neovim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If lazy.nvim is not found, clone it from the official repository
-- This ensures that lazy.nvim is available for plugin management
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require("config.keymaps")
require("config.options")
require("lazy").setup("plugins")

-- print("lazy.nvim loaded from: " .. lazypath)

