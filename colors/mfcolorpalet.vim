" Vim color file
" Name:     mf color pallet
" Author:   MeF0504
" Homepage: 
"
"

function! s:mf_color_pallet(num)
    echo a:num
endfunction

command! -nargs=1 ColorPallet call s:mf_color_pallet(<args>)
