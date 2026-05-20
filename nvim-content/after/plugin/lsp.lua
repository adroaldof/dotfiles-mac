-- Diagnostic UI
--------------------------------------------------------------------------------
vim.diagnostic.config({
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	virtual_text = { prefix = "●", spacing = 4 },
	float = { source = true, border = "rounded" },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})

-- Diagnostic keymaps (buffer-agnostic). For the diagnostic float, the LspAttach
-- autocmd below binds `gl` to the same action on LSP-attached buffers — that's
-- where diagnostics actually exist, so we don't need a global keymap for it.
--------------------------------------------------------------------------------
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end,  { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics → loclist" })
vim.keymap.set("n", "<leader>Q", vim.diagnostic.setqflist,  { desc = "Diagnostics → qflist" })

-- Capabilities (blink.cmp augments the default LSP capabilities)
--------------------------------------------------------------------------------
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- Apply capabilities to every server. mason-lspconfig v2 with automatic_enable
-- handles vim.lsp.enable() for each installed server; we just need to configure.
vim.lsp.config("*", { capabilities = capabilities })

-- Per-server overrides
--------------------------------------------------------------------------------
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			runtime = { version = "LuaJIT" },
			telemetry = { enable = false },
			completion = { callSnippet = "Replace" },
		},
	},
})

vim.lsp.config("ts_ls", {
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
})

-- LSP-attach keymaps
--------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local buf = args.buf
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = buf, silent = true, desc = desc })
		end

		map("n", "gD", vim.lsp.buf.declaration, "LSP declaration")
		map("n", "gd", vim.lsp.buf.definition, "LSP definition")
		map("n", "gi", vim.lsp.buf.implementation, "LSP implementation")
		map("n", "gr", vim.lsp.buf.references, "LSP references")
		map("n", "gl", function() vim.diagnostic.open_float({ border = "rounded" }) end, "Line diagnostic")
		map("n", "<space>k", vim.lsp.buf.hover, "LSP hover")
		map("n", "<space>D", vim.lsp.buf.type_definition, "LSP type definition")
		map("n", "<space>rn", vim.lsp.buf.rename, "LSP rename")
		map("n", "<space>ca", vim.lsp.buf.code_action, "LSP code action")
		map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder")
		map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder")
		map("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, "List workspace folders")
		map("n", "<space>f", function() vim.lsp.buf.format({ async = true }) end, "Format buffer")
	end,
})

vim.api.nvim_create_user_command("Format", function()
	vim.lsp.buf.format({ async = true })
end, {})
