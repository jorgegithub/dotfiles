" Setup {{{1
set nocompatible
filetype off


execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd vimenter * NERDTree

" Settings {{{1
set foldmethod=marker
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬,nbsp:æ
set mouse=a
" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Mappings {{{1
let mapleader=","
" .vimrc {{{2
" Open .vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
