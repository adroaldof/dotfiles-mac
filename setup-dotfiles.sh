#!/usr/bin/env bash

###############################################################################
# Refuse to run from anywhere other than the repo root (symlinks use $(pwd))
###############################################################################
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
CURRENT_DIR="$(pwd -P)"

if [ "$SCRIPT_DIR" != "$CURRENT_DIR" ]; then
  echo "Error: setup-dotfiles.sh must be run from the repo root." >&2
  echo "  expected: $SCRIPT_DIR" >&2
  echo "  current:  $CURRENT_DIR" >&2
  echo "" >&2
  echo "Run:  cd \"$SCRIPT_DIR\" && ./setup-dotfiles.sh" >&2
  exit 1
fi

###############################################################################
# Prerequisite check (report only — does not install or upgrade anything)
###############################################################################
GREEN=$'\033[0;32m'
RED=$'\033[0;31m'
DIM=$'\033[0;90m'
RESET=$'\033[0m'

check_cmd() {
  local label="$1" cmd="$2" version_cmd="$3" version
  if command -v "$cmd" >/dev/null 2>&1; then
    version=$(eval "$version_cmd" 2>/dev/null | head -1)
    printf "  %s✓%s %-10s %s%s%s\n" "$GREEN" "$RESET" "$label" "$DIM" "$version" "$RESET"
  else
    printf "  %s✗%s %-10s %smissing%s\n" "$RED" "$RESET" "$label" "$DIM" "$RESET"
  fi
}

check_dir() {
  local label="$1" dir="$2"
  if [ -d "$dir" ]; then
    printf "  %s✓%s %-10s %s%s%s\n" "$GREEN" "$RESET" "$label" "$DIM" "$dir" "$RESET"
  else
    printf "  %s✗%s %-10s %smissing (expected at %s)%s\n" "$RED" "$RESET" "$label" "$DIM" "$dir" "$RESET"
  fi
}

echo "###############################################################################"
echo "# Checking prerequisites"
echo "###############################################################################"
echo ""
echo "Core:"
check_cmd "zsh"       "zsh"  "zsh --version"
check_dir "oh-my-zsh" "$HOME/.oh-my-zsh"
check_cmd "neovim"    "nvim" "nvim --version"
check_cmd "tmux"      "tmux" "tmux -V"
check_cmd "git"       "git"  "git --version"

echo ""
echo "Package managers:"
check_cmd "brew"      "brew" "brew --version"
check_dir "nvm"       "$HOME/.nvm"

echo ""
echo "Dev tools (optional):"
check_cmd "go"        "go"      "go version"
check_cmd "kubectl"   "kubectl" "kubectl version --client 2>/dev/null"
check_cmd "docker"    "docker"  "docker --version"
check_cmd "aws"       "aws"     "aws --version"
check_cmd "gh"        "gh"      "gh --version"
check_cmd "glab"      "glab"    "glab --version"

echo ""

###############################################################################
# Symlink installation
###############################################################################
echo "###############################################################################"
echo "# Creating symlinks to dotfiles"
echo "###############################################################################"
rm -rf ~/.aliases >/dev/null 2>&1
rm -rf ~/.aliases.sh >/dev/null 2>&1
rm -rf ~/.gitconfig >/dev/null 2>&1
rm -rf ~/.npmrc >/dev/null 2>&1
rm -rf ~/.tmux.conf >/dev/null 2>&1
rm -rf ~/.config/nvim >/dev/null 2>&1
rm -rf ~/.vim >/dev/null 2>&1
rm -rf ~/.vimrc >/dev/null 2>&1
rm -rf ~/.zshrc >/dev/null 2>&1

mkdir -p ~/.config

ln -s $(pwd)/aliases ~/.aliases
ln -s $(pwd)/aliases.sh ~/.aliases.sh
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/npmrc ~/.npmrc
ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/nvim-content ~/.config/nvim
ln -s $(pwd)/tmux.conf ~/.tmux.conf

echo "done"
