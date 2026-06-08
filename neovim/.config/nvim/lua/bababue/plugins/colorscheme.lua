return {
	{
		"navarasu/onedark.nvim",
		enabled = true,
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "darker",
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
