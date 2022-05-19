# vimrc

My personal vim setup.
Some of the keybinds only work on MacOS but I'll update them when I have time.

This is primarily for my own personal use when I'm active on a new machine or sshing into another computer but you are welcome to steal it.

Must have Vim version 8 or more.

# Installation
**Preparation:**

This makes room for the install and deletes previous vim configs, README.md files, and git inits so backup those files before running this command.
```sh
rm -rf ~/.git ~/README.md ~/.vim ~/.vimrc
```

**Install Settings:**
```sh
git clone https://github.com/Pandoks/vimrc.git
mv vimrc/.* ~
rm -rf vimrc ~/.git ~/README.md
```

# Coming Soon
**Installer:**
Install the vim configs without needing to copy and paste.
