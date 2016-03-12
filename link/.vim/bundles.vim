set nocompatible "VIM not VI ;)

""""""""" PLUGINS
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

"" Defaults everyone agrees on :)
Bundle 'tpope/vim-sensible'

"""""" Git
Bundle 'tpope/vim-fugitive'
	autocmd BufReadPost fugitive://* set bufhidden=delete
Bundle 'gregsexton/gitv'
Bundle 'airblade/vim-gitgutter'

""""""
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'tpope/vim-commentary'
	vmap <S-A-c> gc
"""""" Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

Bundle 'skammer/vim-css-color'
Bundle 'groenewege/vim-less'
""""""
Bundle 'luochen1990/rainbow'
	let g:rainbow_active = 1
Bundle 'ciaranm/detectindent'
	autocmd BufReadPost * :DetectIndent
	let g:detectindent_preferred_indent = 4
	let g:detectindent_preferred_expandtab = 1
Bundle 'tpope/vim-surround'
Bundle 'nixon/vim-vmath'
	vmap <expr> ++ VMATH_YankAndAnalyse()
	nmap        ++ vip++
Bundle 'jondkinney/dragvisuals.vim'
	vmap <expr> <S-LEFT> DVB_Drag('left')
	vmap <expr> <S-RIGHT> DVB_Drag('right')
	vmap <expr> <S-DOWN> DVB_Drag('down')
	vmap <expr> <S-UP> DVB_Drag('up')
	vmap <expr> H DVB_Drag('left')
	vmap <expr> L DVB_Drag('right')
	vmap <expr> J DVB_Drag('down')
	vmap <expr> K DVB_Drag('up')
	vmap <expr> D DVB_Duplicate()

""""" Languages
"Bundle 'c9s/vim-dev-plugin'
"Bundle 'bitc/vim-hdevtools'
"	au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
"	au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
"	au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>
Bundle 'tikhomirov/vim-glsl'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'kchmck/vim-coffee-script'

""""" Completion
Bundle 'Valloric/YouCompleteMe'
	"https://github.com/Valloric/YouCompleteMe/issues/700
	"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"Bundle 'gmarik/ide-popup.vim'
	"http://vim.wikia.com/wiki/VimTip1228
	"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
	"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
	"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
	"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
	"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
	"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"" Syntax checking
Bundle 'scrooloose/syntastic.git'
	let g:syntastic_cpp_compiler = 'clang++'
	let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
	let g:syntastic_python_checkers = []

""""" Colors
Bundle 'altercation/vim-colors-solarized'


""""" Util
"Bundle 'editorconfig/editorconfig-vim'
Bundle 'wincent/Command-T'
Bundle 'majutsushi/tagbar'
	nmap <F8> :TagbarToggle<CR>
Bundle 'bling/vim-airline'
	"from :help airline-config
"	let g:airline_powerline_fonts=1
"	let g:airline_left_sep = '⮀'
"	let g:airline_left_alt_sep = '⮁'
"	let g:airline_right_sep = '⮂'
"	let g:airline_right_alt_sep = '⮃'
Bundle 'bling/vim-bufferline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'hator/scratch.vim'
	let g:scratch_toggle_enable=1
	let g:scratch_toggle_key='<F9>'
Bundle 'sjl/gundo.vim'

call vundle#end()

filetype plugin indent on
colorscheme solarized

