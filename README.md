# wsl-install
Installation scripts for installing WSL on WIndows 10 &amp; 11. PLEASE be sure to run the appropriate scripts in Windows and WSL.

Use "install_ubuntu_wsl.cmd" in Powershell. This will auto install the latest LTS version of Ubuntu. Once the script is done, please make sure to finish setting up Ubuntu by making a user.

Use "install_packages.sh" in Ubuntu. This will walk you through installing G++ and CMake. If you are taking CPT_S 223, please make sure you follow all other installation instructions to learn a few things abou the terminal.


Usage

1. Download this as a ZIP file and unip it into your Downloads folder (in Windows).

2. Run "install_ubuntu_wsl.cmd" and follow the instructions

3. Setup Ubuntu through its steps

4. In Ubuntu, run the next script from "/mnt/c/Users/[user]/Downloads/wsl-install/install_packages.sh [options]"
  a. Replace [user] with your Windows username, or the directory Windows stores it as. You can find this by using File Explorer, going to My Computer, the C: drive, entering the Users folder, and seeing what folder your home directory is called.
  b. If Ubuntu complains about permissions to run it, run "chmod +x /mnt/c/Users/[user]/Downloads/wsl-install/install_packages.sh"
  c. For the options, use 'g++' to start with it's installation. If you need to, use the option 'help' to see the options.
  
5. All done! Make sure you complete the rest of the instructions we don'ttalk about.
