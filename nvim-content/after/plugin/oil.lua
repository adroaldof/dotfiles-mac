require("oil").setup({
	default_file_explorer = true,
	delete_to_trash = true,
	skip_confirm_for_simple_edits = false,
	view_options = {
		show_hidden = true,
	},
	keymaps = {
		["q"] = { "actions.close", mode = "n" },
	},
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open file explorer (oil)" })
