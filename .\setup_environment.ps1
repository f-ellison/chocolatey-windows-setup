# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your starting environment ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco install ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco install wsl2 -y
#Consider what version of ubuntu to install
#I was not happy with the options for ubuntu. Will install manually or come back to this automation.

# core components
Write-Host "====> Installing core components..."
choco install correttojdk -y
choco install python3 -y
choco install 7zip -y
choco install git -y
choco install winmerge -y
choco install curl -y
choco install wget -y
choco install nodejs-lts -y
choco install docker-cli -y
choco install kubernetes-cli -y
choco install docker-desktop -y
choco install openssl -y
choco install putty -y
choco install jq -y
choco install dotnetcore-sdk -y

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

# Game platforms
Write-Host "====> Installing Game platforms..."
choco install steam -y
choco install epicgameslauncher -y

# additional software
Write-Host "====> Installing additional software..."
choco install discord -y
choco upgrade vlc -y
Write-Host "=== Your development environment is ready to use! Enjoy! ==="
