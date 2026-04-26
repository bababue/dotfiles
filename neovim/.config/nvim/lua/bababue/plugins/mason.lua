return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "pyright",
      "html",
      "cssls"
    }
  },
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig"
  }
}
