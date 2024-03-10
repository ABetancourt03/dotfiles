Import-Module "C:\Program Files\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
Set-PSReadLineOption -PredictionViewStyle ListView

# Initialize Oh-My-Posh and Terminal-Icons

(@(& 'C:/Users/Angelo/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Angelo\AppData\Local\Programs\oh-my-posh\themes\tokyonight_storm.omp.json' --print) -join "`n") | Invoke-Expression

Import-Module -Name Terminal-Icons

# Aliases
Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias dev openDevDir
Set-Alias vimrc openNvimDir

function openDevDir {
  Set-Location ~/Dev
}

function openNvimDir {
  Set-Location ~/AppData/Local/nvim
}

# Komorebic Aliases
Set-Alias tilingon tilingWindowManagerOn
Set-Alias tilingoff tilingWindowManagerOff

function tilingWindowManagerOn {
  komorebic start --whkd
  clear
}
  
function tilingWindowManagerOff {
  komorebic stop
  clear
}

# Git Aliases
Set-Alias gst gitStatus
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

function gitStatus {
  git status
}

function gitAddAll {
  git add -A
}

function gitPull {
  git pull
}

function gitPush {
  git push
}
