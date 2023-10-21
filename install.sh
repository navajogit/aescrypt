#!/bin/bash
if ! type "aescrypt" &>/dev/null; then
    echo "Aescrypt is not installed. Installing..."
    cd $HOME/Downloads
    curl -O https://github.com/navajogit/aescrypt/blob/main/aescrypt-3.16.tgz
#   curl -O https://www.aescrypt.com/download/v3/linux/aescrypt-3.16.tgz
    tar -xzf aescrypt-3.16.tgz
    cd aescrypt-3.16
    make 
    sudo make install
    shred -uzv $HOME/Downloads/aescrypt-3.16.tgz
    cd $HOME
    echo "Aescrypt was installed."
else
    echo "Aescrypt is already installed on your system."
fi
EOF
