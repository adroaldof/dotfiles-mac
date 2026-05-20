-- nvim-treesitter `main` branch (post-2025 rewrite).
-- Requires Neovim 0.12+ and the `tree-sitter` CLI on PATH.

local parsers = {
	"bash",
	"css",
	"dockerfile",
	"gitignore",
	"go",
	"hcl",
	"html",
	"javascript",
	"json",
	"lua",
	"luadoc",
	"markdown",
	"markdown_inline",
	"python",
	"scss",
	"sql",
	"terraform",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"yaml",
}

-- Install asynchronously. No-op for parsers that are already installed.
require("nvim-treesitter").install(parsers)

-- Enable highlight + treesitter-based indent for the parsers we installed.
vim.api.nvim_create_autocmd("FileType", {
	pattern = parsers,
	callback = function()
		pcall(vim.treesitter.start)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
