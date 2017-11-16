echo "###############################################################################"
echo "# Check for VundleVim Installation"
echo "###############################################################################"

if [ ! -d "~/mac-dotfiles/vim/bundle/Vundle.vim" ]; then
  echo "Installing VundleVim Package Manager"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/mac-dotfiles/vim/bundle/Vundle.vim
else
  echo "We found VundleVim Package Manager"
fi


echo "###############################################################################"
echo "# Install Tmux Plugin Manager"
echo "###############################################################################"

if [ ! -d "~/mac-dotfiles/tmux/plugins" ]; then
    echo "Installing Tmux Plugin Manager"
    mkdir -p ~/mac-dotfiles/tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tpm ~/mac-dotfiles/tmux/plugins/tpm
else
    echo "We found Tmux Plugin Manager"
fi


echo "###############################################################################"
echo "# Create All Symlinks to Dotfiles"
echo "###############################################################################"
rm -rf ~/.gitconfig > /dev/null 2>&1
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
rm -rf ~/.zshrc > /dev/null 2>&1
ln -s ~/mac-dotfiles/gitconfig ~/.gitconfig
ln -s ~/mac-dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/mac-dotfiles/tmux ~/.tmux
ln -s ~/mac-dotfiles/vim ~/.vim
ln -s ~/mac-dotfiles/vimrc ~/.vimrc
ln -s ~/mac-dotfiles/zshrc ~/.zshrc


echo "###############################################################################"
echo "# Install on-my-zsh theme"
echo "###############################################################################"
rm -rf ~/.oh-my-zsh/themes/adro.zsh-theme > /dev/null 2>&1
ln -s ~/mac-dotfiles/adro.zsh-theme ~/.oh-my-zsh/themes/adro.zsh-theme


echo "###############################################################################"
echo "# Install Fonts"
echo "###############################################################################"
cp ~/mac-dotfiles/fonts/* /Library/Fonts


echo "###############################################################################"
echo "# Install Vundle Bundles"
echo "###############################################################################"
vim +BundleInstall! +qall > /dev/null 2>&1


echo "###############################################################################"
echo "# Reload ZSH"
echo "###############################################################################"
source ~/.zshrc

