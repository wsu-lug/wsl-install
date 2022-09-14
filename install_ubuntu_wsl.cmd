@echo off

Echo Installing WSL
wsl --install

Echo Installing virtualization feature for WSL2
runas /noprofile /user:mymachine\administrator "dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart"

Echo Please install a Linux kernel update from this website
Echo https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
Echo Press [enter] when you are done with that
pause

Echo Making sure WSL is version 2
wsl --set-default-version 2

Echo Installing Ubuntu 20.04 (22.04 install is not supported via command line)
wsl --install -d Ubuntu

Echo Starting a bash session, please run the next script in this session
wsl
