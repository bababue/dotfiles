return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "pyright",
      "html",
      "cssls",
      "texlab",
      "marksman"
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
}
