# OS X Dotfiles

Personal macOS dotfiles for `zsh`, `tmux`, `neovim`, `git`, and `npm`/`yarn` workflows. Files are installed onto the host via symlinks pointing at the working tree.

## What it configures

- **Zsh** + Oh-my-zsh with the `bira` theme — `zshrc`
- **Aliases** as zsh functions, one file per tool (`docker`, `git`, `helpers`, `kubernetes`, `npm`, `system`, `yarn`) — `aliases/`, entry point `aliases.sh`
- **NeoVim** bootstrapped with Lazy.nvim — `nvim-content/`
- **Tmux** — `tmux.conf`
- **Git** — `gitconfig`
- **npm** — `npmrc`

## Install

Run from the repo root (the script uses `$(pwd)` to compute symlink targets):

```bash
./setup-dotfiles.sh
```

The script first prints a prerequisite report (✓/✗ for `zsh`, `oh-my-zsh`, `neovim`, `tmux`, `git`, `brew`, `nvm`, `go`, `kubectl`, `docker`, `aws`, `gh`, `glab`) — it never installs or upgrades anything, you handle that yourself. It then removes any existing target (`~/.zshrc`, `~/.config/nvim`, etc.) and creates a fresh symlink. Since symlinks point at the working tree, edits to tracked files take effect on the next shell/editor reload — no need to re-run the script unless you add a new top-level file.

## Credits

- [Github - Dotfiles](https://dotfiles.github.io/)
- [SJ Bach - Configuring Vim Right](http://items.sjbach.com/319/configuring-vim-right)
- [Yan Pritzker - YARD](https://github.com/skwp/dotfiles/)
- [Jon de la Motte - The Ultimate Mac, Vim, and Tmux setup](http://www.jondelamotte.com/new-mac-setup/)
- [Fidel Oper - Vim and Tmux on your Mac](http://fideloper.com/mac-vim-tmux)
- [Matt Stauffer - Setting up a new (OS X) development machine](https://mattstauffer.com/blog/setting-up-a-new-os-x-development-machine-part-1-core-files-and-custom-shell/)
- [Paul Irish - Dotfiles](https://github.com/paulirish/dotfiles)
