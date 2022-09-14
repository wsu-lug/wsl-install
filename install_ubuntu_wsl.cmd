@echo off

Echo Installing WSL
wsl --install

Echo Making sure WSL is version 2
wsl --set-default-version 2

Echo Installing Ubuntu 22.04 LTS
winget install "Ubuntu 22.04 LTS"

Echo Starting a bash session, please run the next script in this session
wsl
