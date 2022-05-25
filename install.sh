#!/usr/bin/env bash
rm -rf ~/.git ~/.vim ~/.vimrc
mv vimrc/.* ~ && rm -rf vimrc ~/.git
exit 0
