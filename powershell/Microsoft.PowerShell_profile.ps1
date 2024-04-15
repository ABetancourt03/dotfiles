Invoke-Expression (&starship init powershell)

Import-Module -Name Terminal-Icons

function openDevDir { Set-Location E:/Dev }
function openDotfiles { Set-Location E:/dotfiles }
function openNvimDir { Set-Location ~/AppData/Local/nvim }

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

# Aliases
Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias v nvim
Set-Alias dev openDevDir
Set-Alias dotfiles openDotfiles
Set-Alias vimrc openNvimDir

# git
Set-Alias gst gitStatus
Set-Alias glog gitLog
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

New-Alias -Name cd -Value Change-Node-Version -Force -Option AllScope
