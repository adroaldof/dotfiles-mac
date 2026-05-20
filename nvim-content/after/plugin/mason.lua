require("mason").setup({
	ui = {
		border = "rounded",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"bashls",
		"cssls",
		"eslint",
		"html",
		"jsonls",
		"lua_ls",
		"ts_ls",
		"terraformls",
		"tflint",
		"yamlls",
	},
	-- v2: each installed server is auto-enabled via vim.lsp.enable().
	-- Per-server overrides go through vim.lsp.config() in lsp.lua.
	automatic_enable = true,
})
