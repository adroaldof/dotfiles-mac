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

brew cask install chromium

echo "###############################################################################"
echo "# Install VSCode - b70770bfb1ae276b9a2fc594c6"
echo "###############################################################################"
curl -L https://go.microsoft.com/fwlink/?LinkID=760868 > /tmp/vscode.deb
sudo dpkg -i /tmp/vscode.deb && sudo apt-get install -f

# Install some VSCode Extensions
code --Install-extension Tyriar.sort-lines
code --Install-extension donjayamanne.python
code --Install-extension robertohuertasm.vscode-icons
code --install-extension MattiasPernhult.vscode-todo
code --install-extension PeterJausovec.vscode-docker
code --install-extension QassimFarid.ejs-language-support
code --install-extension Shan.code-settings-sync
code --install-extension aeschli.vscode-css-formatter
code --install-extension alefragnani.Bookmarks
code --install-extension christian-kohler.path-intellisense
code --install-extension cssho.vscode-svgviewer
code --install-extension donjayamanne.githistory
code --install-extension eg2.tslint
code --install-extension streetsidesoftware.code-spell-checker


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

