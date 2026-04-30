return {
  {
    "navarasu/onedark.nvim",
    enabled = true,
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'darker'
      }

      require('onedark').load()
    end
  },
  {
    "nickkadutskyi/jb.nvim",
    enabled = true,
    priority = 1000,
    config = function()
    end
  },

}
