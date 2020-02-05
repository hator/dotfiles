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
Plugin 'tikhomirov/vim-glsl'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'lambdatoast/elm.vim'

Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'dan-t/vim-hsimport'
	autocmd FileType haskell nmap <silent> <F1> :silent update <bar> HsimportModule<CR>
	autocmd FileType haskell nmap <silent> <F2> :silent update <bar> HsimportSymbol<CR>

""""" Completion
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/deoplete.nvim'
	let g:deoplete#enable_at_startup = 1

"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc><Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
			\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

""""" Colors
Bundle 'altercation/vim-colors-solarized'

""""" Util
Bundle 'ctrlpvim/ctrlp.vim'
	let g:ctrlp_map = '<C-P>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
Bundle 'majutsushi/tagbar'
	nmap <F8> :TagbarToggle<CR>
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'hator/scratch.vim'
	let g:scratch_toggle_enable=1
	let g:scratch_toggle_key='<F9>'
Bundle 'sjl/gundo.vim'

call vundle#end()

filetype plugin indent on
colorscheme solarized

