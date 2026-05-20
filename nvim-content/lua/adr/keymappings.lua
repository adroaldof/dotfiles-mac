vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-------------------------------------------------------------------------------
-- Vim configuration file and plugin management
-------------------------------------------------------------------------------
vim.keymap.set("n", "<Leader>ce", [[:vsplit ~/.config/nvim/init.lua<cr>]])
vim.keymap.set("n", "<Leader>cs", [[:source ~/.config/nvim/init.lua<cr>]])

-------------------------------------------------------------------------------
-- Escape when editing
-------------------------------------------------------------------------------
vim.keymap.set("i", "jj", [[<Esc>]])
vim.keymap.set("i", "jk", [[<Esc>]])
vim.keymap.set("i", "kj", [[<Esc>]])

-------------------------------------------------------------------------------
-- Copy to clipboard
-------------------------------------------------------------------------------
vim.keymap.set("v", "<Leader>y", [["+y]])
vim.keymap.set("n", "<Leader>y", [["+y]])
vim.keymap.set("n", "<Leader>Y", [["+yg_]])
vim.keymap.set("n", "<Leader>yy", [["+yy]])

-------------------------------------------------------------------------------
-- Stay in indent mode
-------------------------------------------------------------------------------
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

-------------------------------------------------------------------------------
-- Keep highlighted text centered
-------------------------------------------------------------------------------
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centered" })

-------------------------------------------------------------------------------
-- Turn off hilight
-------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>n", ":noh<CR>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear highlight search", silent = true })

-------------------------------------------------------------------------------
-- Keep cursor when merging lines
-------------------------------------------------------------------------------
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-------------------------------------------------------------------------------
-- Better pasting register
-------------------------------------------------------------------------------
vim.keymap.set("v", "p", [["_dP]])
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selction without losing yanked text" })

-------------------------------------------------------------------------------
-- Move lines in visual mode
-------------------------------------------------------------------------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-------------------------------------------------------------------------------
-- Replace word under cursor in the file
-------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word cursor is on globally" })

-------------------------------------------------------------------------------
-- Restart config file
-------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", { desc = "Restart config :restart)" })
