return {
	"gruvw/strudel.nvim",
	build = "npm ci",
	config = function()
		require("strudel").setup({
			start_on_launch = false,
			update_on_save = true,
			headless = true,
		})

		local strudel = require("strudel")

		vim.keymap.set("n", "<leader>sl", strudel.launch, { desc = "Launch Strudel" })
		vim.keymap.set("n", "<leader>sq", strudel.quit, { desc = "Quit Strudel" })

		vim.keymap.set("n", "<leader>su", strudel.update, { desc = "Strudel Update" })

		vim.keymap.set("n", "<leader>sx", strudel.execute, { desc = "Strudel set current buffer and update" })
		vim.keymap.set("n", "<leader>sp", strudel.toggle, { desc = "Strudel Toggle Play/Stop" })
		vim.keymap.set("n", "<leader>ss", strudel.stop, { desc = "Strudel Stop Playback" })

		vim.keymap.set("n", "<leader>sb", strudel.set_buffer, { desc = "Strudel set current buffer" })
	end,
}
