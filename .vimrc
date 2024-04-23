set textwidth=92  " lines longer than 92 columns will be broken
 
set encoding=utf-8
set backspace=indent,eol,start
set ignorecase
set smartcase
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set shiftround

set mouse=a

scriptencoding utf-8 " basic

set laststatus=2 statusline=%-30f\ %m\ %20{&fileencoding?&fileencoding:&encoding}\ line:%l\ col:%c

let mapleader=","
set timeout timeoutlen=1500

" Save
nnoremap <C-s> :update<CR>
vnoremap <C-s> <Esc>:update<CR>
inoremap <C-s> <Esc>:update<CR>

" Corrector ortográfico en Español por defecto
set spell spelllang=es 

filetype plugin indent on
let python_highlight_all=1
syntax on
 
colorscheme industry
set guifont=Fira\ Code\ Medium\ 14
 

set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

set showmatch
set magic

" Always copy to both internal and system clipboard
set clipboard+=unnamedplus,unnamed

" Don't lose clipboard when pasting
vnoremap p pgvy

" Change dir to current path
command! ChangeDir :cd %:p:h<CR>

" Buffers
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>

"" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"" YouCompleteMe
let g:ycm_key_list_select_completion=[] " disables the tab key for YCM
let g:ycm_key_list_previous_completion=[] " disables the tab key for YCM

" NerdTree settings
let g:NERDTreeWinPos = "right"

vmap <leader>mc !boxes -d pound-cmt<CR>
nmap <leader>mc !!boxes -d pound-cmt<CR>
vmap <leader>xc !boxes -d pound-cmt -r<CR>
nmap <leader>xc !!boxes -d pound-cmt -r<CR>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
 
execute pathogen#infect()
filetype plugin indent on
 
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

" NERDTree config values
map <F9> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

let g:showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

"" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"

" Save with comma-s
nmap <Leader>w :update<CR>

" zfz
map <C-f> <Esc><Esc>:Files!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
" https://www.youtube.com/watch?v=UM4ks_jWwfU

"" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 0

"" Tagbar
nmap <F8> :TagbarToggle<CR>

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Ajustar en ancho de linea segun el tipo de fichero
if has("autocmd")
    au BufRead,BufNewFile *.md setlocal textwidth=80
    au BufRead,BufNewFile *.py setlocal textwidth=96
endif

if has("autocmd")
    autocmd FileType markdown setlocal spell
    set spell spelllang=es 
endif

"" Skeletons
autocmd BufNewFile *.py 0r ~/.vim/skeletons/python.py | $
colorscheme darkblue
