Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons
winfetch

function openDevDir { Set-Location ~/Dev && c }
function openDotfiles { Set-Location ~/dotfiles && c }
function openNvimDir { Set-Location ~/AppData/Local/nvim && c }

function gitStatus { git status }
function gitLog { git log --all --graph --format=oneline }
function gitAddAll { git add -A }
function gitPull { git pull }
function gitPush { git push }

# get node version of the project
function Change-Node-Version {
  param($path)
	& Set-Location $path
	$pwd = pwd
	if ( Test-Path "$pwd\\.nvmrc" ) {
	$version = Get-Content .nvmrc
	  nvm use $version
	}
}

New-Alias -Name cd -Value Change-Node-Version -Force -Option AllScope

# Aliases
Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias v nvim
Set-Alias vim nvim
Set-Alias dev openDevDir
Set-Alias dotfiles openDotfiles
Set-Alias vimrc openNvimDir

# git
Set-Alias gst gitStatus
Set-Alias glog gitLog
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
