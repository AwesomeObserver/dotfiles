Set-Location ~
New-Item -ItemType directory -Path ~/WslDistr

Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile ~/Ubuntu.appx -UseBasicParsing

Rename-Item Ubuntu.appx Ubuntu.zip
Expand-Archive Ubuntu.zip ~/WslDistr/Ubuntu

Remove-Item ~/Ubuntu.zip

Set-Location ~/WslDistr/Ubuntu
Start-Process "ubuntu1804.exe"