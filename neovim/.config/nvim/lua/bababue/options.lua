--Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Tabs
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

--Scrolling
vim.opt.scrolloff = 8
--vim.opt.wrap = false

--Visual changes
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.showmode = false

--Backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--Fixed search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--Plugins
vim.g.mapleader = " "

vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN },
    spacing = 4,
    prefix = "»",
    source = "if_many",
  },

  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,

  float = {
    focusable = true,
    style = "minimal",
  },
})
