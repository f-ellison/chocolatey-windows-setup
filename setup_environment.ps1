# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your starting environment ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco upgrade ChocolateyGUI -y

# additional software
Write-Host "====> Installing additional software..."
choco upgrade discord -y
choco upgrade vlc -y
choco upgrade signal -y

# core components
Write-Host "====> Installing core components..."
choco upgrade correttojdk -y
choco upgrade 7zip -y
choco upgrade git -y
choco upgrade winmerge -y

# text editors
Write-Host "====> Installing text editors..."
choco upgrade notepadplusplus -y

choco upgrade libreoffice-fresh -y

# browsers
Write-Host "====> Installing web browsers..."
choco upgrade firefox -y
choco upgrade GoogleChrome -y

# Game platforms
Write-Host "====> Installing Game platforms..."
choco upgrade steam -y
choco upgrade epicgameslauncher -y

Write-Host "=== Your environment is ready to use. ==="
