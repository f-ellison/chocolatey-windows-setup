# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your starting dev environment ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco upgrade ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco upgrade VirtualMachinePlatform -y -source windowsfeatures
choco upgrade Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco upgrade wsl2 -y
#Consider what version of ubuntu to install
#I was not happy with the options for ubuntu. Will install manually or come back to this automation.

# core components
Write-Host "====> Installing core components..."
choco upgrade correttojdk -y
choco upgrade python3 -y
choco upgrade 7zip -y
choco upgrade git -y
choco upgrade winmerge -y
choco upgrade curl -y
choco upgrade wget -y
choco upgrade nodejs-lts -y
choco upgrade docker-cli -y
choco upgrade kubernetes-cli -y
choco upgrade docker-desktop -y
choco upgrade openssl -y
choco upgrade putty -y
choco upgrade jq -y
choco upgrade dotnetcore-sdk -y

# text editors
Write-Host "====> Installing text editors..."
choco upgrade notepadplusplus -y

# browsers
Write-Host "====> Installing web browsers..."
choco upgrade firefox -y
choco upgrade GoogleChrome -y

# ides
Write-Host "====> Installing IDEs..."
choco upgrade vscode -y
Write-Host "====> Finished dev setup..."
