set number
syntax on
set showmode
set showcmd
set encoding=utf-8
set expandtab
set tabstop=4
set laststatus=2
set showmatch
set hlsearch
set incsearch
set ignorecase
set cindent
highlight Comment cterm=italic
"vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'phresher/vim-openfoam'
call plug#end()
"nerdtree config
map <F2> :NERDTreeToggle<CR>
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
"autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"colorscheme
colorscheme gruvbox
set background=dark
"key map
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap "" ""<Left>
imap '' ''<Left>
