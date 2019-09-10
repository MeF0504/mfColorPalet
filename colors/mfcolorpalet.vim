" Vim color file
" Name:     mf color pallet
" Author:   MeF0504
" Homepage: 
"
"

" color1, 2, 3, 4, 5, 6, 7, bg_black
let s:color_pallets = {
\ 'cappuccino'          : [0x5c331d, 0xdea25a, 0xa64e4e, 0xbb9d65, 0xeae7cc, 0x7e3e3d, 0x885f39, 0],
\ 'summer_time_love'    : [0x8cc5e2, 0xe9d15b, 0xf9f33f, 0x547fbf, 0xe0e46b, 0xdd9724, 0x9dc13a, 0],
\ 'love_in_foreign'     : [0x7fb7cf, 0xc5bb9f, 0xd1737b, 0xf6f3f0, 0x59585a, 0x899eaf, 0xd8aeaf, 0],
\ 'berry_nice'          : [0x644681, 0x924b7d, 0x514887, 0xd27caa, 0xe4dab6, 0x8cc3bd, 0x492e57, 1],
\ 'happy_sign'          : [0x20383a, 0xabc734, 0xdbe48f, 0xf3ef3d, 0x585c6c, 0x8fc3c5, 0xd7e2dd, 0],
\ 'snow_magic'          : [0xb54b52, 0xefece0, 0x557187, 0x73a1ad, 0xc6a0a6, 0xd4dfde, 0xa7cad3, 1],
\ 'holoscope'           : [0x4e5f84, 0xe2ab28, 0xf7e367, 0x8a5783, 0x6983b3, 0x8cbfe5, 0xe0d5b5, 0],
\ 'festival'            : [0xc84463, 0xf5e5e3, 0xba4335, 0x583c3e, 0xd0635b, 0x803732, 0xacbaa7, 0],
\ 'loving_honey'        : [0xc16527, 0xe6a939, 0xbc8f61, 0xefdf4d, 0x483a20, 0xf2e8b7, 0xdade34, 0],
\ 'toy_soldiers'        : [0x5d9f9c, 0x42261d, 0xac3d2b, 0xeedf56, 0xf6f5ce, 0x6a5951, 0xd16e4c, 1],
\ 'dance_dance_dance'   : [0xca5d85, 0x79b2e4, 0x80cd4c, 0xbe9e64, 0x6b6c6f, 0xbacb8e, 0xd3a89c, 0],
\ 'regret'              : [0x9e7b57, 0xa49799, 0xb6bec4, 0xe4e0da, 0xd8d2c7, 0xe2bcb6, 0xb88ca0, 1],
\ 'memories_of_sepia'   : [0x5d4d41, 0x807b63, 0xd35b45, 0xdadbcb, 0x7d8353, 0xcbb797, 0xc29059, 1],
\ 'powdery_Macaroon'    : [0xe7c4cc, 0xc7d7c3, 0xd9a57b, 0xece7e1, 0xb7a8c7, 0xb9ca8f, 0xfaf0c7, 1],
\ 'easter_rabbit'       : [0xbedbdd, 0xc3d532, 0xd78820, 0x6f9cb6, 0xf4ee59, 0xce6284, 0xdeb8c8, 0],
\ 'present_box'         : [0x283a6b, 0xa62c3e, 0xe2ddc4, 0xf6dd4e, 0x7cc0ee, 0xc7689b, 0x9c434d, 1],
\ 'limelight'           : [0x1e2b19, 0xafc45b, 0xdee1d5, 0xd4de76, 0xc7bd95, 0x794451, 0x518542, 0],
\ 'tropical_soda'       : [0xd26f7a, 0x70b681, 0x9acad3, 0xf2e787, 0xb63e3c, 0xcae2eb, 0xdbde84, 1],
\ 'kashkash'            : [0x202121, 0x4f4e54, 0xa97d59, 0x738099, 0xe4d799, 0xb85860, 0x992227, 0],
\ 'winter_sea'          : [0x6da2ba, 0x45608b, 0x374c8f, 0x928085, 0x684a8e, 0xcecebd, 0x70818c, 1],
\ 'sea_side'            : [0x212f8c, 0x5481be, 0x79bae1, 0xdbab33, 0xd1e8f2, 0xa4a5af, 0xe1e458, 1],
\ 'magic_room'          : [0x361622, 0xdfede8, 0xda8a79, 0x9ea5a2, 0xc33388, 0xbe4c50, 0x4a3b47, 0],
\ 'angel_fish'          : [0xe2c13b, 0xc869a0, 0x5e9bd7, 0xede0c0, 0x4d81bf, 0xa29374, 0xe4b1c7, 1],
\ 'slumber_whip'        : [0x7b6665, 0xe7d3ab, 0xd98e76, 0xd7b468, 0xa44a4c, 0xc0886c, 0x423546, 1]
\ }

function! s:get_color_num(color_num, bit)
    if a:bit == 256   " 16 base color + 6*6*6 color blocks + 24 gray scales
        let r = a:color_num/256/256                 " upper 16 bits
        let g = (a:color_num/256) % 256             " median 16 bits
        let b = a:color_num % 256                   " lower 16 bits
        let r = (r+25)/51   " 0-255 => 0-5
        let g = (g+25)/51
        let b = (b+25)/51
        return r*6*6 + g*6 + b + 16     " 256 color set
    elseif a:bit == 88   " 16 base color + 4*4*4 color blocks + 8 gray scales
        let r = a:color_num/256/256
        let g = (a:color_num - r*256*256) / 256
        let b = a:color_num - r*256*256 - g*256
        let r = (r+42)/85   " 0-255 => 0-3
        let g = (g+42)/85
        let b = (b+42)/85
        return r*4*4 + g*4 + b + 16     " 88 color set
    else
        echo 'incorrect quatization bit!'
        return 0
    endif
endfunction

function! s:mf_color_pallet(num)
    echo a:num
    call s:get_color_num(s:color_pallets['berry_nice'][1], 256)
endfunction

function! MF_color_pallet_test()
    let pallet_names = keys(s:color_pallets)
    let max_len_name = 10
    for n in pallet_names
        if len(n) > max_len_name
            let max_len_name = len(n)
        endif
    endfor

   for n in pallet_names
       " align width
       let space = ""
       for i in range(max_len_name-len(n)+5)
           let space .= " "
       endfor
       echo n . space
       let ec_str = ""
       for i in range(len(s:color_pallets[n])-1)
           execute "highlight ColorPallet" . i . " ctermbg=" . s:get_color_num(s:color_pallets[n][i], &t_Co)
           execut "echohl ColorPallet" . i
           execute "echon '      '"
       endfor
       echohl None
    endfor

endfunction

command! -nargs=1 ColorPallet call s:mf_color_pallet(<f-args>)
