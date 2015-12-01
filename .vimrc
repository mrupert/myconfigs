set nocompatible
set number
set encoding=utf-8

"#################################################
" Syntax highlighting
"#################################################

if has('syntax') && !exists('g:syntax_on')
  syntax enable
  filetype plugin indent on
endif
"set fileformats=unix
"#################################################
" Make a buffer hidden when editing another one
"#################################################
"set hidden

" Make cursor keys ignore wrapping
inoremap <silent> <Down> <C-R>=pumvisible() ? "\<lt>Down>" : "\<lt>C-O>gj"<CR>
inoremap <silent> <Up> <C-R>=pumvisible() ? "\<lt>Up>" : "\<lt>C-O>gk"<CR>

" CTRL-F does Find dialog instead of page forward
noremap <silent> <C-F> :promptfind<CR>
vnoremap <silent> <C-F> y:promptfind <C-R>"<CR>
onoremap <silent> <C-F> <C-C>:promptfind<CR>
inoremap <silent> <C-F> <C-O>:promptfind<CR>
cnoremap <silent> <C-F> <C-C>:promptfind<CR>
noremap <silent> <S-T> :set nonumber!<CR>

set history=500         " remember more commands and search history
set undolevels=2000  

"####################################################
"search
"####################################################
set ic
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set hls
set smartcase " MTR
set ignorecase
"inoremap <BS>
"####################################################
"editing
"####################################################
"set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
set ruler
"color scheme blugrine
"color Chasing_Logic 
"color kib_darktango
"color peaksea
"color phpaxor
color desert
set showcmd
set cursorline          " highlight current line
set showmatch
set matchtime=5
set mouse=a
set number
set wildmenu
set display+=lastline
set visualbell
set noswapfile " Do I want this?
"####################################################
"tabs
"####################################################
"set shiftwidth=2
"set smartindent             " abbrev -  :set si
"set guioptions-=T           " -=T hides toolbar, +=T shows toolbar
"set tabstop=4
set expandtab
set showcmd          " Show (partial) command in the last line of the screen.
set showmode         " Display current Modus ( --INSERT --, --REPLACE--, ... )
set report=0         " Show _always_ hints about new/changed/deleted Lines
set ruler            " Show the line and column number of the cursor position
"set display=lastline 
set cursorline
set softtabstop=2
set shiftwidth=2
set expandtab
"set dictionary=/usr/share/dict/words
set shm+=I           " Start without the intro message
set nostartofline     " keep the cursor in the same column
set ttyfast
"set nolazyredraw
set lazyredraw
set modeline
set modelines=3
"set notitle
set title " show filename in title bar
set wildignore=.git,*.o,*.a,.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.Rdata,*.rda
"set laststatus=2     " Show _always_ the statusline
set titlestring=File:\ %-25.55F\ %a%r%m titlelen=85
" Set extra options when running in GUI mode
if has("gui_running")
    set langmenu=none
    set sessionoptions-=folds
    set sessionoptions-=help
    set sessionoptions-=resize
    set sessionoptions+=winpos " Remember last window size and location
    "set ssop+=resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages
    set guitablabel=%M\ %t\ %f
    set lines=50                " 40 lines of text instead of 24
    set guifont=Andale\ Mono:h14
    set guioptions-=T
    set guioptions+=r
    set guioptions+=e
    
endif

" My popup tips
let g:MyVimTips="off"
function! ToggleVimTips()
  if g:MyVimTips == "on"
    let g:MyVimTips="off"
    pclose
  else
    let g:MyVimTips="on"
    pedit ~/.vim/vimtips.txt
  endif
endfunction

":command <AliasName> <string of command to be aliased>
"command Myhelp :call ToggleVimTips()
nnoremap <S-2> :call ToggleVimTips()<CMyR>
nnoremap <C-F6> :call ToggleVimTips()<CR>
nnoremap <S-F6> :call ToggleVimTips()<CR>
nnoremap <F6> :call ToggleVimTips()<CR>

" Status Line
set laststatus=1
set statusline=%F\ %(%w%h%r%m%)%=%2v:%4l/%4L/F6=My\ Notes
set rulerformat=%25(%w%h%r%<%m%=%2v:%4l/%4L\ 0x%02B%)
"set statusline+="F6-My Notes"
" Autoread changes to vim configs
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
resize

nnoremap <C-enter> :call ToggleVimTips()<CR>
