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
        config = function() require("telescope").setup() end
    }, {
        {
            "nvim-treesitter/nvim-treesitter",
            branch = 'master',
            lazy = false,
            build = ":TSUpdate",
            config = function()
                require("nvim-treesitter.configs").setup({
                    ensure_installed = {
                        "lua", "python", "javascript", "typescript", "html",
                        "css", "bash", "json", "yaml", "markdown",
                        "markdown_inline", "vim", "vimdoc", "query", "regex",
                        "go", "rust", "java", "php", "ruby", "swift", "kotlin",
                        "dockerfile", "sql", "xml", "toml", "gitcommit"
                    },
                    highlight = {
                        enable = true, -- Enable syntax highlighting
                        additional_vim_regex_highlighting = false
                    },
                    indent = {
                        enable = true -- Enable indentation
                    }
                })

            end
        }
    },
  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- Optional image support for file preview: See `# Preview Mode` for more information.
    -- {"3rd/image.nvim", opts = {}},
    -- OR use snacks.nvim's image module:
    -- "folke/snacks.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- add options here
  },
}
}
