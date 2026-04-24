return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
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

        vim.keymap.set('n', '<leader>f', require('telescope.builtin').live_grep, {desc="Fuzzy Finder"})
        vim.keymap.set('n', '<leader>df', require('telescope.builtin').find_files, {desc="Fuzzy Finder (git-only)"})
        vim.keymap.set('n', '<leader>k', require('telescope.builtin').keymaps, {desc="Show available keybinds"})
    end
}
