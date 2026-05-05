return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "stylua",
          "black",
          "prettier",
          "eslint_d",
        },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "black" },
          javascript = { "prettier" },
          lua = { "stylua" },
          markdown = { "prettier" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true, -- falls kein Formatter definiert → LSP als Fallback
        },
      })
    end,
  },
}
