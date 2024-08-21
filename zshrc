# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
ZSH_THEME="powerlevel10k/powerlevel10k"


###############################################################################
# Main Enviroment Path
###############################################################################
export PATH=$PATH:/Users/$(whoami)/setups/activator-dist-1.3.10/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH

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
plugins=(git z kubectl docker docker-compose zsh-syntax-highlighting zsh-autosuggestions)


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
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

if command -v pyenv 1> /dev/null 2>&1; then
    eval "$(pyenv init -)";
fi

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# # Uncomment the last line after:
# # `pyenv install 3.6.4`
# # `pyenv global 3.6.4`
# pyenv virtualenvwrapper_lazy


###############################################################################
# pipenv
###############################################################################

if [[ -n $(which pipenv) ]]; then
  export PATH=$PATH:$(which pipenv)
fi


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
# Aliases
###############################################################################
# alias tmux="tmux -2"
# alias ta="tmux attach -t"
# alias tnew="tmux new -s"
# alias tls="tmux ls"
# alias tkill="tmux kill-session -t"

# alias pbcopy="xclip -selection clipboard"
# alias bpaste="xclip -selection clipboard -o"
alias vim="nvim"


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

###############################################################################
# Fzf
###############################################################################

if [ -f ~/.fzf.zsh ] 
then
  # Feed the output of fd into fzf
  # fd --type f | fzf

  # Setting fd as the default source for fzf
  # export FZF_DEFAULT_COMMAND='fd --type f'
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'

  # Now fzf (w/o pipe) will use fd instead of find
  # fzf

  # To apply the command to CTRL-T as well
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  source ~/.fzf.zsh
fi


if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/powerlevel10k/powerlevel10k.zsh-theme ]] || source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############################################################################
# Docker
###############################################################################

export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120


###############################################################################
# Go
###############################################################################

if [[ -d /usr/local/go/bin ]]; then
  PATH="/usr/local/go/bin:$PATH"
fi


###############################################################################
# Kubernetes
###############################################################################

export KUBE_EDITOR=nvim
source <(kubectl completion zsh)
source <(helm completion zsh)
alias k=kubectl

###############################################################################
# ZSH Completions
# https://daten-und-bass.io/blog/fixing-docker-command-auto-completion-in-mac-os-catalina/
# https://thevaluable.dev/zsh-completion-guide-examples/
###############################################################################
autoload -Uz compinit
fpath=(~/.zsh/completion $fpath)
compinit -i
