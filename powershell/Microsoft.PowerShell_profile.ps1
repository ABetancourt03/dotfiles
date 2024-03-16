#Set-PSReadLineOption -PredictionViewStyle ListView

# Initialize Oh-My-Posh and Terminal-Icons

Invoke-Expression (&starship init powershell)

Import-Module -Name Terminal-Icons
Import-Module -Name syntax-highlighting

# Aliases
Set-Alias l ls
Set-Alias ll ls
Set-Alias c clear
Set-Alias dev openDevDir
Set-Alias dotfiles openDotfiles
Set-Alias vimrc openNvimDir

function openDevDir {
  Set-Location ~/Dev
}

function openDotfiles {
  Set-Location E:/dotfiles
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
Set-Alias glog gitLog
Set-Alias gaa gitAddAll
Set-Alias ggpull gitPull
Set-Alias ggpush gitPush

function gitStatus {
  git status
}

function gitLog {
  git log --all --graph --format=oneline
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
