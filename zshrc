###############################################################################
## Path to your oh-my-zsh installation.
###############################################################################
export ZSH="$HOME/.oh-my-zsh"

###############################################################################
## Custom aliases
###############################################################################
custom_aliases="$HOME/.aliases.sh"
if [ -f $custom_aliases ]; then
  source $custom_aliases
fi

###############################################################################
## Set name of the theme to load.
###############################################################################
ZSH_THEME="bira"

###############################################################################
# Main Enviroment Path
###############################################################################
# Homebrew (Apple Silicon, Intel Mac, or Linuxbrew)
for brew_prefix in /opt/homebrew /usr/local /home/linuxbrew/.linuxbrew; do
  if [[ -x "$brew_prefix/bin/brew" ]]; then
    eval "$("$brew_prefix/bin/brew" shellenv)"
    break
  fi
done
export PATH=/usr/local/bin:$PATH

###############################################################################
# Red dots on waiting for completion
###############################################################################
COMPLETION_WAITING_DOTS="true"

###############################################################################
# History command output date format
###############################################################################
HIST_STAMPS="dd/mm/yyyy"
setopt HIST_SAVE_NO_DUPS    # Don't write duplicate entries in the history file.
setopt HIST_IGNORE_ALL_DUPS # Delete old entry if a new entry is a duplicate.
setopt HIST_REDUCE_BLANKS   # Remove superfluous blanks before saving.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicated entries first when history is trimmed.

###############################################################################
# Environment Language
###############################################################################
export LANG="en_US.UTF-8"

###############################################################################
# Clipboard
###############################################################################
# alias pbcopy="xclip -selection clipboard"
# alias bpaste="xclip -selection clipboard -o"

###############################################################################
# ZSH Plugins
###############################################################################
plugins=(git z kubectl docker docker-compose)

###############################################################################
# Github info
###############################################################################
export GITHUB_USERNAME="adroaldof"
export GITHUB_ACCESS_TOKEN=""

###############################################################################
# Tmux
###############################################################################
# alias tmux="tmux -2"
# alias ta="tmux attach -t"
# alias tnew="tmux new -s"
# alias tls="tmux ls"
# alias tkill="tmux kill-session -t"

###############################################################################
# Vim
###############################################################################
alias vim="nvim"

###############################################################################
# NVM Path
###############################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

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
# source <(kubectl completion zsh)
# source <(helm completion zsh)

###############################################################################
## Activate your oh-my-zsh installation.
###############################################################################
# The following line was added by Docker Desktop to enable Docker CLI completions.
fpath=($HOME/.docker/completions $fpath)
source $ZSH/oh-my-zsh.sh


###############################################################################
## Claude, Cursor
###############################################################################
export PATH="$HOME/.local/bin:$PATH"
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"
export LC_ALL=en_US.UTF-8

# Serena aliases
alias serena="uvx --from git+https://github.com/oraios/serena serena"
