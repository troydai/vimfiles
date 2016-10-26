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

if has('gui_running')
    set background=dark
    colorscheme solarized
endif

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin'
    set guifont=Monaco:h12
else
    set guifont=Consolas:h12
endif
