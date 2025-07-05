return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua", "python", "javascript", "typescript", "html", "css",
          "bash", "json", "yaml", "markdown", "markdown_inline",
          "vim", "vimdoc", "query", "regex", "go", "rust", "java",
          "php", "ruby", "swift", "kotlin", "dockerfile", "sql",
          "xml", "toml", "gitcommit"
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
}
