###############################################################################
## Path to your oh-my-zsh installation.
###############################################################################
export ZSH="/Users/$(whoami)/.oh-my-zsh"

if [ $(whoami) = "root" ]; then
    export ZSH="/$(whoami)/.oh-my-zsh"
fi

source $ZSH/oh-my-zsh.sh


###############################################################################
## Set name of the theme to load.
###############################################################################
ZSH_THEME="adro"


###############################################################################
# Main Enviroment Path
###############################################################################
export PATH=$PATH:"/Users/$(whoami)/setups/activator-dist-1.3.10/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java"

export ARCHFLAGS="-arch x86_64"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Hear Homebrews installations
# export PATH=/usr/local/bin:$PATH


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



#==============================================================================
#=========================  USER CONFIGURATIONS  ==============================
#==============================================================================

###############################################################################
# PostgresApp
###############################################################################
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin/

###############################################################################
# NVM Path
###############################################################################
export NVM_DIR="/Users/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm


###############################################################################
# PyEnv autocomplete
###############################################################################
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
pyenv virtualenvwrapper > /dev/null

export WORKON_HOME=$HOME/.Envs
# export PROJECT_HOME=$HOME/dev
# export VIRTUALENVWRAPPER_PYTHON=$(which python)
# [ -s "$PYENV_ROOT/shims/virtualenvwrapper.sh" ] && . "$PYENV_ROOT/shims/virtualenvwrapper.sh"
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# source /usr/local/bin/virtualenvwrapper.sh

export PATH=/Users/adroaldof/.pyenv/shims/python:$PATH


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
# Fiddus Server Configurations
###############################################################################

# Amazon Access Key and Secret - Dado Hey generated at 2018-01-29 19:25 UTC-0200
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

# MailGun API Key
# export MAILGUN_APIKEY=""


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source $ZSH/oh-my-zsh.sh

###############################################################################
# Aliases
###############################################################################
alias tmux="tmux -2"
alias ta="tmux attach -t"
alias tnew="tmux new -s"
alias tls="tmux ls"
alias tkill="tmux kill-session -t"

# alias pbcopy="xclip -selection clipboard"
# alias bpaste="xclip -selection clipboard -o"

###############################################################################
# Source Bravi Aliases
###############################################################################
export ALIAS_PATH="/Users/$(whoami)/alias.sh"
[ -s "$ALIAS_PATH" ] && . "$ALIAS_PATH"
# source ~/alias.sh

###############################################################################
# Additional env paths
###############################################################################
export ENVS_PATH="/Users/$(whoami)/.zshrc.envs"
[ -s "$ENVS_PATH" ] && . "$ENVS_PATH" # This loads nvm

