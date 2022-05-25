#!/usr/bin/env bash
rm -rf ~/.git ~/.vim ~/.vimrc
git clone https://github.com/Pandoks/vimrc.git
mv vimrc/.* ~ && rm -rf vimrc ~/.git
exit 0
