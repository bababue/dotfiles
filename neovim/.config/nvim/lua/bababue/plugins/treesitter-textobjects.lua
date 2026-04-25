return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  config = function()
    local select = require "nvim-treesitter-textobjects.select"
    local move   = require "nvim-treesitter-textobjects.move"

    -- ─── Text Objects ────────────────────────────────────────────────────────────

    -- classes / definitions
    vim.keymap.set({ "x", "o" }, "ac", function()
      select.select_textobject("@class.outer", "textobjects")
    end, { desc = "Around a class/definition" })

    vim.keymap.set({ "x", "o" }, "ic", function()
      select.select_textobject("@class.inner", "textobjects")
    end, { desc = "Inside a class/definition" })

    -- functions / methods
    vim.keymap.set({ "x", "o" }, "af", function()
      select.select_textobject("@function.outer", "textobjects")
    end, { desc = "Around a function/method" })

    vim.keymap.set({ "x", "o" }, "if", function()
      select.select_textobject("@function.inner", "textobjects")
    end, { desc = "Inside a function/method" })

    -- comments  (note: 'gc' is also used by Comment.nvim as an operator)
    vim.keymap.set({ "x", "o" }, "gc", function()
      select.select_textobject("@comment.outer", "textobjects")
    end, { desc = "A comment" })

    -- arguments / list items
    vim.keymap.set({ "x", "o" }, "ia", function()
      select.select_textobject("@parameter.inner", "textobjects")
    end, { desc = "An argument/list item" })

    vim.keymap.set({ "x", "o" }, "aa", function()
      select.select_textobject("@parameter.outer", "textobjects")
    end, { desc = "An argument/list item (incl. trailing comma)" })

    -- HTML-like tags
    vim.keymap.set({ "x", "o" }, "at", function()
      select.select_textobject("@tag.outer", "textobjects")
    end, { desc = "Around an HTML-like tag" })

    vim.keymap.set({ "x", "o" }, "it", function()
      select.select_textobject("@tag.inner", "textobjects")
    end, { desc = "Inside an HTML-like tag" })

    -- ─── Motions ─────────────────────────────────────────────────────────────────

    -- Go to next/previous method start:  ]m / [m
    vim.keymap.set({ "n", "x", "o" }, "]m", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Go to next method start" })

    vim.keymap.set({ "n", "x", "o" }, "[m", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Go to previous method start" })

    -- Go to next/previous method end:  ]M / [M
    vim.keymap.set({ "n", "x", "o" }, "]M", function()
      move.goto_next_end("@function.outer", "textobjects")
    end, { desc = "Go to next method end" })

    vim.keymap.set({ "n", "x", "o" }, "[M", function()
      move.goto_previous_end("@function.outer", "textobjects")
    end, { desc = "Go to previous method end" })

    -- Go to next/previous section (class) start:  ]] / [[
    vim.keymap.set({ "n", "x", "o" }, "]]", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Go to next section start" })

    vim.keymap.set({ "n", "x", "o" }, "[[", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Go to previous section start" })

    -- Go to next/previous section end:  ][ / []
    vim.keymap.set({ "n", "x", "o" }, "][", function()
      move.goto_next_end("@class.outer", "textobjects")
    end, { desc = "Go to next section end" })

    vim.keymap.set({ "n", "x", "o" }, "[]", function()
      move.goto_previous_end("@class.outer", "textobjects")
    end, { desc = "Go to previous section end" })

    -- Go to next/previous comment:  ]/ , ]* / [/ , [*
    vim.keymap.set({ "n", "x", "o" }, "]/", function()
      move.goto_next_start("@comment.outer", "textobjects")
    end, { desc = "Go to next comment" })

    vim.keymap.set({ "n", "x", "o" }, "]*", function()
      move.goto_next_start("@comment.outer", "textobjects")
    end, { desc = "Go to next comment" })

    vim.keymap.set({ "n", "x", "o" }, "[/", function()
      move.goto_previous_start("@comment.outer", "textobjects")
    end, { desc = "Go to previous comment" })

    vim.keymap.set({ "n", "x", "o" }, "[*", function()
      move.goto_previous_start("@comment.outer", "textobjects")
    end, { desc = "Go to previous comment" })
  end,
}
