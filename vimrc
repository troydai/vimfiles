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

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running') && os != 'Ubuntu'
    set background=dark
    colorscheme Kafka
endif

if os == 'Darwin'
    if has('gui_running')
        set macligatures
    endif
    set guifont=Fira\ Code:h14
elseif os == 'Windows'
    set guifont=Consolas:h14
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
