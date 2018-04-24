# echo "###############################################################################"
# echo "# Install Tmux Plugin Manager"
# echo "###############################################################################"

# if [ ! -d "~/dotfiles-mac/tmux/plugins" ]; then
#     echo "Installing Tmux Plugin Manager"
#     mkdir -p ~/dotfiles-mac/tmux/plugins/tpm
#     git clone https://github.com/tmux-plugins/tpm ~/dotfiles-mac/tmux/plugins/tpm
# else
#     echo "We found Tmux Plugin Manager"
# fi


echo "###############################################################################"
echo "# Create All Symlinks to Dotfiles"
echo "###############################################################################"
rm -rf ~/.aliases > /dev/null 2>&1
rm -rf ~/.aliases.sh > /dev/null 2>&1
rm -rf ~/.gitconfig > /dev/null 2>&1
rm -rf ~/.npmrc > /dev/null 2>&1
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
rm -rf ~/.zshrc > /dev/null 2>&1

ln -s ~/dotfiles-mac/aliases ~/.aliases
ln -s ~/dotfiles-mac/aliases.sh ~/.aliases.sh
ln -s ~/dotfiles-mac/gitconfig ~/.gitconfig
ln -s ~/dotfiles-mac/npmrc ~/.npmrc
# ln -s ~/dotfiles-mac/tmux ~/.tmux
# ln -s ~/dotfiles-mac/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles-mac/vim ~/.vim
ln -s ~/dotfiles-mac/vimrc ~/.vimrc
ln -s ~/dotfiles-mac/zshrc ~/.zshrc


echo "###############################################################################"
echo "# Install on-my-zsh theme"
echo "###############################################################################"
rm -rf ~/.oh-my-zsh/themes/easy-look.zsh-theme > /dev/null 2>&1
rm -rf ~/.oh-my-zsh/themes/agnoster-improved.zsh-theme > /dev/null 2>&1

ln -s ~/dotfiles-mac/easy-look.zsh-theme ~/.oh-my-zsh/themes/easy-look.zsh-theme
ln -s ~/dotfiles-mac/agnoster-improved.zsh-theme ~/.oh-my-zsh/themes/agnoster-improved.zsh-theme


echo "###############################################################################"
echo "# Install Fonts"
echo "###############################################################################"
cp ~/dotfiles-mac/fonts/* /Library/Fonts


echo "###############################################################################"
echo "# Check for VundleVim Installation"
echo "###############################################################################"

if [ ! -d "~/dotfiles-mac/vim/bundle/Vundle.vim" ]; then
  echo "Installing VundleVim Package Manager"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles-mac/vim/bundle/Vundle.vim
else
  echo "We found VundleVim Package Manager"
fi


echo "###############################################################################"
echo "# Install Vundle Bundles"
echo "###############################################################################"
vim +BundleInstall! +qall > /dev/null 2>&1


echo "###############################################################################"
echo "# Reload ZSH"
echo "###############################################################################"
source ~/.zshrc

