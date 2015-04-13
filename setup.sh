#!/bin/bash
# Simple setup.sh

sudo apt-get install -y git
sudo apt-get install -y curl

# Install rlwrap to provide libreadline features
sudo apt-get install -y rlwrap

# Install emacs
sudo apt-get install -y emacs

# git pull and install dotfiles as well
cd $HOME

curl -o Anaconda.sh https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.2.0-Linux-x86_64.sh

bash Anaconda.sh -b

if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/rolyv/dotfiles.git
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sf dotfiles/.emacs.d .

