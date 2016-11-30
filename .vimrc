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
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/snipMate'
"Plugin 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree

" Options {{{1
set foldmethod=marker
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬,nbsp:æ
set mouse=a
set nrformats=hex
" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.pdf

" Mappings {{{1
let mapleader=","
" .vimrc {{{2
" Open .vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>
nnoremap <leader>s :source ~/.vimrc<CR>

let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
