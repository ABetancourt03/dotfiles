eval "$(starship init zsh)"

. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/btw/.local/bin:$PATH"
export PATH="/home/btw/.spicetify:$PATH"
export PATH="/home/btw/.zig:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/home/btw/.lmstudio/bin:$PATH"

# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# aliases
alias c='clear'

# eza
alias ls='eza -aG --color=always --icons=always --sort type'
alias ll='eza -l --color=always --icons=always --sort type'
alias l='eza -la --color=always --icons=always --sort type'

alias f='fastfetch'
alias v='nvim'
alias lzg='lazygit'
alias lzd='lazydocker'
alias oc='opencode'

# git
alias glog='git log --all --graph --format=oneline'

alias dev='cd ~/Dev && clear'

alias dotfiles='cd ~/dotfiles/ && clear'
alias vimrc='cd ~/.config/nvim && clear'
alias zshrc='nvim ~/.zshrc'

# history setup
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt histignorealldups sharehistory
setopt hist_expire_dups_first
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# get node version of the project
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    fnm use > /dev/null
    # Si quieres que te diga la versión
    fnm use
  fi
}

