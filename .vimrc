set t_Co=256

"Leader remapping
let mapleader=","

"Intendation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"vim tabs
set tabpagemax=20

"statusbar
:set laststatus=2

"Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>


"FOLDING
set foldmethod=indent
"set nofoldenable
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za


""""""""""""""""" VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/Solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'elixir-lang/vim-elixir'
Plugin 'typescript-vim'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'w0rp/ale'
Plugin 'maralla/completor.vim'
Plugin 'Quramy/tsuquyomi'

call vundle#end()

filetype on
filetype indent on
filetype plugin on

"COLORS
colorscheme space-vim-dark
"let g:molokai_original = 1
hi Normal ctermbg=none

hi Search cterm=NONE ctermbg=white ctermfg=black
:highlight Folded ctermbg=darkgrey ctermfg=black
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+\%#\@<!$/

"RAML
au BufNewFile,BufRead *.raml set filetype=yaml

"Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

let g:completor_python_binary = '/usr/bin/python'


hi SpellBad ctermbg=41
hi SpellCap ctermbg=198

"""""""""""" COMPLETER
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

