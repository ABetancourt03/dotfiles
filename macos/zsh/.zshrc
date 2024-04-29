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

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim && c'
alias dotfiles='cd ~/dotfiles && c'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python3'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# get node version of the project
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    fnm use > /dev/null
    # Si quieres que te diga la versión
    fnm use
  fi
}

PATH=~/.console-ninja/.bin:$PATH

# bun completions
[ -s "/Users/angelo/.bun/_bun" ] && source "/Users/angelo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/Users/angelo/.spicetify

# pnpm
export PNPM_HOME="/Users/angelo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fnm
export PATH="/Users/angelo/Library/Application Support/fnm:$PATH"
eval "`fnm env`"
