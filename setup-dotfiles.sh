echo "###############################################################################"
echo "# Creating symlinks to dotfiles"
echo "###############################################################################"
rm -rf ~/.aliases >/dev/null 2>&1
rm -rf ~/.aliases.sh >/dev/null 2>&1
rm -rf ~/.gitconfig >/dev/null 2>&1
rm -rf ~/.npmrc >/dev/null 2>&1
rm -rf ~/.tmux >/dev/null 2>&1
rm -rf ~/.tmux.conf >/dev/null 2>&1
rm -rf ~/.config/nvim >/dev/null 2>&1
rm -rf ~/.vim >/dev/null 2>&1
rm -rf ~/.vimrc >/dev/null 2>&1
rm -rf ~/.zshrc >/dev/null 2>&1

ln -s $(pwd)/aliases ~/.aliases
ln -s $(pwd)/aliases.sh ~/.aliases.sh
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/npmrc ~/.npmrc
ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/nvim-content ~/.config/nvim
ln -s $(pwd)/tmux ~/.tmux
ln -s $(pwd)/tmux.conf ~/.tmux.conf

echo "done"