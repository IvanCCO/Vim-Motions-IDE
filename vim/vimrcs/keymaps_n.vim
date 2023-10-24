nnoremap <leader>ns :source ~/.vimrc<CR>

nmap 0 ^
nmap Y y$
nnoremap L $
nnoremap H ^
nnoremap <leader>d "_d
nmap <leader>w :w!<cr>
nmap <silent> <leader><CR> :noh<cr>
nmap <leader>tc :tabclose<CR>
nmap <leader>up <Esc>viwUea<Esc>
nnoremap <leader>d "_d

noremap <c-s-e> :NERDTree<CR> 


function! InsertLineBelow()
  let s:count = v:count1
  execute 'normal! o'
  execute 'normal! m`'
  execute 'normal! '.s:count.'o'
  execute 'normal! ``'
endfunction
