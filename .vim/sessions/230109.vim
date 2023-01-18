let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd temp.md
edit /mnt/h/マイドライブ/G_Unix/Vim/Vim_the_Hardway/Vim_hardway_modal_mapping.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 16) / 33)
exe 'vert 1resize ' . ((&columns * 86 + 67) / 134)
exe '2resize ' . ((&lines * 10 + 16) / 33)
exe 'vert 2resize ' . ((&columns * 86 + 67) / 134)
exe '3resize ' . ((&lines * 15 + 16) / 33)
exe 'vert 3resize ' . ((&columns * 47 + 67) / 134)
exe '4resize ' . ((&lines * 15 + 16) / 33)
exe 'vert 4resize ' . ((&columns * 47 + 67) / 134)
argglobal
if bufexists("/usr/share/nvim/runtime/doc/starting.txt") | buffer /usr/share/nvim/runtime/doc/starting.txt | else | edit /usr/share/nvim/runtime/doc/starting.txt | endif
if &buftype ==# 'terminal'
  silent file /usr/share/nvim/runtime/doc/starting.txt
endif
balt /mnt/h/マイドライブ/G_Unix/Vim/Vim_the_Hardway/Vim_hardway_modal_mapping.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let &fdl = &fdl
let s:l = 758 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 758
normal! 059|
lcd /mnt/h/マイドライブ/G_Unix/Vim/Vim_the_Hardway
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 46 - ((5 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 46
normal! 02|
lcd /mnt/h/マイドライブ/G_Unix/Vim/Vim_the_Hardway
wincmd w
argglobal
if bufexists("~/.vimrc") | buffer ~/.vimrc | else | edit ~/.vimrc | endif
if &buftype ==# 'terminal'
  silent file ~/.vimrc
endif
balt ~/temp.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 58 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 58
normal! 0
wincmd w
argglobal
if bufexists("~/temp.md") | buffer ~/temp.md | else | edit ~/temp.md | endif
if &buftype ==# 'terminal'
  silent file ~/temp.md
endif
balt ~/.vimrc
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
exe '1resize ' . ((&lines * 20 + 16) / 33)
exe 'vert 1resize ' . ((&columns * 86 + 67) / 134)
exe '2resize ' . ((&lines * 10 + 16) / 33)
exe 'vert 2resize ' . ((&columns * 86 + 67) / 134)
exe '3resize ' . ((&lines * 15 + 16) / 33)
exe 'vert 3resize ' . ((&columns * 47 + 67) / 134)
exe '4resize ' . ((&lines * 15 + 16) / 33)
exe 'vert 4resize ' . ((&columns * 47 + 67) / 134)
tabnext 1
badd +1 ~/temp.md
badd +1 term://~//16885:/bin/bash
badd +57 ~/.vimrc
badd +0 /mnt/h/マイドライブ/G_Unix/Vim/Vim_the_Hardway/Vim_hardway_modal_mapping.md
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
