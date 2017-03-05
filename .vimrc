" Setup {{{1
set nocompatible
filetype off

" " set the runtime path to include Vundle and initialize
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

" Plugins for snippets
Plugin 'vim-scripts/snipMate'
"Plugin 'SirVer/ultisnips'
<<<<<<< HEAD
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
=======
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Colorschemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
autocmd vimenter * NERDTree

<<<<<<< HEAD
<<<<<<< HEAD
=======
" 20170227
=======
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82
"if has('gui_running')
    set background=dark
    colorscheme solarized
"else
"    colorscheme zenburn
"endif

<<<<<<< HEAD
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
=======
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82
" Options {{{1
set foldmethod=marker
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬,nbsp:æ
<<<<<<< HEAD
<<<<<<< HEAD
set mouse=a
=======
set mouse=n
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
=======
set mouse=n
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82
set nrformats=hex
" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
<<<<<<< HEAD

<<<<<<< HEAD
=======
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.pdf

>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
=======
"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.pdf
"
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82
" Mappings {{{1
let mapleader=","
" .vimrc {{{2
" Open .vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
<<<<<<< HEAD
<<<<<<< HEAD
=======

=======
"
"YCM TAB to Enter because of snippets plugins incompatibility
>>>>>>> 96c240e3b0fc6b60a29e694d76159d75fd49cd82
let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
>>>>>>> e249bf626b453bc04870a226819e8cb9cc6b974b
