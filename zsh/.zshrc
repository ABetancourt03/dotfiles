export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="nanotech"

if [ "$TMUX" = "" ]; then tmux; fi

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
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#eval "$(starship init zsh)"

alias c='clear'

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim && c'
alias dotfiles='cd ~/dotfiles && c'
alias winhome='cd /mnt/c/Users/Angelo && c'

alias tilingon='komorebic.exe start --whkd'
alias tilingoff='komorebic.exe stop'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python3'

alias androidstd='/opt/android-studio/bin/studio.sh'
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# get node version of the project
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    nvm use > /dev/null
    # Si quieres que te diga la versión
    nvm use
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
