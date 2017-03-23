execute pathogen#infect()
syntax enable
filetype plugin indent on

set softtabstop=4
set shiftwidth=4
set autoindent
set number
set expandtab


set noswapfile
set nobackup

if has('gui_running') && os != 'Ubuntu'
    set background=dark
    colorscheme solarized
endif

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin'
    set macligatures
    set guifont=Fira\ Code:h12
elseif os == 'Windows'
    set guifont=Consolas:h12
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
