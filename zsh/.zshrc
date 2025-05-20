export ZSH="$HOME/.oh-my-zsh"

#if [ "$TMUX" = "" ]; then tmux; fi

eval "$(starship init zsh)"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias guc="git reset --soft HEAD~"
alias glog="git log --all --graph --format=oneline"
export FZF_DEFAULT_COMMAND='ag -g ""'
export GIT_EDITOR=nvim

alias c='clear'
alias ls='eza --icons=always'
alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim && c'
alias dotfiles='cd ~/dotfiles && c'
alias dev='cd ~/Dev && c'
alias v='nvim'
alias py='python3'
alias lzg='lazygit'
alias ff='neofetch'

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
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

# fnm
export PATH="$HOME/.local/share/fnm:$PATH"
eval "`fnm env`"
