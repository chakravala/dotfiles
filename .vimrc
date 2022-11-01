execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" auto completion
set wildmode=longest,list,full

" spell checking
map <leader>o :setlocal spell! spelllang=en_US<CR>
map <leader>s :!clear && shellcheck %<CR>

" bibliography
map <leader>b :vsp<space>$BIB<CR>
map <leader>r :vsp<space>$REFER<CR>

set undodir=~/.vim/undodir
set undofile nocompatible number
set completeopt=menuone,longest,preview complete+=k
set linebreak breakindent breakindentopt=shift:2
set tabstop=4 shiftwidth=4
autocmd FileType julia set expandtab softtabstop=4

colo slate
hi Normal guibg=NONE ctermbg=NONE
autocmd FileType tex colorscheme lucius
autocmd FileType tex hi Normal guibg=NONE ctermbg=NONE
autocmd FileType tex hi LineNr guibg=NONE ctermbg=NONE
autocmd FileType tex exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))

let g:tex_flavor = 'latex'
let g:vimtex_matchparen_enabled = 0
let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_viewer = 'qpdfview'
"let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
"let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_view_general_options_latexmk = '-pdflatex=lualatex'


"let g:vimtex_view_automatic = 0
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_view_process_start = 0
let g:vimtex_view_xwin_exists = 0

autocmd BufNewFile,BufRead *.wl set syntax=wl
autocmd BufNewFile,BufRead *.wls set syntax=wl
autocmd BufNewFile,BufRead *.m set syntax=wl

autocmd FileType julia hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE
autocmd FileType julia hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE
autocmd FileType julia hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE
autocmd FileType julia hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse

"autocmd FileType julia let g:slime_target = "x11"

" julia
"autocmd FileType julia let g:default_julia_version = '1.0'

" language server
"autocmd FileType julia let g:LanguageClient_autoStart = 1
"autocmd FileType julia let g:LanguageClient_serverCommands = {
"\   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
"\       using LanguageServer;
"\       server = LanguageServer.LanguageServerInstance(stdin, stdout, false);
"\       server.runlinter = true;
"\       run(server);
"\   '],
"\ }

"autocmd FileType julia nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"autocmd FileType julia nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"autocmd FileType julia nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

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
