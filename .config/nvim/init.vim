set number relativenumber
set ignorecase
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
syntax on
set ttyfast
set backupdir=~/.cache/nvim
" set cursorline 
set cursorcolumn
set cursorline


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
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nanotech/jellybeans.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
call plug#end()

let g:Hexokinase_highlighters = ['foreground']
set termguicolors

colorscheme jellybeans

cmap <c-p> <Plug>CmdlineCompleteBackward
cmap <c-n> <Plug>CmdlineCompleteForward

let g:indentLine_enabled=0
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '∙'

se mouse+=a

let g:neovide_transparency=0.5
let g:neovide_refresh_rate=144


set guifont=JetBrains\ Mono:h10

" This needs a grapical vim client! If you have issue comment this to fix them
noremap <C-C> "+y
noremap <C-V> "+p
nnoremap <C-k> :Files<CR>    
cnoremap <C-V> <C-r>+
imap <C-V> <C-r>+


" bad habbit
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
