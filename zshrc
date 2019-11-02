###############################################################################
## Path to your oh-my-zsh installation.
###############################################################################
export ZSH=/Users/$(whoami)/.oh-my-zsh

if [ $(whoami) = "root" ]; then
    export ZSH="/$(whoami)/.oh-my-zsh"
fi

###############################################################################
## Set name of the theme to load.
###############################################################################
ZSH_THEME="agnoster-improved"


###############################################################################
# Main Enviroment Path
###############################################################################
export PATH=$PATH:/Users/$(whoami)/setups/activator-dist-1.3.10/bin
# export JAVA_HOME=$(/usr/libexec/java_home)

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export ARCHFLAGS="-arch x86_64"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Hear Homebrews installations
export PATH=/usr/local/bin:$PATH


###############################################################################
# Red dots on waiting for completion
###############################################################################
COMPLETION_WAITING_DOTS="true"


###############################################################################
# History command output date format
###############################################################################
HIST_STAMPS="dd/mm/yyyy"


###############################################################################
# ZSH Plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
###############################################################################
plugins=(git z)


###############################################################################
# Enable OpenSSL on Brew installation (deprecated by Apple)
###############################################################################
export PATH="/usr/local/opt/openssl/bin:$PATH"

###############################################################################
# Ruby env
###############################################################################
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


#==============================================================================
#=========================  USER CONFIGURATIONS  ==============================
#==============================================================================

###############################################################################
# NVM Path
###############################################################################
export NVM_DIR=/Users/$(whoami)/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm


###############################################################################
# PyEnv autocomplete
###############################################################################
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# export WORKON_HOME="$HOME/.virtualenvs"

# if which pyenv > /dev/null; then
#     eval "$(pyenv init -)";
#     eval "$(pyenv virtualenv-init -)";
# fi

# # Uncomment the last line after:
# # `pyenv install 3.6.4`
# # `pyenv global 3.6.4`
# pyenv virtualenvwrapper_lazy


###############################################################################
# Android paths
###############################################################################
export ANDROID_HOME=$HOME/Library/Android/sdk
export DYLD_LIBRARY_PATH="$ANDROID_HOME/emulator/lib64/qt/lib"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/platform-tools/adb


###############################################################################
# Environment Language
###############################################################################
export LANG="en_US.UTF-8"


###############################################################################
# Github info
###############################################################################
export GITHUB_USERNAME=""
export GITHUB_ACCESS_TOKEN=""


###############################################################################
# Aliases
###############################################################################
# alias tmux="tmux -2"
# alias ta="tmux attach -t"
# alias tnew="tmux new -s"
# alias tls="tmux ls"
# alias tkill="tmux kill-session -t"

# alias pbcopy="xclip -selection clipboard"
# alias bpaste="xclip -selection clipboard -o"


###############################################################################
# Additional env paths
###############################################################################
export ENVS_PATH="/Users/$(whoami)/.zshrc.envs"
[ -s "$ENVS_PATH" ] && . "$ENVS_PATH" # This loads nvm


###############################################################################
## Activate your oh-my-zsh installation.
###############################################################################
source $ZSH/oh-my-zsh.sh


###############################################################################
## Path to your oh-my-zsh installation.
###############################################################################
custom_aliases="/Users/$(whoami)/.aliases.sh"

if [ -f $custom_aliases ]; then
  source $custom_aliases
fi


###############################################################################
# AWS
###############################################################################

# aws_completer="/Users/$(whoami)/.pyenv/versions/$(python -V | cut -d" " -f2)/bin/aws_zsh_completer.sh"

# if [ -f $aws_completer ]; then
#     source $aws_completer
# fi

# # Amazon Access Key and Secret - Dado Hey generated at 2018-01-29 19:25 UTC-0200
# export AWS_ACCESS_KEY_ID=""
# export AWS_SECRET_ACCESS_KEY=""


###############################################################################
# Geth Ethereum
###############################################################################

export GETH_HOME=/Users/$(whoami)/dev/eth/geth
export GETH_DATA=/Users/$(whoami)/dev/eth/geth/data
export PATH=$PATH:$GETH_HOME

###############################################################################
# Configure redux dev tools
###############################################################################

export REACT_DEBUGGER="open -g 'rndebugger://set-debugger-loc?port=8081' || npx react-native start"


###############################################################################
# VSCode
###############################################################################

# export CODE_PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code
# export PATH=$PATH:$CODE_PATH
