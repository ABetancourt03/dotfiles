export PATH="$PATH:/opt/nvim-linux64/bin"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias guc="git reset --soft HEAD~"

export FZF_DEFAULT_COMMAND='ag -g ""'

export GIT_EDITOR=nvim
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

alias c='clear'

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim'
alias dotfiles='cd /mnt/e/configs'
alias winhome='cd /mnt/c/Users/Angelo'

alias tilingon='komorebic.exe start --whkd'
alias tilingoff='komorebic.exe stop'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python'

