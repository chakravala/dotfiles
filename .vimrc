execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set undodir=~/.vim/undodir
set undofile nocompatible number
set completeopt=menuone,longest,preview complete+=k
set linebreak breakindent breakindentopt=shift:2
set tabstop=4 shiftwidth=4
autocmd FileType julia set expandtab softtabstop=4

colo slate
autocmd FileType tex colorscheme lucius
autocmd FileType tex hi Normal guibg=NONE ctermbg=NONE
autocmd FileType tex hi LineNr guibg=NONE ctermbg=NONE
autocmd FileType tex exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))

let g:vimtex_matchparen_enabled = 0
let g:vimtex_view_method = 'my_zathura'
"let g:vimtex_view_general_viewer = 'qpdfview'
"let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
"let g:vimtex_view_general_options_latexmk = '--unique'

let g:vimtex_view_automatic = 0
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_view_process_start = 1
let g:vimtex_view_xwin_exists = 1

"let g:vimtex_compiler_latexmk = { 
"      \  'callback' : 0,
"      \}

"let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
"let g:vimtex_view_general_options_latexmk = '--unique'
"let g:vimtex_compiler_progname = 'latexmk'
"let g:vimtex_quickfix_open_on_warning = 0
"let g:tex_flavor = 'latex'

"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = "latex"

"if !has("gui_running")
"	:source $VIMRUNTIME/menu.vim
"	:set wildmenu
"	:set cpoptions-=<
"	:set wildcharm=<C-Z>
"	:map <F4> :emenu <C-Z>
"endif

"syntax sync minlines=200
"set nocursorline
"set nocursorcolumn
"set norelativenumber
