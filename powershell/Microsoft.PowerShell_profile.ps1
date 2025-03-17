Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons

function openDevDir { Set-Location ~/Dev && c }
function openDotfiles { Set-Location ~/dotfiles && c }
function openNvimDir { Set-Location ~/AppData/Local/nvim && c }

function gitStatus { git status }
function gitLog { git log --all --graph --format=oneline }
function gitAddAll { git add -A }
function gitPull { git pull }
function gitPush { git push }

function openIntellijIdea ($location) {
  C:\Program` Files\JetBrains\IntelliJ` IDEA` Community` Edition` 2024.3.4.1\bin\idea64.exe $location
}

# ----- Aliases -----

Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias v nvim
Set-Alias vim nvim
Set-Alias dev openDevDir
Set-Alias dotfiles openDotfiles
Set-Alias vimrc openNvimDir
Set-Alias lzg lazygit
Set-Alias idea openIntellijIdea

# --- Git ---

Set-Alias gst gitStatus
Set-Alias glog gitLog
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
