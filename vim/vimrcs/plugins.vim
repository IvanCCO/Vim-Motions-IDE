call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/gruvbox-material'

call plug#end()

colorscheme gruvbox-material

hi Normal guibg=NONE ctermbg=NONE

if has('termguicolors')
    set termguicolors
endif

if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


