return {
  "folke/zen-mode.nvim",
  opts = {
    vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = "Toggle zen mode" }),
    window = {
      options = {
        number = true,
        relativenumber = false,
      }
    },
    plugins = {
      tmux = { enabled = true },
      gitsigns = { enabled = true },
    }
  }
}
