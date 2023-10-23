source ~/.config/nvim/plugins.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/mapping.lua

set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus
syntax enable
set nowrap
set textwidth=80
set ruler
set mouse=a
set pumheight=10
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set laststatus=2
set relativenumber
set smartindent
set numberwidth=3
set noshowmode
set nobackup
set nowritebackup
set timeoutlen=500
set updatetime=300
set ignorecase
set spell!
autocmd BufRead *.txt set spell!
autocmd BufNewFile *.txt set spell!
set completeopt+=menuone,longest
set autoindent
let &titlestring = expand('%:~') . ' — nvim'
autocmd FileType man let &titlestring = expand('%:t') . ' — nvim'
set title
set autochdir
set background=dark
colorscheme gruvbox-baby

