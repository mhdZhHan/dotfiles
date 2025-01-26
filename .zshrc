# -----------------------------------
# Powerlevel10k Instant Prompt Setup
# -----------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------------------
# Oh My Zsh Configuration
# ----------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  # fast-syntax-highlighting
  # zsh-autocomplete
)
source $ZSH/oh-my-zsh.sh

# -----------------------------------
# Shell Performance Optimizations
# -----------------------------------
# History Configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000

# History Options
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
unsetopt inc_append_history

# Autocomplete and Completion
export COMPLETION_WAIT=0.5
export KEYTIMEOUT=10

# Completion Styles
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Performance Tweaks
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)
unsetopt BEEP
FAST_HIGHLIGHTING_DELAY=0
DISABLE_UPDATE_PROMPT=true

# -----------------------------------
# Custom Functions
# -----------------------------------
# Make directory and enter it
mcd() {
  mkdir -p "$1" && cd "$1"
}

# Initialize git and GitHub repo
ginit() {
    git init
    git branch -M main
    gh repo create "$(basename "$PWD")" --public --source=local
    git add .
    git commit -m "Initial commit"
    git push -u origin main
    echo "Project initialized and pushed to GitHub!"
}

# -----------------------------------
# Alias Configurations
# -----------------------------------
# General Aliases
alias c='clear'
alias lsd='ls -d */'
alias lt='ls -lt'
alias la='ls -A'
alias codium='codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland' # VSCodium wayland mode

# Git Aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'
alias gd='git diff'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gr='git remote -v'
alias gpl='git pull'
alias gfa='git fetch --all'
alias gsu='git branch --set-upstream-to=origin/main'

# -----------------------------------
# Development Environment Setup
# -----------------------------------
# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Bun (JavaScript bundler)
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Powerlevel10k Configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
