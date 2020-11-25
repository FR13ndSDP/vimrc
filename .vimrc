" Comments in Vimscript start with a `"`.
" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on
colorscheme onedark 
set cindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
autocmd FileType make set noexpandtab
" Disable the default Vim startup message.
set shortmess+=I

" Show relative line numbers.
set relativenumber

" show line number
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
"set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
" nnoremap <Left>  :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up>    :echoe "Use k"<CR>
" nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
" inoremap <Left>  <ESC>:echoe "Use h"<CR>
" inoremap <Right> <ESC>:echoe "Use l"<CR>
" inoremap <Up>    <ESC>:echoe "Use k"<CR>
" inoremap <Down>  <ESC>:echoe "Use j"<CR>

"映射ESC
inoremap jk <esc>
"自动补全括号
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
"inoremap { {}<Esc>i<CR><ESC>V<O
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
autocmd Syntax html,vim inoremap < <lt>><Esc>i

"解决TMUX高亮不正确
if &term =~ '256color'
	set term=screen-256color
	set t_ut=
endif

"nerdtree config
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"c++语法高亮插件

"Highlighting of class scope is disabled by default. To enable set

let g:cpp_class_scope_highlight = 1
"Highlighting of member variables is disabled by default. To enable set

let g:cpp_member_variable_highlight = 1
"Highlighting of class names in declarations is disabled by default. To enable set

let g:cpp_class_decl_highlight = 1
"Highlighting of POSIX functions is disabled by default. To enable set

"let g:cpp_posix_standard = 1
"There are two ways to highlight template functions. Either

"let g:cpp_experimental_simple_template_highlight = 1
"which works in most cases, but can be a little slow on large files. Alternatively set

let g:cpp_experimental_template_highlight = 1
"which is a faster implementation but has some corner cases where it doesn't work.

" airline Theme
let g:airline_theme='onedark'

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
