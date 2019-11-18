" Vim color file
" Name:     mf color pallet
" Author:   MeF0504
" Homepage: 
"
"

""""""local variables""""""
" Color Pallets {{{
" color1, 2, 3, 4, 5, 6, 7, bg_black
let s:color_pallets = {
\ 'test'                : [0, 1, 2, 3, 4, 5, 6, 0],
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
" }}}

""""""global variables""""""
if !exists('g:MFCP_ColorName')
    "let g:MFCP_ColorName = 'berry_nice'
    let g:MFCP_ColorName = 'test'
endif

""""""local functions""""""
function! s:get_color_num(color_num, bit)
    if has('gui_running')
        return printf("#%06x", a:color_num)
    else
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
            return 'None'
        endif
    endif
endfunction

function! s:mf_cp_init()

    let g:colors_name = expand('<sfile>:t:r')
    let bg_black = s:color_pallets[g:MFCP_ColorName][-1]
    if bg_black == 1
        set background=dark
    else
        set background=light
    endif
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endfunction

function! s:mix_color(...)
    if a:0 == 0
        return 0
    elseif a:0 == 1
        return a:1
    else
        let r = 0
        let g = 0
        let b = 0
        for i in range(1, a:0)
            let color_num = a:{i}
            let r += color_num/256/256                 " upper 16 bits
            let g += (color_num/256) % 256             " median 16 bits
            let b += color_num % 256                   " lower 16 bits
        endfor
        let r /= a:0
        let g /= a:0
        let b /= a:0
        return r*256*256 + g*256 + b
    endif
endfunction

function! s:sep_color(color_num, sep)
    let r = a:color_num/256/256
    let g = (a:color_num/256) % 256
    let b = a:color_num % 256

    let r /= a:sep
    let g /= a:sep
    let b /= a:sep

    return r*256*256 + g*256 + b
endfunction

function! s:get_color(group)
    " return termfg, termbg, term

    function! s:gc(num)
        return s:color_pallets[g:MFCP_ColorName][a:num]
    endfunction

    let l:normal = s:color_pallets[g:MFCP_ColorName][-1]==1 ? 0xe4e4e4e4 : 0x121212
    let l:bg_color = s:color_pallets[g:MFCP_ColorName][-1]==1 ? 0x080808 : 0xeeeeee

    if type(a:group) != 1
        return ["None", "None", "None"]
    endif

    if a:group == "Normal"
        return [l:normal, "None", "None"]
    elseif a:group == "Comment"
        return [s:gc(5), "None", "None"]
    elseif a:group == "Constant"
        return [s:mix_color(s:gc(3),s:gc(4)), "None", "None"]
    elseif a:group == "String"
        return [s:gc(4), "None", "None"]
    elseif a:group == "Identifiler"
        return [s:gc(2), "None", "None"]
    elseif a:group == "Ignore"
        return [s:gc(6), "None", "None"]
    elseif a:group == "Number"
        return [s:gc(3), "None", "None"]
    elseif a:group == "PreProc"
        return [s:mix_color(s:gc(0), s:gc(1)), "None", "Bold"]
    elseif a:group == "Special"
        return [s:sep_color(s:gc(0), 2), "None", "None"]
    elseif a:group == "SpecialChar"
        return [s:sep_color(s:gc(0), 2), s:sep_color(s:gc(6), 3), "None"]
    elseif a:group == "SpecialKey"
        return "Special"
    elseif a:group == "Statement"
        return [s:gc(1), "None", "None"]
    elseif a:group == "Todo"
        return [s:gc(0), "None", "None"]
    elseif a:group == "Type"
        return [s:mix_color(s:gc(1), s:gc(2)), "None", "None"]
    elseif a:group == "Underlined"
        return [s:gc(0), "None", "Bold"]
    elseif a:group == "Search"
        return ["None", s:mix_color(s:gc(2), s:gc(3)), "None"]
    elseif a:group == "IncSearch"
        return "Search"
    elseif a:group == "ModeMsg"
        return [s:sep_color(s:gc(5), 2) , "None", "None"]
    elseif a:group == "MoreMsg"
        return [s:sep_color(s:gc(5), 2) , "None", "None"]
    elseif a:group == "StatusLine"
        return ["None", s:mix_color(s:gc(1), s:gc(3)), "None"]
    elseif a:group == "WildMenu"
        return [s:mix_color(s:gc(1), s:gc(3)), "None", "None"]
    elseif a:group == "Pmenu"
        return [s:mix_color(s:gc(1), s:gc(2), s:gc(3)), s:mix_color(s:gc(5), s:gc(6)), "None"]
    elseif a:group == "PmenuSel"
        return [s:mix_color(s:gc(5), s:gc(6)), s:mix_color(s:gc(1), s:gc(2), s:gc(3)), "None"]
    elseif a:group == "PmenuSbar"
        return [s:gc(3), s:mix_color(s:gc(4), s:gc(5)), "None"]
    elseif a:group == "PmenuThumb"
        return [s:mix_color(s:gc(4), s:gc(5)), s:gc(3), "None"]
    elseif a:group == "Directory"
        return [s:mix_color(s:gc(0), s:gc(2)), "None", "None"]
    elseif a:group == "NonText"
        return [s:mix_color(s:gc(4), s:gc(6)), "None", "None"]
    elseif a:group == "Title"
        return [s:mix_color(s:gc(0), s:gc(1)), "None", "None"]
    elseif a:group == "Visual"
        return [l:normal, s:mix_color(s:gc(3), s:gc(5)), "None"]
    elseif a:group == "Folded"
        return [l:normal, s:mix_color(s:gc(3), s:gc(5), s:gc(6)), "Normal"]
    elseif a:group == "FoldColumn"
        return [s:mix_color(s:gc(5), s:gc(6)), l:bg_color, "None"]
    elseif a:group == "DiffText"
        return [l:normal, s:mix_color(s:gc(4), s:gc(5)), "None"]
    elseif a:group == "DiffChange"
        return [l:normal, s:mix_color(s:gc(4), s:gc(5)), "None"]
    elseif a:group == "DiffDelete"
        return [l:normal, s:gc(0), "None"]
    elseif a:group == "DiffAdd"
        return [l:normal, s:gc(1), "None"]
    elseif a:group == "Conceal"
        return [s:mix_color(s:gc(3), s:gc(5)), "None", "None"]
    elseif a:group == "ColorColumn"
        return ["None", s:mix_color(s:gc(4), s:gc(6)), "None"]
    elseif a:group == "SpellBad"
        return [l:normal, s:mix_color(s:gc(1), s:gc(2)), "None"]
    elseif a:group == "SpellRare"
        return [l:normal, s:mix_color(s:gc(1), s:gc(3)), "None"]
    elseif a:group == "SpellLocal"
        return [l:normal, s:mix_color(s:gc(1), s:gc(4)), "None"]
    elseif a:group == "SpellCap"
        return [l:normal, s:mix_color(s:gc(1), s:gc(5)), "None"]
    elseif a:group == "MatchParen"
        return [l:normal, s:mix_color(s:gc(2), s:gc(4), s:gc(6)), "None"]
    else
        return ["None", "None", "None"]
    endif
endfunction

function! s:mf_color_pallet_test()
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
           if has('gui_running')
               execute "highlight ColorPallet" . i .
                           \ " guifg=" . s:get_color_num(s:color_pallets[n][i], &t_Co) .
                           \ " guibg=" . (s:color_pallets[n][-1]==1 ? 'Black' : 'White')
           else
               execute "highlight ColorPallet" . i .
                           \ " ctermfg=" . s:get_color_num(s:color_pallets[n][i], &t_Co) .
                           \ " ctermbg=" . (s:color_pallets[n][-1]==1 ? 0 : 15)
           endif
           execute "echohl ColorPallet" . i
           echon 'color' . i . ' '
       endfor
       echohl None
    endfor

endfunction

function! s:mf_color_pallet(...)
    if a:0 == 0
        call s:mf_color_pallet_test()
    else
        echo 'call main'
    endif
endfunction


""""""global functions""""""


command! -nargs=? ColorPallet call s:mf_color_pallet(<f-args>)

let s:test = [
            \"Normal",
            \"Comment",
            \"Constant",
            \"String",
            \"Identifier",
            \"Ignore",
            \"Number",
            \"PreProc",
            \"Special",
            \"Statement",
            \"Todo",
            \"Type",
            \"Underlined",
            \"Search",
            \"ModeMsg",
            \"MoreMsg",
            \"StatusLine",
            \"Pmenu",
            \"PmenuSbar",
            \"Directory",
            \"NonText",
            \"Title",
            \"Visual",
            \"Folded",
            \"FoldColumn",
            \"DiffText",
            \"DiffChange",
            \"DiffDelete",
            \"DiffAdd",
            \"Conceal",
            \"ColorColumn",
            \"SpellBad",
            \"SpellRare",
            \"SpellLocal",
            \"SpellCap",
            \"MatchParen",
            \"SpecialChar",
            \"SpecialKey",
            \"IncSearch",
            \"WildMenu",
            \"PmenuSel",
            \"PmenuThumb",
            \]

for s:t in s:test
    echo s:t
    echo s:get_color(s:t)
endfor

