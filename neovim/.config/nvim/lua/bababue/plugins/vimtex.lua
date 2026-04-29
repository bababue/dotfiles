return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    if vim.fn.has('macunix') then
      vim.g.vimtex_view_method = "skim"
    else
      vim.g.vimtex_view_method = "zathura"
    end
  end
}
