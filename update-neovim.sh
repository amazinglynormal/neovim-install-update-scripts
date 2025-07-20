#!/bin/bash


# Install Dependencies  
# Fedora/ RHEL -- Uncomment below
# sudo dnf -y install ninja-build cmake gcc make gettext curl glibc-gconv-extra

# Ubuntu/ Debian -- Uncomment below
# sudo apt install ninja-build gettext cmake curl build-essential

# go to https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites for other systems


# Update local neovim repo
cd ~/neovim && git pull

# If you want to use stable release -- Uncomment below
# git checkout stable


# Install from source
rm -r build/ # clear the cmake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install

echo -e "\n\n-------------------------------"
nvim --version
