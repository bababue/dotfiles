return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("harpoon")

		vim.keymap.set("n", "<leader>ha", function()
			require("harpoon.mark").add_file()
		end, { desc = "Add file to harpoon" })

		vim.keymap.set("n", "<leader>hm", function()
			require("harpoon.ui").toggle_quick_menu()
		end, { desc = "Toggle harpoon menu" })

		vim.keymap.set("n", "<leader>1", function()
			require("harpoon.ui").nav_file(1)
		end, { desc = "Switch to harpoon 1" })

		vim.keymap.set("n", "<leader>2", function()
			require("harpoon.ui").nav_file(2)
		end, { desc = "Switch to harpoon 2" })

		vim.keymap.set("n", "<leader>3", function()
			require("harpoon.ui").nav_file(3)
		end, { desc = "Switch to harpoon 3" })

		vim.keymap.set("n", "<leader>4", function()
			require("harpoon.ui").nav_file(4)
		end, { desc = "Switch to harpoon 4" })

		vim.keymap.set("n", "<leader>5", function()
			require("harpoon.ui").nav_file(5)
		end, { desc = "Switch to harpoon 5" })

		vim.keymap.set("n", "<leader>6", function()
			require("harpoon.ui").nav_file(6)
		end, { desc = "Switch to harpoon 6" })

		vim.keymap.set("n", "<leader>7", function()
			require("harpoon.ui").nav_file(7)
		end, { desc = "Switch to harpoon 7" })

		vim.keymap.set("n", "<leader>8", function()
			require("harpoon.ui").nav_file(8)
		end, { desc = "Switch to harpoon 8" })

		vim.keymap.set("n", "<leader>9", function()
			require("harpoon.ui").nav_file(9)
		end, { desc = "Switch to harpoon 9" })
	end,
}
