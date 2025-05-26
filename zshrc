# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use Powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Load Powerlevel10k config if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Recommended for instant prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Enable autosuggestions and syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY       # Write to history immediately
setopt SHARE_HISTORY            # Share history across sessions

# Completion
autoload -Uz compinit
compinit

# Aliases
alias clr='clear'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'

# Git Aliases
alias g='git'
alias gi='git init'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gst='git status --short'
alias gl='git log --oneline --graph --decorate --all'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias glast='git log -1 HEAD'
alias gc='git config --global --list'
alias grv='git remote -v'
alias gcl='git clone'

# Enable colors
autoload -U colors && colors

# Optional: Use eza instead of ls if installed
if command -v eza &> /dev/null; then
  alias ls='eza --icons'
  alias ll='eza -al --icons'
fi

# Start in home directory
cd ~
