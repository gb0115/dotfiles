"Sync directory Netrw(:Ex) and Vim (:cd, :pwd)
"set autochdir
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
"open terminal like VScode with T key
command! -nargs=* T split | wincmd j |resize 8| terminal <args>
autocmd TermOpen * startinsert

