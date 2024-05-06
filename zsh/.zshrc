export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="nanotech"

# if [ "$TMUX" = "" ]; then tmux; fi

eval "$(starship init zsh)"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias guc="git reset --soft HEAD~"

export FZF_DEFAULT_COMMAND='ag -g ""'

export GIT_EDITOR=nvim

alias c='clear'
alias ls='eza --icons=always'

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim && c'
alias dotfiles='cd ~/dotfiles && c'
alias winhome='cd /mnt/c/Users/Angelo && c'

alias tilingon='komorebic.exe start --whkd'
alias tilingoff='komorebic.exe stop'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python3'

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

# pnpm
export PNPM_HOME="/home/h4cker/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

PATH=~/.console-ninja/.bin:$PATH

PATH=$HOME/ruby/gems/bin:$PATH
GEM_HOME=$HOME/ruby
GEM_PATH=$HOME/ruby/gems:/usr/lib/ruby/gems/1.8
export PATH GEM_HOME GEM_PATH

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Turso
export PATH="/home/h4cker/.turso:$PATH"

# bun completions
[ -s "/home/h4cker/.bun/_bun" ] && source "/home/h4cker/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fnm
export PATH="/home/h4cker/.local/share/fnm:$PATH"
eval "`fnm env`"
