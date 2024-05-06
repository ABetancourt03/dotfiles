# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="nanotech"

ZSH_THEME="powerlevel10k/powerlevel10k"

# if [ "$TMUX" = "" ]; then tmux; fi

# eval "$(starship init zsh)"

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
alias ls="eza --icons=always"

alias zshrc='nvim ~/.zshrc'
alias vimrc='cd ~/.config/nvim && c'
alias dotfiles='cd ~/dotfiles && c'

alias dev='cd ~/Dev && c'

alias v='nvim'
alias py='python3'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
