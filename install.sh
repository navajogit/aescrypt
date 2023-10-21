#!/bin/bash
if ! type "aescrypt" &>/dev/null; then
    echo "Aescrypt is not installed. Installing..."
    cd ~/Downloads
    wget https://github.com/navajogit/aescrypt/raw/main/aescrypt-3.16.tgz &&
#   curl -O https://www.aescrypt.com/download/v3/linux/aescrypt-3.16.tgz
    tar -xzf aescrypt-3.16.tgz &&
    cd aescrypt-3.16
    make &&
    sudo make install &&
    cd ~/Downloads
    shred -uzv aescrypt-3.16.tgz
    echo "Aescrypt was installed."
else
    echo "Aescrypt is already installed on your system."
fi
