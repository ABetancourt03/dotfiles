alias c='clear'
alias ls='eza -aG --color=always --icons=always --sort type'
alias ll='eza -l --color=always --icons=always --sort type'
alias l='eza -la --color=always --icons=always --sort type'

alias v='nvim'
alias lzg='lazygit'
alias lzd='lazydocker'
alias f='fastfetch'

alias dev='cd ~/Dev && clear'
alias dotfiles='cd ~/dotfiles/ && clear'
alias vimrc='cd ~/.config/nvim && clear'

alias omarchy-theme='cd ~/.config/omarchy/themes/catppuccin-dark-customized/ && clear'

alias immich_start='cd /mnt/DATA/docker/immich-app/ && docker compose down && docker compose up -d && cd ~'
alias immich_stop='cd /mnt/DATA/docker/immich-app/ && docker compose down && cd ~'

alias davinci="env ROC_ENABLE_PRE_VEGA=1 AMD_VULKAN_ICD=RADV /opt/resolve/bin/resolve"
