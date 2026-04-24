--Space as leader key
vim.g.mapleader = " "

--Custom keybinds
vim.keymap.set("", "ü", "[")
vim.keymap.set("", "ä", "]")

vim.keymap.set("", "Ü", "{")
vim.keymap.set("", "Ä", "}")

vim.keymap.set("", "ß", "$")

--Center half-page jumps
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

--Y behaves like C or D
vim.keymap.set("n", "Y", "y$")

vim.keymap.set("", "<leader>d", "\"_d", {desc="Delete without buffering"})
vim.keymap.set("", "<leader>D", "\"_D", {desc="Delete without buffering"})

vim.keymap.set("", "<leader>y", '"+y', {desc="Yank into system clipboard"})
vim.keymap.set("", "<leader>p", '"+p', {desc="Paste from system clipboard"})
vim.keymap.set("", "<leader>P", '"+P', {desc="Paste from system clipboard"})


vim.keymap.set("", "<leader>a", "ggvG$", {desc="Select everything"})
