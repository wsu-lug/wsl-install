@echo off

Echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
    Echo Success: Administrative permissions confirmed.
) else (
    Echo Failure: Current permissions inadequate.
    Echo Please run as admin [right-click, run as administrator]
    pause
    exit
)

Echo Installing WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Echo Install virtual machine feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Echo Please restart you computer and then run the next script install_ubuntu.cmd
pause