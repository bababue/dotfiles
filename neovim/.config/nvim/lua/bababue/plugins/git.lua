return {
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set('n', '<leader>g', ":Git<Enter>", { desc = "Toggle git menu" })
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  }
}
