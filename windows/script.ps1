# Vars
$chocoUp = "choco upgrade chocolatey"
$chocoV = "choco version"
$gitIn = "choco install git.install"
$gitUp = "choco upgrade git.install"
$nodeIn = "choco install nodejs.install"
$nodeUp = "choco upgrade nodejs.install"
$yarnIn = "choco install yarn"
$yarnUp = "choco upgrade yarn"
$nodeDep = "npm install -g typescript parcel-bundler now @vue/cli @angular/cli"
$nodeV = "node -v"
$yarnV = "yarn -v"
$goV = "go version"
$glideV = "glide --version"
$goPath = "echo $env:GOPATH"
$goRoot = "echo $env:GOROOT"

Write-Host "Running script..." -ForegroundColor Magenta -BackgroundColor Black
Write-Host " "

# Insatall Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Choco post installation
Write-Host "Upgrade Choco" -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $chocoUp
Write-Host " "

Write-Host "Choco version" -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $chocoV
Write-Host " "

# Install Git
Write-Host "Install Git..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $gitIn
Write-Host " "

Write-Host "Upgrade Git..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $gitUp
Write-Host " "

# Install NodeJS
Write-Host "Install NodeJS..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $nodeIn
Write-Host " "

Write-Host "Upgrade NodeJS..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $nodeUp
Write-Host " "

# Install Yarn
Write-Host "Install Yarn..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $yarnIn
Write-Host " "

Write-Host "Upgrade Yarn..." -ForegroundColor Green -BackgroundColor Black
Write-Host " "
Invoke-Expression $yarnUp
Write-Host " "

# Install NodeJS Dep
Write-Host "Install NodeJS Dep..." -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $nodeDep
Write-Host " "

# Check something versions
Write-Host "Node version" -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $nodeV
Write-Host " "

Write-Host "Yarn version" -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $yarnV
Write-Host " "

Write-Host "Golang version" -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $goV
Write-Host " "

Write-Host "GOPATH & GOROOT" -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $goPath
Invoke-Expression $goRoot
Write-Host " "

Write-Host "Glide version" -ForegroundColor Green -BackgroundColor Black
Invoke-Expression $glideV
Write-Host " "

Write-Host "Done" -ForegroundColor Green -BackgroundColor Black
