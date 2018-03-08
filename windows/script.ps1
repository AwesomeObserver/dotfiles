# Var
$chocoUpgrade = "choco upgrade chocolatey"
$chocoV = "choco version"
$yarnIn = "choco install yarn"
$yarnUp = "choco upgrade yarn"
$nodeV = "node -v"
$yarnV = "yarn -v"
$goV = "go version"
$glideV = "glide --version"

Write-Host "Welcome back!"
Write-Host " "

Write-Host "Running script..."
Write-Host " "

# Insatall Choco
# Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Choco post installation
Write-Host "Upgrade Choco"
Write-Host " "
Invoke-Expression $chocoUpgrade
Write-Host " "

Write-Host "Choco version"
Write-Host " "
Invoke-Expression $chocoV
Write-Host " "

# Install Yarn
Write-Host "Install Yarn..."
Write-Host " "
Invoke-Expression $yarnIn
Write-Host " "

Write-Host "Upgrade Yarn..."
Write-Host " "
Invoke-Expression $yarnUp
Write-Host " "

# Check something version
Write-Host "Node version"
Invoke-Expression $nodeV
Write-Host " "

Write-Host "Yarn version"
Invoke-Expression $yarnV
Write-Host " "

Write-Host "Golang version"
Invoke-Expression $goV
Write-Host " "

Write-Host "Glide version"
Invoke-Expression $glideV
Write-Host " "