vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
xnoremap <leader>d "_d
xnoremap <leader>p "_dP


function! VisualSelection(direction, extra_filter) range
let l:saved_reg = @"
execute "normal! vgvy"

```
let l:pattern = escape(@", "\\\\\\\\/.*'$^~[]")
let l:pattern = substitute(l:pattern, "\\\\n$", "", "")

if a:direction == 'gv'
    call CmdLine("Ack '" . l:pattern . "' " )
elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
endif

let @/ = l:pattern
let @" = l:saved_reg

```

endfunction
