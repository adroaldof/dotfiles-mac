# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal macOS dotfiles. There is no build, lint, or test pipeline — files are installed onto the host machine via symlinks and consumed by zsh, tmux, neovim, and git.

## Install / activate changes

`setup-dotfiles.sh` is the only "command" in this repo. It **must be run from the repo root** (it relies on `$(pwd)` to compute symlink targets):

```bash
./setup-dotfiles.sh
```

It removes any existing target (`~/.zshrc`, `~/.config/nvim`, etc.) with `rm -rf` and then creates a fresh symlink. After editing any tracked file, no re-run is needed — symlinks point at the working tree, so changes take effect on the next shell/editor reload. Re-run the script only when adding a new top-level file that needs a new symlink.

To pick up shell edits in an open session: `source ~/.zshrc`. To pick up tmux edits: prefix + `r` (rebinds `~/.tmux.conf`).

## Layout and the "why"

- `setup-dotfiles.sh` — symlink installer. Each tracked top-level file (`zshrc`, `gitconfig`, `npmrc`, `tmux.conf`, `aliases.sh`) and the `aliases/` and `nvim-content/` directories are linked into `~`. When adding a new dotfile, you must edit this script too — there is no auto-discovery.
- `aliases.sh` — sourced by `zshrc` via `~/.aliases.sh`. It just sources every file in `aliases/`. New alias files must be added here explicitly.
- `aliases/` — one file per tool (`docker.sh`, `git.sh`, `helpers.sh`, `kubernetes.sh`, `npm.sh`, `system.sh`, `yarn.sh`). Aliases are implemented as zsh **functions**, not `alias` directives, so they can take arguments and print the underlying command they ran.
- `aliases/npm.sh` — non-obvious: the `n*` family (`n`, `ni`, `nid`, `nrm`, `ns`, `nd`, `nb`, `nr`, `nl`, `nt`, ...) auto-detects the package manager per directory by checking for `yarn.lock` → `pnpm-lock.yaml` → `package-lock.json`, in that order, defaulting to npm. Keep new commands consistent with this detection pattern (use `get_pm_cmd` and a `case` on yarn/pnpm/npm).
- `nvim-content/` — symlinked to `~/.config/nvim`. Uses **Lazy.nvim** (bootstrapped in `init.lua`), not Packer — the README in that directory still references `:PackerInstall` and is out of date.
- `vimrc` — legacy classic-vim config; the active editor is NeoVim. `zshrc` aliases `vim=nvim`.

## NeoVim config structure

`init.lua` bootstraps Lazy.nvim, then calls `require("lazy").setup("plugins", ...)` followed by `require("adr")` and `require("fun")`. The three module roots:

- `lua/plugins/` — Lazy.nvim plugin specs. `lazy.lua` is the main list; `telescope.lua` and `tmux-navigation.lua` are separate spec files Lazy auto-loads from this directory.
- `lua/adr/` — personal config split into `options.lua`, `remap.lua`, `keymappings.lua`. The `init.lua` here requires all three.
- `after/plugin/` — per-plugin setup that runs **after** the plugin loads (LSP, telescope, treesitter, cmp, etc.). Add plugin configuration here, not inside the Lazy spec.
- `lua/fun/` — small experimental modules (e.g. `highlight-yanket-text.lua`).

When adding a plugin: add the spec to `lua/plugins/lazy.lua` (or a new file under `lua/plugins/`), then add its configuration to `after/plugin/<name>.lua`.

`undodir/` is committed but ignored content-wise (persistent undo target, set in `options.lua`).

## Git config nuances

- `gitconfig` sets `init.defaultBranch = main`, but **this repo's own default branch is `master`** — don't auto-rename.
- An `includeIf "gitdir:/Users/adr/dev/imperium"` block pulls in `~/.gitconfig-imperium` for that worktree. Don't move identity/email into the main file.
- `pull.rebase = true` and `merge.ff = false` are intentional.
