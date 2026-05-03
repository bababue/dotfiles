return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "html",
        "cssls",
        "texlab",
        "marksman",
        "ruff",
      }
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {

        }
      },
      "neovim/nvim-lspconfig"
    }
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {},
  }
}
