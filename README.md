# vimrc

My personal vim setup.
Some of the keybinds only work on MacOS but I'll update them when I have time.

This is primarily for my own personal use when I'm active on a new machine or sshing into another computer but you are welcome to steal it.

Must have Vim version 8 or more.

# Installation
**Preparation:**

This makes room for the install and deletes previous vim configs and git inits so backup those files before running this command.
```sh
rm -rf ~/.git ~/.vim ~/.vimrc
```

**Install Settings:**
```sh
git clone https://github.com/Pandoks/vimrc.git
mv vimrc/.* ~ && rm -rf vimrc ~/.git
```

# Coming Soon
**Installer:**
Install the vim configs without needing to copy and paste.

**COC.nvim:**
Install coc.nvim without needing sudo

# Install/Update vim Without sudo:
If needed, here's a note to installing vim without root access to the package manager.

**Install:**
```sh
cd ~ && mkdir .local
cd .local && git clone https://github.com/vim/vim.git
cd vim/src && ./configure --prefix=$HOME/.local/vim
make && make install
```
**Configure:**

After installation, add to .bashrc or .zshrc depending on what shell the system is using:
```sh
alias vim="~/.local/vim/bin/vim"
```
