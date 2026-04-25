--Space as leader key
vim.g.mapleader = " "

--Custom keybinds
vim.keymap.set("", "ü", "[")
vim.keymap.set("", "ä", "]")

vim.keymap.set("", "Ü", "{")
vim.keymap.set("", "Ä", "}")

vim.keymap.set("", "ß", "$")

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Perform a centered jump up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Perform a centered jump down" })

vim.keymap.set("n", "Y", "y$", { desc = "Yank to the end the line" })

vim.keymap.set("", "<leader>d", "\"_d", { desc = "Delete without buffering" })
vim.keymap.set("", "<leader>D", "\"_D", { desc = "Delete without buffering" })

vim.keymap.set("", "<leader>c", "\"_d", { desc = "Change without buffering" })
vim.keymap.set("", "<leader>C", "\"_D", { desc = "Change without buffering" })

vim.keymap.set("", "<leader>y", '"+y', { desc = "Yank into system clipboard" })
vim.keymap.set("", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("", "<leader>P", '"+P', { desc = "Paste from system clipboard" })

vim.keymap.set("", "<leader>a", "gg0vG$", { desc = "Select everything" })


--LSP--
vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = "Show LSP references" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Show LSP definition" })
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })
vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show LSP type definitions" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action,
  { desc = "See available code actions (Apply in visual mode)" })


vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Smart rename" })

vim.keymap.set("n", "<leader>T", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
vim.keymap.set("n", "<leader>t", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end,
  { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, {
  desc =
  "Go to next diagnostic"
})
