" Src => http://nctusdk.blogspot.com/2009/04/ubuntu-part-2.html
"set nocompatible
"set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set ruler
set nonumber
set nohlsearch
"set binary noeol
set incsearch
set cursorline
"set virtualedit=all
"set vb t_vb=
"set foldmethod=indent
"set nofoldenable

"" For tab choosing (an alternative way for lazy person... )
"set mouse=a

" Status Bar (pct) revised from
" http://plog.longwin.com.tw/my_note-unix/2009/10/23/ \
"                                 vim-session-status-bar-2009
set ls=2
set statusline=%4*%<\ %l\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, "encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red ctermbg=blue
highlight User2 ctermfg=green ctermbg=blue "
highlight User3 ctermfg=yellow ctermbg=blue "
highlight User4 ctermfg=white ctermbg=blue
" User2~4 term=underline cterm=underline
highlight User5 ctermfg=cyan ctermbg=blue
"highlight User6 ctermfg=white ctermbg=blue
"highlight StatusLine term=bold,reverse cterm=bold,reverse
syntax on

nmap <F5> :TlistToggle<CR>
nmap <F6> <c-w><
nmap <F7> <c-w>>
"nmap <F8> <c-w>=
nmap <F8> :set hls<CR>
nmap <F9> :tabp<CR>
nmap <F10> :tabn<CR>
nmap <F11> :set cursorline!<BAR>set nocursorline?<CR>
map <F12> :call Paste_on_off()<CR>
set pastetoggle=<F12>

let paste_mode = 0 " 0 = normal, 1 = paste

"custon copy'n'paste
"copy the current visual selection to ~/.vbuf
vmap <C-c> :w! ~/.vbuf<CR>
"copy the current line to the buffer file if no visual selection
nmap <C-c> :.w! ~/.vbuf<CR>
"paste the contents of the buffer file
nmap <C-v> :r ~/.vbuf<CR>

func! Paste_on_off()
        if g:paste_mode == 0
                set paste
                let g:paste_mode = 1
        else
                set nopaste
                let g:paste_mode = 0
        endif
        return
endfunc
