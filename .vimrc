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
Plugin 'Valloric/YouCompleteMe'

" Plugins for snippets
Plugin 'vim-scripts/snipMate'
"Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Colorschemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'avakhov/vim-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
autocmd vimenter * NERDTree
augroup testgroup
    autocmd!
    autocmd Filetype python set background=dark
    autocmd Filetype python colorscheme pychimp
augroup END

"if has('gui_running')
    set background=dark
    colorscheme hipster
    "colorscheme solarized
"else
"    colorscheme zenburn
"endif

" Personal options {{{1
let g:maquina = system('hostname')
if g:maquina =~ "mahi-mahi"
    let g:rutaBusqueda = "/home/jorge/documents/prb_es/g_conf/notas_reuniones"
elseif g:maquina =~ "J's"
    let g:rutaBusqueda = "/Users/jorge/Documents"
else
    let g:rutaBusqueda = "/home/jorge"
endif

" Options {{{1
set pastetoggle=<F3>
set foldmethod=marker
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,nbsp:æ
"set listchars=tab:▸\ ,eol:¬,nbsp:æ
set mouse=n
set nrformats=hex
" tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.pdf,*.tgz,*.exe,*.xls,*.xlsx,*.doc,*.docx

" Highlight
highlight TrailingSpaces ctermbg=red guibg=red
match TrailingSpaces /[ \t]\+$/
"
" Mappings {{{1
let mapleader=","
" .vimrc {{{2
" Open .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eV :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>pj :%!python -m json.tool<CR>

nnoremap <leader>* viw<esc>a*<esc>bi*<esc>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>
nnoremap <leader>' viw<esc>a"<esc>bi'<esc>
nnoremap <leader>{ viw<esc>a}<esc>bi{<esc>
nnoremap <leader>[ viw<esc>a]<esc>bi[<esc>
nnoremap <leader>( viw<esc>a)<esc>bi(<esc>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>

inoremap <c-u> viwUea

iabbrev ññ -- <cr>Jorge del Arco<cr>jdelarco@gmail.com
"
"YCM TAB to Enter because of snippets plugins incompatibility
let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']

