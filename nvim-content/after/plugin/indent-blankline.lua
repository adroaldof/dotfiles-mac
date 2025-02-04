local highlight = {
  "CursorColumn",
  "Whitespace",
}
require("ibl").setup({
  indent = { char = "|" },
  -- whitespace = {
  --   highlight = highlight,
  --   remove_blankline_trail = false,
  -- },
  scope = { enabled = false },
})

-- require("ibl").setup({
--   debounce = 100,
--   indent = { char = "|" },
--   whitespace = { highlight = { "Whitespace", "NonText" } },
-- })
--
-- -- This module contains a number of default definitions
-- local rainbow_delimiters = require("rainbow-delimiters")
--
-- ---@type rainbow_delimiters.config
-- vim.g.rainbow_delimiters = {
--   strategy = {
--     [""] = rainbow_delimiters.strategy["global"],
--     vim = rainbow_delimiters.strategy["local"],
--   },
--   query = {
--     [""] = "rainbow-delimiters",
--     lua = "rainbow-blocks",
--   },
--   priority = {
--     [""] = 110,
--     lua = 210,
--   },
--   highlight = {
--     "RainbowDelimiterRed",
--     "RainbowDelimiterYellow",
--     "RainbowDelimiterBlue",
--     "RainbowDelimiterOrange",
--     "RainbowDelimiterGreen",
--     "RainbowDelimiterViolet",
--     "RainbowDelimiterCyan",
--   },
-- }
--
-- local highlight = {
--   "RainbowDelimiterRed",
--   "RainbowDelimiterYellow",
--   "RainbowDelimiterBlue",
--   "RainbowDelimiterOrange",
--   "RainbowDelimiterGreen",
--   "RainbowDelimiterViolet",
--   "RainbowDelimiterCyan",
-- }
--
-- local hooks = require("ibl.hooks")
--
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--   vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E06C75" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#E5C07B" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#61AFEF" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#D19A66" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#98C379" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#C678DD" })
--   vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#56B6C2" })
-- end)
--
-- vim.g.rainbow_delimiters = { highlight = highlight }
-- require("ibl").setup({ scope = { highlight = highlight } })
--
-- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
