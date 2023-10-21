#!/bin/bash
if ! type "aescrypt" &>/dev/null; then
    echo "Aescrypt is not installed. Installing..."
    cd ~/Downloads
    wget https://github.com/navajogit/aescrypt/raw/main/aescrypt-3.16.tgz &&
    tar -xzf aescrypt-3.16.tgz &&
    cd aescrypt-3.16
    make &&
    sudo make install &&
    shred -uzv ~/Downloads/aescrypt-3.16.tgz
    rm -rfv ~/Downloads/aescrypt/
    cd ~
    echo "Aescrypt was installed."
else
    echo "Aescrypt is already installed on your system."
fi
