set t_Co=256

filetype plugin on
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

"COLORS
colorscheme desert
hi Search cterm=NONE ctermbg=white ctermfg=black
:highlight Folded ctermbg=darkgrey ctermfg=black
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+\%#\@<!$/

"RAML
au BufNewFile,BufRead *.raml set filetype=yaml

"Remove hwitespace on save
autocmd BufWritePre * :%s/\s\+$//e

""""""""""""""""" VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/Solarized'
Plugin 'Lokaltog/vim-powerline'

call vundle#end()
