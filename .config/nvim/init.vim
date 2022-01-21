set relativenumber
set ignorecase
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
syntax on
set ttyfast
set backupdir=~/.cache/nvim

call plug#begin()
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'jiangmiao/auto-pairs',
    Plug 'itchyny/lightline.vim'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'
    Plug 'j5shi/CommandlineComplete.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'voldikss/vim-floaterm'
    Plug 'ptzz/lf.vim'
call plug#end()

let g:Hexokinase_highlighters = ['foreground']
set termguicolors

cmap <c-p> <Plug>CmdlineCompleteBackward
cmap <c-n> <Plug>CmdlineCompleteForward

let g:indentLine_enabled=0
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '∙'
