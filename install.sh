#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

ln -s $(pwd)/zshrc $HOME/.zshrc
ln -s $(pwd)/bash_profile $HOME/.bash_profile

