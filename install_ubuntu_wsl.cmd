@echo off

Echo Installing WSL
wsl --install

Echo Making sure WSL is version 2
wsl --set-default-version 2

Echo Installing Ubuntu 20.04 (22.04 install is not supported via command line)
wsl --install -d Ubuntu

Echo Starting a bash session, please run the next script in this session
wsl
