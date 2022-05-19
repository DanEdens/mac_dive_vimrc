set nocompatible  "Kill vi-compatibility

" Theme
set t_Co=256 "256 color
set background=dark
colorscheme PaperColor
set encoding=utf-8 "UTF-8 character encoding

" Cursor
set mouse=a "Allowed clickable mouse
"User a line cursor within insert mode and a block cursor everywhere else
"
"Reference chart of values:
"   Ps = 0 -> blinking block
"   Ps = 1 -> blinking block (default)
"   Ps = 2 -> steady block
"   Ps = 3 -> blinking underline
"   Ps = 4 -> steady underline
"   Ps = 5 -> blinking bar (xterm)
"   Ps = 6 -> steady bar (xterm)
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Indent 4 spaces
set tabstop=4  "4 space tabs
set shiftwidth=4  "4 space shift
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  "Expand tabs into spaces
set autoindent  "autoindent on new lines

set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=croq  "Enable comment line auto formatting

set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set number "Shows line numbers
set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
syntax on
filetype plugin indent on

" Plug Plugins
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Rainbow Parentheses
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" VPolyglot Collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" NERDtree file manager
Plug 'preservim/nerdtree'
" Keybinds
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Scripts
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" FuzzyFinder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Initialize plugin system
call plug#end()


" Scripts
" Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Shortcut move windows
map ˙ <C-w>H
map ∆ <C-w>J
map ˚ <C-w>K
map ¬ <C-w>L
map ® <C-w>R
map ƒ <C-w>r
" Shortcut for terminal
nnoremap ¡ :terminal<CR>
nnoremap ™ :below terminal<CR>
nnoremap £ :vertical terminal<CR>
nnoremap ¢ :vertical botright terminal<CR>
nnoremap ∞ :botright terminal<CR>
tnoremap <Esc><Esc> <C-\><C-n>
" Shortcut for resizing window
nnoremap ≠ :vertical resize +5<CR>
nnoremap ª :vertical resize -5<CR>
nnoremap º :resize +5<CR>
nnoremap – :resize -5<CR>
