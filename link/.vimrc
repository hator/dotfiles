"VIMRC by hator@vifon
set nocompatible
source ~/.vim/bundles.vim
"""""""""
set title "change terminal title

"UTF-8
set encoding=utf8
set fenc=utf8

set hidden "hide buffers instead of closing them

"TABs
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set expandtab

set number		"show line numbers
set cursorline 	"highlight line with the cursor

set scrolloff=2

set ttyfast
set undofile

"Searching
set smartcase	"ignore case if search pattern is all lowercase, case sensitive otherwise
set nohlsearch
"set incsearch	"incremental search
set gdefault

"Line wrap
set nowrap "don't wrap lines
"set wrap
"set display=lastline
"let &showbreak='↳  '

"Beeps
set noerrorbells visualbell t_vb= "don't beep
autocmd GUIEnter * set visualbell t_vb=


let mapleader = ","

nnoremap ; :

"smart cursor (uses screen lines instead of file lines)
nnoremap j gj
nnoremap k gk

"avoid accidental help opening
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"automatically save on lost focus
au FocusLost * :wa

""""""""""
"colorscheme
if has('gui_running')
	"remove gui toolbar, menus and scrollbars
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	set background=dark
else
	let g:solarized_termcolors=256
	set background=dark
endif

syntax on "syntax highlight

set guifont=Inconsolata\ 12
"set guifont="-misc-inconsolata-medium-*-normal--*-120-*-*-*-*-*-*-"

" 80 characters line
let &colorcolumn=join(range(81,999), ",")

" easy indent (Eclipse style), doesn't loose its selection
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

" quick quickfix
nnoremap <F6> :cn<CR>
nnoremap <F5> :cp<CR>

"saving files like sudo
cmap w!! w !sudo tee % > /dev/null

"Ctrl-U & Ctrl-W problem fix
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>:echo ".vimrc reloaded"<CR>

" Autofolds
"set foldmethod=syntax

"""""""""
"Quick Compile
autocmd BufEnter *.c,*.cpp,*.h,*.hpp,Makefile map <F9> :w<CR>:make test<CR>
autocmd BufEnter *.c,*.cpp,*.h,*.hpp,Makefile imap <F9> <Esc>:w<CR>:make test<CR>

autocmd BufEnter *.pl map <F9> :w<CR>:!perl %<CR>
autocmd BufEnter *.pl imap <F9> <Esc>:w<CR>:!perl %<CR>


