return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup()
            vim.cmd.colorscheme "catppuccin"
        end
    }, {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {'nvim-lua/plenary.nvim'},
        config = function()
            local builtin = require('telescope.builtin'), setup()
        end
    }
}
