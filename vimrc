execute pathogen#infect()
syntax on
filetype plugin indent on

set softtabstop=4
set shiftwidth=4
set autoindent
set number
set expandtab


set noswapfile
set nobackup

colorscheme luna

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin'
    set guifont=Monaco:h14
else
    set guifont=Consolas:h12
endif
