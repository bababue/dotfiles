return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.opt.conceallevel = 1
		require("obsidian").setup({
			legacy_commands = false,
			sync = {
				enabled = true,
			},
			frontmatter = { enabled = false },
			workspaces = {
				{
					name = "personal",
					path = "~/obsidian/Sync/",
				},
			},
			completion = {
				blink = true,
			},
		})
	end,
}
