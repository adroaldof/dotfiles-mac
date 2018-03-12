echo "###############################################################################"
echo "# Let it Rock :P"
echo "###############################################################################"

# echo "###############################################################################"
# echo "# Generate ssh keys"
# echo "###############################################################################"
# echo "# Please enter your email:"
# read email
# ssh-keygen -t rsa -b 4096 -C "$email" -f "/home/$USER/.ssh/id_rsa" -N ""
# chmod 600 ~/.ssh/*
# Put your ssh-key on Github, Gitlab, DigitalOcean, Amazon


echo "###############################################################################"
echo "# Install HomeBrew"
echo "###############################################################################"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "###############################################################################"
echo "# Install some packages"
echo "###############################################################################"

brew tap phinze/cask

brew install ack
brew install bash-completions
brew install brew-cask
brew install git
brew install kindle
brew install nvm
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
brew install reattach-to-user-namespace
brew install slack
brew install spectacle
brew install the-unarchiver
brew install the_silver_searcher
brew install tree
brew install unrar
brew install wget
brew install zsh
brew install zsh-completions


brew cask install qlcolorcode # Preview source code files with syntax highlighting
brew cask install qlstephen # Preview plain text files without a file extension. Example: README, CHANGELOG, etc.
brew cask install qlmarkdown # Preview Markdown files
brew cask install quicklook-json # Preview JSON files
brew cask install qlprettypatch # Preview .patch files
brew cask install quicklook-csv # Preview CSV files
brew cask install betterzipql # Preview archives
brew cask install qlimagesize # Display image size and resolution
brew cask install webpquicklook # Preview WebP images
brew cask install suspicious-package # Preview the contents of a standard Apple installer package


brew cask install alfred
brew cask install chromecast
brew cask install chromium
brew cask install code
brew cask install evernote
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install google-music-manager
brew cask install iterm2
brew cask install spectacle
brew cask install transmission
brew cask install visual-studio-code


brew cask alfred link


brew cleanup --force
rm -rf /Library/Caches/Homebrew/*


echo "###############################################################################"
echo "# Install SQLEletrom"
echo "###############################################################################"
sqlectronversion=$(curl -s https://github.com/sqlectron/sqlectron-gui/releases | grep '/sqlectron/sqlectron-gui/releases/tag/' | head -n 1 | awk -F "[><]" '{print $3}' | head -n 2 | sed 's,v,,g')
curl -L "https://github.com/sqlectron/sqlectron-gui/releases/download/v$sqlectronversion/Sqlectron_${sqlectronversion}_amd64.deb" > /tmp/sqlectron.deb
sudo dpkg -i /tmp/sqlectron.deb && sudo apt install -f


echo "###############################################################################"
echo "# Install ZSH and oh-my-zsh"
echo "###############################################################################"
rm -rf ~/.oh-my-zsh 2> /dev/null
rm -rf ~/.zsh* 2> /dev/null
rm -rf ~/.zcomp* 2> /dev/null
sudo apt-get install zsh -y
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s `which zsh`


echo "###############################################################################"
echo "# "
echo "# The hard work is done!"
echo "# "
echo "# You can manually install some useful apps"
echo "# - Slack (https://slack.com/downloads/linux)"
echo "# - Git Kraken (https://www.gitkraken.com/)"
echo "# - iTerm2 (https://www.iterm2.com/)"
echo "# "
echo "# And some for fun"
echo "# - MusixMatch (https://about.musixmatch.com/)"
echo "# "
echo "###############################################################################"

