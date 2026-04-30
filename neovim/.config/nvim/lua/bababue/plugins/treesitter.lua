return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvim-treesitter").setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      require("nvim-treesitter").install({
        "json", "javascript", "yaml", "toml",
        "xml", "html", "css", "markdown",
        "markdown_inline", "bash", "lua",
        "dockerfile", "gitignore", "vimdoc",
        "sql", "python",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "*" },
        callback = function()
          local ok = pcall(vim.treesitter.start)
          if ok then
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })

      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    lazy = false,
  },
}
