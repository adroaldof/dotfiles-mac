-- Ensure Homebrew binaries (tree-sitter, ripgrep, lsp servers installed by brew)
-- are visible to subprocesses launched by nvim regardless of how nvim was started.
vim.env.PATH = "/opt/homebrew/bin:" .. (vim.env.PATH or "")

-- Disable optional language providers we don't use — silences :checkhealth noise.
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0

-- Install package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.g.mapleader = " "
vim.opt.rtp:prepend(lazypath)


-- Add plugins
require("lazy").setup("plugins", {
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true, notify = false },
  change_detection = {
    notify = false,
  },
  rocks = { enabled = false }, -- silence the luarocks warning; no plugin here needs it
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

require("adr")
require("fun")
