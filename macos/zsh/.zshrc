export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

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

alias c='clear'

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim'
alias dotfiles='cd ~/dotfiles && c'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python3'

# get node version of the project
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    nvm use > /dev/null
    # Si quieres que te diga la versión
    nvm use
  fi
}

PATH=~/.console-ninja/.bin:$PATH

# bun completions
[ -s "/Users/angelo/.bun/_bun" ] && source "/Users/angelo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/Users/angelo/.spicetify

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
