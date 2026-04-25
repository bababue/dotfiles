return {
    "nvim-telescope/telescope.nvim",
    version = '*',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('telescope').setup({
          defaults = {
            path_display = { "smart" },
            mappings = {
              i = {
                ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
                ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
              },
            },
          }
        })

        vim.keymap.set('n', '<leader>df', require('telescope.builtin').live_grep, {desc="Fuzzy find grep"})
        vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files, {desc="Fuzzy find files"})
        vim.keymap.set('n', '<leader>k', require('telescope.builtin').keymaps, {desc="Show available keybinds"})
    end
}
