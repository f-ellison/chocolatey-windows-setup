# chocolatey-windows-setup
This repo contains a script for installing initail setup to a new windows machine with some focus to dev

Firstly, you need to install Chocolatey. You can find more information from https://chocolatey.org/install. 

After installed choco, you should be sure that your execution policy is **Unrestricted** or **Bypass** for executing the script. You can control your execution policy by opening **PowerShell as Administrator** and run:
    
    Get-ExecutionPolicy

If it is not **Unrestricted** or **Bypass**, you should run that command:

    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
    
Now, you're ready to execute the installation script (**PowerShell as Administrator**).
    
    .\setup_environment.ps1
