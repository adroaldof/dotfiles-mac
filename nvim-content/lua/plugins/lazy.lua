return {
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- Git
	-----------------------------------------------------------------------------
	"lewis6991/gitsigns.nvim",

	-- Status line and visuals
	-----------------------------------------------------------------------------
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "akinsho/bufferline.nvim",   version = "*",                               dependencies = "nvim-tree/nvim-web-devicons" },

	-- File explorer (oil.nvim — buffer-based, edit your filesystem like a buffer)
	-----------------------------------------------------------------------------
	{
		"stevearc/oil.nvim",
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
		opts = {},
	},

	-- Theme
	-----------------------------------------------------------------------------
	{ "rebelot/kanagawa.nvim", event = "VeryLazy" },

	-- Editor helpers
	-----------------------------------------------------------------------------
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"lukas-reineke/indent-blankline.nvim",

	-- Treesitter (new `main` branch rewrite — requires Neovim 0.12+ and tree-sitter CLI)
	-----------------------------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		lazy = false,
	},

	-- LSP (mason-org, native vim.lsp.config API in Neovim 0.11+)
	-----------------------------------------------------------------------------
	"neovim/nvim-lspconfig",
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",

	-- Completion (blink.cmp v1 — replaces nvim-cmp)
	-----------------------------------------------------------------------------
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = { "L3MON4D3/LuaSnip" },
		opts = {
			keymap = { preset = "default" },
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
	{ "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },

	-- Formatters
	-----------------------------------------------------------------------------
	"stevearc/conform.nvim",

	-- Movement training (active Lua port of takac/vim-hardtime)
	-----------------------------------------------------------------------------
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		event = "VeryLazy",
		opts = {},
	},
}
