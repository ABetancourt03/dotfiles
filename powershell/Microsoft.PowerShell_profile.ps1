Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons

function openZed { C:/Zed.exe }
function openDevDir { Set-Location ~/Dev && c }
function openDotfiles { Set-Location ~/dotfiles && c }
function openNvimDir { Set-Location ~/AppData/Local/nvim && c }

function gitStatus { git status }
function gitLog { git log --all --graph --format=oneline }
function gitAddAll { git add -A }
function gitPull { git pull }
function gitPush { git push }

# Aliases
Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias v nvim
Set-Alias vim nvim
Set-Alias dev openDevDir
Set-Alias dotfiles openDotfiles
Set-Alias vimrc openNvimDir
Set-Alias zed openZed

# git
Set-Alias gst gitStatus
Set-Alias glog gitLog
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

fnm env --use-on-cd | out-string | invoke-expression

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
