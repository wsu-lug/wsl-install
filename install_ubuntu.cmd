@echo off

Echo User permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
    Echo Failure: Administrative permissions are too much for this script.
    Echo Please run as normal user [just double-click it]
    pause
    exit
) else (
    Echo Success: User permissions detected
)

Echo You need to download and install a Linux kernel fix for WSL
Echo Please download from here: https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
Echo Afterwards, com back and hit [enter]
pause

Echo Enabling WSL2
wsl --set-default-version 2

Echo Installing Ubuntu
wsl --install -d Ubuntu

Echo Please close the popup after you have setup a user
Echo Then come back and hit [enter]
pause

Echo Opening a bash session
Echo Please run the next script in there
wsl