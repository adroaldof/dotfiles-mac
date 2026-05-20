# NeoVim

Personal Neovim config, managed with [Lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- **Neovim 0.12+** (nightly). The treesitter `main` branch and `vim.lsp.config` API are 0.12-aware.
- **`tree-sitter` CLI** on PATH (`brew install tree-sitter-cli` — note: plain `brew install tree-sitter` only installs the library, not the binary, since the formula was split). Required by the new nvim-treesitter rewrite to compile parsers locally.
- **Node.js** — needed by several LSP servers Mason installs (`ts_ls`, `eslint`, `yamlls`, …). The repo's `zshrc` sources `nvm` automatically.

## Install

Once `~/.config/nvim` points at this directory (via `../setup-dotfiles.sh`), just launch nvim. Lazy bootstraps itself on first run, installs every plugin, and writes `lazy-lock.json`.

```bash
nvim
# inside nvim, useful commands:
:Lazy        # plugin manager UI
:Mason       # LSP/DAP/linter/formatter installer
:checkhealth # diagnose any setup issue
```
