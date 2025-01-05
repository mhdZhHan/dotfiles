# -----------------------------------
# Powerlevel10k Instant Prompt Setup
# -----------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------------------
# Oh My Zsh Setup
# ----------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins for productivity and speed
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# ------------------------------------
# Enhancements for Shell Performance
# ------------------------------------
# Clear autosuggestions after paste
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)

# Disable beep sound
unsetopt BEEP

# Persistent history across sessions
HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000

# Ignore duplicate and space-prefixed commands in history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Disable command logging to speed up shell history writes
unsetopt inc_append_history

# Syntax highlighting performance tweaks
FAST_HIGHLIGHTING_DELAY=0

# Autocomplete tweaks
export COMPLETION_WAIT=0.5

# Reduce completion delay
zstyle ':completion:*' menu select
export KEYTIMEOUT=10

# Enable background auto-updates for Oh My Zsh
DISABLE_UPDATE_PROMPT=true

# -----------------------------------
# Development Environment Setup
# -----------------------------------

# NVM (Node Version Manager) setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load nvm bash_completion

# Bun (JavaScript bundler) setup
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load Powerlevel10k config if available
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -----------------------------------
# Custom Aliases
# -----------------------------------

# General
alias c='clear'
alias lsd='ls -d */'  # List only directories
alias lt='ls -lt'     # Sort by modification time
alias la='ls -A'      # Show hidden files

# Git shortcuts
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

