" Setup {{{1
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{2
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'plasticboy/vim-markdown'
<<<<<<< HEAD
Plugin 'vim-scripts/snipMate'
=======
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/snipMate'
"Plugin 'SirVer/ultisnips'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree

<<<<<<< HEAD
=======
" 20170227
"if has('gui_running')
    set background=dark
    colorscheme solarized
"else
"    colorscheme zenburn
"endif

>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
" Options {{{1
set foldmethod=marker
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬,nbsp:æ
<<<<<<< HEAD
set mouse=a
=======
set mouse=n
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
set nrformats=hex
" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

<<<<<<< HEAD
=======
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.pdf

>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
" Mappings {{{1
let mapleader=","
" .vimrc {{{2
" Open .vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
<<<<<<< HEAD
=======

let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
