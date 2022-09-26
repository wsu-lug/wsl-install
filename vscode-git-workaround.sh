#!/bin/bash

echo "We will now fix GZip so that VSCode can install properly"
echo "After the download, you will have to enter you password for sudo to install"

cd /tmp
wget http://security.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.2_amd64.deb
sudo dpkg -i ./gzip_1.6-5ubuntu1.2_amd64.deb
sudo apt-mark hold gzip
rm gzip_1.6-5ubuntu1.2_amd64.deb

echo "We have now installed an older verison of GZip"
echo "With this, we will now install VSCode"
echo "Please close VSCode when it launches"

cd $HOME
code .

echo "Now that it is fixed, we will make sure GZip is back up to date"

sudo apt-mark unhold gzip
sudo apt update
sudo apt upgrade -y

echo ""
echo "All done!"
